using UnityEngine;
using System.Collections;

public class MouseTrail : MonoBehaviour {


    private Transform _myTransform;
    private float _rayDist = 10.0f;
    private Ray _r;

	// Use this for initialization
	void Start () {
        _myTransform = transform;
	}
	
	// Update is called once per frame
	void Update () {
        _r = Camera.main.ScreenPointToRay(Input.mousePosition);
       _myTransform.position = _r.GetPoint(_rayDist) ;
        
	}
}
