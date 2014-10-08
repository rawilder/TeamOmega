using UnityEngine;
using System.Collections;

public class TestHover : MonoBehaviour {


    private ParticleSystem _ps;
    private float _rate;

	// Use this for initialization
	void Start () {
        _ps = GetComponentInChildren<ParticleSystem>();
        _rate = _ps.emissionRate;
        _ps.emissionRate = 0;
	}
	
	// Update is called once per frame
	void Update () {
        Ray r = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit _hit;
        if(Physics.Raycast(r, out _hit, Mathf.Infinity) && _hit.collider.gameObject == gameObject)
        {
            _ps.emissionRate = _rate;
        }
        else
        {
            _ps.emissionRate = 0;
        }
	}
}
