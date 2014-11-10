using UnityEngine;
using System.Collections;

public class gravityInHole : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		Physics.gravity = new Vector3(0, -10, 0);

	}


    void OnCollisionEnter()
    {

    }
}
