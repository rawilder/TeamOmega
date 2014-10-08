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
			Debug.Log (wall.ToString());
			EditableEntity wallEntity = (EditableEntity)wall.GetComponent (typeof(EditableEntity));
			float wallBounciness = wallEntity.physMaterial.bounciness;

		float lerp = Mathf.PingPong(Time.time, duration) / duration;
		renderer.material.color = Color.Lerp(colorStart, colorEnd, wallBounciness);
		Debug.Log (wallBounciness);
	

		}

	}


