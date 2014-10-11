using UnityEngine;
using System.Collections;

public class KickUp : MonoBehaviour
{

    private Transform _myTransform;
    private Rigidbody _ballBody;
    private Transform _ball;
    private Vector3 _ballOffset;
    private ParticleSystem _ps;
    private float _rate;
    private float _speed;
    public float speedThreshold;

    // Use this for initialization
    void Start()
    {
        _myTransform = transform;
        _ball = _myTransform.parent;
        _ballBody = _ball.gameObject.GetComponent<Rigidbody>();
        _ballOffset = new Vector3(0, .4f, 0);
        _ps = GetComponent<ParticleSystem>();
        _rate = _ps.emissionRate;
        _speed = _ps.startSpeed;
    }


    void Update()
    {
        _myTransform.position = _ball.position - _ballOffset;
        _myTransform.rotation = Quaternion.Euler(-20,0,0) * Quaternion.FromToRotation(Vector3.forward, -_ballBody.velocity);
        if(_ballBody.velocity.magnitude >= speedThreshold)
        {
            _ps.emissionRate = _rate * _ballBody.velocity.sqrMagnitude;
            _ps.startSpeed = _speed * _ballBody.velocity.magnitude;
        }
        else
        {
            _ps.emissionRate = 0;
            _ps.startSpeed = 0;
        }
    }
}
