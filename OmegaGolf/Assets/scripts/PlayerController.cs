using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Rigidbody))]
public class PlayerController : MonoBehaviour
{
	private Rigidbody _rb;
	private Ray _r;
	private RaycastHit _hit;
	private Plane ballPlane;
	private Transform _myTransform;
	private Vector3 _lastAimPoint;
	private int _frameCounter;
    private BallBehavior ballController;

	public float speedFactor = 100.0f;  //variable ball speed  
	public float minInputRange = 0.25f;
	public float maxInputRange = 5.0f;     //variable input circle radius
	public float speedThreshold = 0.1f; //when ball speed drops below this val it is ready to be shot again
	public Vector3 lastShotPosition; //last position from which ball was shot
	public Vector3 lastShotForce; //last force applied to ball by player
    public bool isInFocus; //Prevents submit button on "code editor" from shooting ball on submission
    public int strokeCount;

	public enum GameState
	{
		moving,
		aiming,
		coding,
	};

	public GameState gameState;

	public GameObject arrowSprite;
    

	// Use this for initialization
	void Start()
	{
		_rb = GetComponent<Rigidbody>();
		_myTransform = transform;
		gameState = GameState.moving;
		ballPlane = new Plane();
		_frameCounter = 0;
		arrowSprite.SetActive(false);
		Vector3 lastShotPostion;
		Vector3 lastShotForce;

        ballController = _rb.GetComponent<BallBehavior>();

	}

	// Update is called once per frame
	void Update()
	{
        if (Input.GetKeyDown("r"))
        {
           ballController.reset();

        }

        if (Input.GetKeyDown("t"))
        {
            ballController.teleportToHole();
        }

		if (Input.GetKeyDown ("e"))
		{
			redoShot();
		}

		switch (gameState)
		{
			case GameState.moving:
				//wait for ball to stop moving for 30 frames (1/2 second) before allowing player to do input
				CheckForBallStop();
				break;

            case GameState.coding:
                break;

			case GameState.aiming:
				//draw line for force/direction on mousposition, apply force on mouseup
				Aiming();
				break;

			
		}
	}

	private void CheckForBallStop()
	{
		if (_rb.velocity.magnitude <= speedThreshold)
		{
			_frameCounter++;
			if (_frameCounter >= 30)
			{
				gameState = GameState.aiming;
			}
		}
		else
		{
			_frameCounter = 0;
		}
	}

	private void Aiming()
	{

		ballPlane.SetNormalAndPosition(Vector3.up, _myTransform.position);
		arrowSprite.transform.position = _myTransform.position;
		arrowSprite.transform.localScale = new Vector3(0, 0, 0);
		arrowSprite.SetActive(true);

		//Draw line from ball center to current mouse position
		_r = Camera.main.ScreenPointToRay(Input.mousePosition);
		float rayDist;
		if (ballPlane.Raycast(_r, out rayDist))
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
		 
			if (Input.GetKey(KeyCode.LeftShift))
			{
				Vector3 rot = rotation.eulerAngles;
				int snapValue = (int)rot.y % 15;
				rot = new Vector3(rot.x,rot.y-snapValue,rot.z);
				arrowSprite.transform.RotateAround(_myTransform.position, Vector3.up, rot.y);
			}
			else
			{
				arrowSprite.transform.rotation = rotation;
			}
			//scale arrow to proper size
			float mag = (_lastAimPoint - _myTransform.position).magnitude;
			arrowSprite.transform.localScale = new Vector3(mag, mag / 2, 1);
		}


		//check for mouse up, if true apply force
		if (Input.GetMouseButtonUp(0))
		{
			Ray r = Camera.main.ScreenPointToRay(Input.mousePosition);
			RaycastHit hit;

			if (Physics.Raycast(r, out hit, Mathf.Infinity))
			{
				if (hit.collider.gameObject.CompareTag("Editable"))
				{
					gameState = GameState.coding;
					
					arrowSprite.SetActive(false);
					return;

				}
			}
            
            if (isInFocus)
                shootBall();

            isInFocus = true;
        }

	}

    void OnGUI()
    {
        GUI.Label(new Rect(Screen.width * .03f, Screen.height * .85f, 1500, 1000), "<size=15>Press R to rest the level. \nPress E to redo the last shot with the same angle and force.\nPar: 1. \nYour score: " + strokeCount + "</size>");

        
    }
	private void shootBall()
	{
		Vector3 dir = _myTransform.position - _lastAimPoint;
		lastShotPosition = _rb.position;
		lastShotForce = new Vector3(dir.x * speedFactor, 0, dir.z * speedFactor);
		_rb.AddForce(dir.x * speedFactor, 0, dir.z * speedFactor);
		gameState = GameState.moving;
		arrowSprite.SetActive(false);
        strokeCount++;
	}
	public void redoShot()
	{
		_rb.velocity = Vector3.zero;
        _rb.angularVelocity = Vector3.zero;
        
        _rb.position = lastShotPosition;
		_rb.AddForce (lastShotForce);

		gameState = GameState.moving;
		arrowSprite.SetActive(false);

	}
}
