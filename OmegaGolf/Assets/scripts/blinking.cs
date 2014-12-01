using UnityEngine;
using System.Collections;

public class blinking : MonoBehaviour {

	public Color colorStart = Color.red;
	public Color colorEnd = Color.green;
	public float duration = 1.0F;
	
	// Use this for initialization
	void Start () {
	
	

	}
	
	// Update is called once per frame
	void Update () {

		GameObject wall = GameObject.Find("polySurface1_levelone:polySurface1");

        EditableEntityBounce wallEntity = (EditableEntityBounce)wall.GetComponent(typeof(EditableEntityBounce));
		float wallBounciness = wallEntity.bounceValue;

		float lerp = Mathf.PingPong(Time.time, duration) / duration;
        if(!FindObjectOfType<HoverGlow>().isOver)
        {
            renderer.material.color = Color.Lerp(colorStart, colorEnd, wallBounciness);
        }
	

		}

	}


