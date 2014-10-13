using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Rigidbody))]
public class BallMovement : MonoBehaviour
{
    private Rigidbody _rb;
    private Ray _r;
    private RaycastHit _hit;
    private Plane ballPlane;
    private Transform _myTransform;
    private Vector3 _lastAimPoint;
    private int _frameCounter;

    public float speedFactor = 100.0f;  //variable ball speed  
    public float minInputRange = 0.25f;
    public float maxInputRange = 5.0f;     //variable input circle radius
    public float speedThreshold = 0.1f; //when ball speed drops below this val it is ready to be shot again
	public Vector3 lastShotPosition; //last position from which ball was shot
	public Vector3 lastShotForce; //last force applied to ball by player

    public enum BallState
    {
        moving,
       // waiting,
        aiming
    };

    private BallState bState;

    public GameObject arrowSprite;


    // Use this for initialization
    void Start()
    {
        _rb = GetComponent<Rigidbody>();
        _myTransform = transform;
        bState = BallState.moving;
        ballPlane = new Plane();
        _frameCounter = 0;
        arrowSprite.SetActive(false);
		Vector3 lastShotPostion;
		Vector3 lastShotForce;
    }

    // Update is called once per frame
    void Update()
    {
        switch (bState)
        {
            case BallState.moving:
                //wait for ball to stop moving for 30 frames (1/2 second) before allowing player to do input
                CheckForBallStop();
                break;
			/*
            case BallState.waiting:
                //wait for player to click ball before doing aiming actions
                CheckForInput();
                break;
           */

            case BallState.aiming:
                //draw line for force/direction on mousposition, apply force on mouseup
                Aiming();
                break;
        }
    }

    private void CheckForBallStop()
    {
		_rb.velocity *= 0.995f;

        if (_rb.velocity.magnitude <= speedThreshold)
        {
            _frameCounter++;
            if (_frameCounter >= 30)
            {
                bState = BallState.aiming;
                _rb.velocity = Vector3.zero;
                _rb.angularVelocity = Vector3.zero;
            }
        }
        else
        {
            _frameCounter = 0;
        }
    }

   /* private void CheckForInput()
    {
        if (Input.GetMouseButtonDown(0))
        {
            _r = Camera.main.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(_r, out _hit, Mathf.Infinity))
            {
                if (_hit.collider.gameObject.CompareTag("Ball"))
                {
                    ballPlane.SetNormalAndPosition(Vector3.up, _myTransform.position);
                    bState = BallState.aiming;
                    //reset arrow position
                    arrowSprite.transform.position = _myTransform.position;
                    arrowSprite.transform.localScale = new Vector3(0, 0, 0);
                    arrowSprite.SetActive(true);
                }
            }
        }
    }
    */

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
			shootBall();
        }

    }
	private void shootBall()
	{
		Vector3 dir = _myTransform.position - _lastAimPoint;
		lastShotPosition = _rb.position;
		lastShotForce = new Vector3(dir.x * speedFactor, 0, dir.z * speedFactor);
		_rb.AddForce(dir.x * speedFactor, 0, dir.z * speedFactor);
		bState = BallState.moving;
		arrowSprite.SetActive(false);
	}
	public void redoShot()
	{
		_rb.position = lastShotPosition;
		_rb.AddForce (lastShotForce);
		bState = BallState.moving;
		arrowSprite.SetActive(false);
	}
}
