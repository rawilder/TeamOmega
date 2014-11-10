using UnityEngine;
using System.Collections;

public class HoverGlow : MonoBehaviour {


    private Color normalColor;
    private Color hoverColor;
    public float transitionSpeed = 1.0f;
    public float brightnessMultiplier = 1.3f;
    private MeshRenderer _mr;
    bool isOver;

    // Use this for initialization
    void Start()
    {
        _mr = GetComponent<MeshRenderer>();
        isOver = false;
        normalColor = _mr.material.color;
        hoverColor = new Color(normalColor.r * brightnessMultiplier, normalColor.g * brightnessMultiplier, normalColor.b * brightnessMultiplier, normalColor.a);
    }
	
	// Update is called once per frame
	void Update () {
        if (!isOver)
			_mr.material.color = Color.Lerp(_mr.material.color, normalColor, transitionSpeed * Time.deltaTime);

	}

    void OnMouseEnter()
    {
        isOver = true;
    }

    void OnMouseOver()
    {
        _mr.material.color = Color.Lerp(_mr.material.color, hoverColor, transitionSpeed * Time.deltaTime);
    }

    void OnMouseExit()
    {
        isOver = false;
    }
}
