using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Rigidbody))]
public class PlayerController : MonoBehaviour
{
	private Rigidbody _rb;
	private Ray _r;
	private RaycastHit _hit;
	private Plane _ballPlane;
	private Transform _myTransform;
	private Vector3 _lastAimPoint;
	private int _frameCounter;
    private BallBehavior _ballController;
    private GameObject[] _ifWalls;

	public Color ballColor;
	public float speedFactor = 400.0f;  //variable ball speed  
	public float minInputRange = 0.25f;
	public float maxInputRange = 5.0f;     //variable input circle radius
	public float speedThreshold = 0.1f; //when ball speed drops below this val it is ready to be shot again
	public Vector3 lastShotPosition; //last position from which ball was shot
	public Vector3 lastShotForce; //last force applied to ball by player
    public bool isInFocus; //Prevents submit button on "code editor" from shooting ball on submission
    public int strokeCount;
    public Rect modeChangeRect;
    public bool victoryCondition;
    public GUISkin defaultSkin;

    public bool phaseWall;


    public string worldName;
    public int levelNumber;
    public int par;

    public enum GameState
    {
        editing,
        playing,
    }

	public enum BallState
	{
		moving,
		aiming,
	};

    public GameState gameState;
    public BallState ballState;

    public string modeChangeString;

	public GameObject arrowSprite;
    

	// Use this for initialization
	void Start()
	{
		_rb = GetComponent<Rigidbody>();
		_myTransform = transform;

        ballState = BallState.moving;
        gameState = GameState.playing;
		ballColor = renderer.material.color;
		
		_ballPlane = new Plane();
		_frameCounter = 0;
		arrowSprite.SetActive(false);

        modeChangeRect = new Rect(Screen.width * .01f, Screen.height * .01f, Screen.width * .1f, Screen.height * .1f);

        _ballController = _rb.GetComponent<BallBehavior>();
	}

	// Update is called once per frame
	void Update()
	{
        _ifWalls = GameObject.FindGameObjectsWithTag("IfWall");

	    _rb.angularVelocity = Vector3.zero;
        if (Input.GetKeyDown("r"))
        {
			_ballController.reset();
		}

        if (Input.GetKey(KeyCode.Escape))
        {
            MainMenu.returnToLevelSelect = true;
            Application.LoadLevel("main_menu");
        }



        switch (ballState)
		{
            case BallState.moving:
				//wait for ball to stop moving for 30 frames (1/2 second) before allowing player to do input
                arrowSprite.SetActive(false);
				CheckForBallStop();
				break;

            case BallState.aiming:
				//draw line for force/direction on mousposition, apply force on mouseup
                if (gameState == GameState.playing)
                    Aiming();
				
                break;
                		
		}

        switch (gameState)
        {

            case GameState.editing:
                modeChangeString = "Play";
                break;

            case GameState.playing:
                modeChangeString = "Code";
                break;


        }

		//if walls
        foreach (GameObject g in _ifWalls)
        {
			if (phaseWall) {
				Physics.IgnoreCollision(this.collider, g.collider);
			} 
			else {
				Physics.IgnoreCollision(this.collider, g.collider, false);
			}
		}

	}

	public void CheckForBallStop()
	{
		if (_rb.velocity.magnitude <= speedThreshold)
		{
			_frameCounter++;
			if (_frameCounter >= 30)
			{
                ballState = BallState.aiming;
			}
		}
		else
		{
			_frameCounter = 0;
		}
	}

