using UnityEngine;
using System.Collections;

public class EditableEntity : MonoBehaviour {

    bool drawEditor;

	// Use this for initialization
	void Start () {
	    drawEditor = false;
	}
	
	// Update is called once per frame
    void Update()
    {

        if (Input.GetMouseButtonDown(0))
        {
            Ray r = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;
 
            if (Physics.Raycast(r, out hit, Mathf.Infinity))
            {
                if (hit.collider.gameObject.CompareTag("Editable"))
                {
                    drawEditor = !drawEditor;
                }
            }
        }
    }

    void OnGUI()
    {
        if (drawEditor)
        {
            GUI.Box(new Rect(675, 50, 200, 75),"Edit Box");
        }
    }
}
