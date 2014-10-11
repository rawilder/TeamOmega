using UnityEngine;
using System.Collections;

public class TestHover : MonoBehaviour {


    public Color normalColor;
    public Color hoverColor;
    public float transitionSpeed = 1.0f;
    private MeshRenderer _mr;

    // Use this for initialization
    void Start()
    {
        _mr = GetComponent<MeshRenderer>();
    }
	
	// Update is called once per frame
	void Update () {
        Ray r = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit _hit;
        if(Physics.Raycast(r, out _hit, Mathf.Infinity) && _hit.collider.gameObject == gameObject)
        {
            _mr.material.color = Color.Lerp(_mr.material.color, hoverColor, transitionSpeed * Time.deltaTime);
        }
        else
        {
			_mr.material.color = Color.Lerp(_mr.material.color, normalColor, transitionSpeed * Time.deltaTime);
        }
	}
}
