using UnityEngine;
using System.Collections;

/// <summary>
/// Locks position of trail flat to ground
/// </summary>

public class BallTrail : MonoBehaviour {

    private Transform _myTransform;
    private Quaternion _rot;
    private Transform _ball;

	// Use this for initialization
	void Start () {
        _myTransform = transform;
        _rot = transform.rotation;
        _ball = _myTransform.parent;
	}
	
	
	void LateUpdate () {
        _myTransform.position = _ball.position - new Vector3(0,.4f,0);
        _myTransform.rotation = _rot;
	}
}
