using UnityEngine;
using System.Collections;

public class SkyBoxRotate : MonoBehaviour {

    private Transform _myTransform;
    public float rotateSpeed = 1.0f;
	// Use this for initialization
	void Start () {
        _myTransform = transform;
	}
	
	// Update is called once per frame
	void Update () {
        _myTransform.Rotate(Vector3.up * rotateSpeed * Time.deltaTime);
	}
}
