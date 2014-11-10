using UnityEngine;
using System.Collections;

public class CubeAnimation : MonoBehaviour {

    public float vSpeed = 10.0f;
    public float hSpeed = 2.0f;
    public float vDistance = .25f;
    public float hDistance = .15f;

    private float index;

    void Start()
    {
        index = Random.Range(0.0f,1.0f);
    }
	
	// Update is called once per frame
	void Update () {
        index += Time.deltaTime;
        transform.position += new Vector3(hDistance * Mathf.Sin(index * hSpeed), vDistance * Mathf.Cos(index * vSpeed), 0);
	}
}
