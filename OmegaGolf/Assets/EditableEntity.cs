using UnityEngine;
using System.Collections;
using System.Text.RegularExpressions;

public class EditableEntity : MonoBehaviour
{
    private string textFieldString;
    private bool drawEditor;
    
    public PhysicMaterial physMaterial;

    // Use this for initialization
    void Start()
    {
        physMaterial.bounciness = 0.0f;
        textFieldString = (physMaterial.bounciness*10).ToString();
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
            Rect windowRect = new Rect(Screen.width * .7f, 50, 275, 60);

            windowRect = GUI.Window(0, windowRect, WindowFunction, "Variable Editor");       
        }
    }

    void WindowFunction(int windowID)
    {
        GUI.Label(new Rect(10, 25, 250, 75), "<b><size=20>int bounceValue =     ;</size></b>");

        textFieldString = GUI.TextField(new Rect(185, 28, 25, 20), textFieldString, 2);
        textFieldString = Regex.Replace(textFieldString, "[^0-9]", "");


        if (GUI.Button(new Rect(230, 25, 30, 30), ">"))
        {
            Debug.Log("Code Submitted!");
            int newBounceValue = 0;

            if (int.TryParse(textFieldString, out newBounceValue))
            {
                if (newBounceValue > 10)
                {
                    newBounceValue = 10;
                    textFieldString = newBounceValue.ToString();                   
                }

                physMaterial.bounciness = newBounceValue / 10.0f;
            }
        }
    }
}
