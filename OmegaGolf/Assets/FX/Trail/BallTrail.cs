using UnityEngine;
using System.Collections;

/// <summary>
/// Locks position of trail flat to ground
/// </summary>

public class BallTrail : MonoBehaviour {

    private Transform _myTransform;
    private Quaternion _rot;
    private Transform _ball;
    private Rigidbody _ballBody;
    private ParticleSystem _ps;
    public float emitRate = 100f;

	// Use this for initialization
	void Start () {

		_myTransform = transform;
        _rot = transform.rotation;
        _ball = _myTransform.parent;

        _ballBody = _ball.gameObject.GetComponent<Rigidbody>();
        _ps = GetComponent<ParticleSystem>();
        
        _ps.emissionRate = emitRate;

	}
	
	
	void LateUpdate () {
        _myTransform.position = _ball.position - new Vector3(0,.4f,0);
        _myTransform.rotation = _rot;

        if(_ballBody.velocity.magnitude < 1)
        {

            _ps.emissionRate = 0;
        }
        else
        {
            _ps.emissionRate = emitRate;
        }
	}
}