	private void Aiming()
	{

		_ballPlane.SetNormalAndPosition(Vector3.up, _myTransform.position);
		arrowSprite.transform.position = _myTransform.position;
		arrowSprite.transform.localScale = new Vector3(0, 0, 0);
		arrowSprite.SetActive(true);

		//Draw line from ball center to current mouse position
		_r = Camera.main.ScreenPointToRay(Input.mousePosition);
		float rayDist;
		if (_ballPlane.Raycast(_r, out rayDist))
		{
			Vector3 pos = _r.GetPoint(rayDist);
			if (Vector3.Distance(_myTransform.position, pos) < minInputRange)
			{
				//calculate unit vector in direction of mouse, give min input range in that direction
				Vector3 dir = pos - _myTransform.position;
				_lastAimPoint = _myTransform.position + minInputRange * dir.normalized;
			}
			else if (Vector3.Distance(_myTransform.position, pos) < maxInputRange)
			{
				_lastAimPoint = pos;
			}
			else
			{
				//calculate unit vector in direction of mouse, give max input range in that direction
				Vector3 dir = pos - _myTransform.position;
				_lastAimPoint = _myTransform.position + maxInputRange * dir.normalized;
			}

			//rotate arrow to face ball
			arrowSprite.transform.position = _lastAimPoint + (_lastAimPoint - _myTransform.position).normalized / 2;
			Quaternion rotation = Quaternion.Euler(0, 90, 0) * Quaternion.LookRotation(Vector3.up, _myTransform.position - _lastAimPoint);
            
            arrowSprite.transform.rotation = rotation;
            
			//scale arrow to proper size
			float mag = (_lastAimPoint - _myTransform.position).magnitude;
			arrowSprite.transform.localScale = new Vector3(mag, mag / 2, 1);
		}

		//check for mouse up, if true apply force
        Vector2 mouse = new Vector2(Input.mousePosition.x, Screen.height - Input.mousePosition.y);

        if (gameState == GameState.playing && Input.GetMouseButtonDown(0) && !modeChangeRect.Contains(mouse))
		{
            shootBall();
        }
        
    }

	

    void OnGUI()
    {

        GUI.skin = defaultSkin;
        
        GUI.skin.label.alignment = TextAnchor.LowerLeft;
        //new Rect(10, Screen.height - 300, 200, 400)
        GUI.skin.label.fontSize = Mathf.FloorToInt(Mathf.Min(Screen.width * .05f, Screen.height * .05f));
        GUI.Label(new Rect(10, Screen.height *.65f, Screen.width, Screen.height * .35f), "Par: " + par + "\nScore: " + strokeCount);
        GUI.skin.label.alignment = TextAnchor.MiddleCenter;

        if (Application.loadedLevel != 1)
        {

            if (GUI.Button(modeChangeRect, modeChangeString))
            {
                ChangeGameState();
                AudioManager.Instance.playMenuSelect();
            }
        }
    }

    public void ChangeGameState()
    {
        if (gameState == GameState.playing)
        {
            arrowSprite.SetActive(false);
            foreach (var e in FindObjectsOfType<EditableEntityBounce>())
            {
                e.drawEditor = true;
            }
            foreach (var e in FindObjectsOfType<EditableEntityIfWall>())
            {
                e.drawEditor = true;
            }
            gameState = GameState.editing;
        }
        else
        {
            foreach (var e in FindObjectsOfType<EditableEntityBounce>())
            {
                e.drawEditor = false;
            }
            foreach (var e in FindObjectsOfType<EditableEntityIfWall>())
            {
                e.drawEditor = false;
            }
            gameState = GameState.playing;
        }
    }

	private void shootBall()
	{
		Vector3 dir = _myTransform.position - _lastAimPoint;
		lastShotPosition = _rb.position;
		lastShotForce = new Vector3(dir.x * speedFactor, 0, dir.z * speedFactor);
		_rb.AddForce(dir.x * speedFactor, 0, dir.z * speedFactor);
        ballState = BallState.moving;
        strokeCount++;
        AudioManager.Instance.playBounceWall();
	}

	public void redoShot()
	{
		_rb.velocity = Vector3.zero;
        _rb.angularVelocity = Vector3.zero;
        
        _rb.position = lastShotPosition;
		_rb.AddForce (lastShotForce);

        ballState = BallState.moving;
		arrowSprite.SetActive(false);

	}

	void OnTriggerEnter (Collider col)
	{
		/*if (col.gameObject.name == "blueIfWall") {

			if (renderer.material.color != Color.blue)
			{
				_rb.AddForce(Vector3.Reflect(_rb.velocity, col.);
			}

		}*/		
		if (col.gameObject.name == "blueIfPatch") {
			renderer.material = col.renderer.material;
            phaseWall = true;
		}
	}
}
