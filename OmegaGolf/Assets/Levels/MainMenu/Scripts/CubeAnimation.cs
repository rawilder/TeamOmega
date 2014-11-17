using UnityEngine;
using System.Collections;

public class CubeAnimation : MonoBehaviour {

    public float vSpeed = 2.0f;
    public float hSpeed = 1.0f;
    public float vDistance = .001f;
    public float hDistance = .0005f;

    private float hIndex, vIndex;

    void Start()
    {
        hIndex = Random.Range(0.0f, 10.0f);
        vIndex = Random.Range(0.0f,10.0f);
    }
	
	// Update is called once per frame
	void Update () {
        hIndex += hSpeed * Time.deltaTime;
        vIndex += vSpeed * Time.deltaTime;
        transform.position += new Vector3(hDistance * Mathf.Sin(hIndex), vDistance * Mathf.Cos(vIndex), 0);
	}
}
