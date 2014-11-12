using UnityEngine;
using System.Collections;

public class HoverGlow : MonoBehaviour {


    private Color normalColor;
    private Color hoverColor;
    public float transitionSpeed = 1.0f;
    public float brightnessMultiplier = 1.3f;
    private MeshRenderer _mr;
    public bool isOver;
    private int counter;
    private bool transitionToHover;
    private float timer;

    // Use this for initialization
    void Start()
    {
        _mr = GetComponent<MeshRenderer>();
        isOver = false;
        normalColor = _mr.material.color;
        hoverColor = new Color(normalColor.r * brightnessMultiplier, normalColor.g * brightnessMultiplier, normalColor.b * brightnessMultiplier, normalColor.a);
        timer = 0;
    }
	
	// Update is called once per frame
	void Update () {
        //if (!isOver)
        //    _mr.material.color = Color.Lerp(_mr.material.color, normalColor, transitionSpeed * Time.deltaTime);
        counter++;
        if (FindObjectOfType<PlayerController>().gameState == PlayerController.GameState.editing)
        {
            if(_mr.material.color == normalColor)
            {
                transitionToHover = true;
                timer = 0;
            }
            Debug.Log("hello?");
            if (transitionToHover)
            {
                timer += Time.deltaTime;
                if(timer > 2)
                {
                    timer = 2;
                }
                _mr.material.color = Color.Lerp(normalColor, hoverColor, transitionSpeed * timer);
                Debug.Log(transitionSpeed * timer);
                if (_mr.material.color == hoverColor)
                {
                    Debug.Log("hover color check");
                    transitionToHover = false;
                    timer = 0;
                }
            }
            if(!transitionToHover)
            {
                timer += Time.deltaTime;
                if (timer > 2)
                {
                    timer = 2;
                }
                Debug.Log(transitionSpeed * timer);
                _mr.material.color = Color.Lerp(hoverColor, normalColor, transitionSpeed * timer);
            }
        }
	}

    void OnMouseEnter()
    {
        isOver = true;
    }

    void OnMouseOver()
    {
        _mr.material.color = Color.Lerp(_mr.material.color, hoverColor, transitionSpeed * Time.deltaTime);
       // Debug.Log(transitionSpeed * Time.deltaTime);
    }

    void OnMouseExit()
    {
        isOver = false;
    }
}
