using UnityEngine;
using System.Collections;
using System.Text.RegularExpressions;

public class EditableEntityBounce: MonoBehaviour
{
    private string textFieldString;
    public bool drawEditor;
    private PlayerController playerController;

    public float bounceValue;

	public EditType editType;  
	public enum EditType { bounceWall, ifWall, colorMat }

    // Use this for initialization
    void Start()
    {
        playerController = GameObject.FindGameObjectWithTag("Ball").GetComponent<PlayerController>();
        textFieldString = (bounceValue*10).ToString();
        drawEditor = false;
        bounceValue = 0.0f;


    }

    // Update is called once per frame
    void Update()
    {

        if (playerController.gameState == PlayerController.GameState.editing && Input.GetMouseButtonDown(0))
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
		GUI.Label(new Rect(10, 25, 250, 75), new GUIContent("<b><size=20>int </size></b>", "The data type of this variable is integer"));
		GUI.Label(new Rect(50, 25, 250, 75), new GUIContent("<b><size=20>   bounceValue =     ;</size></b>", "Variable name bounceValue"));
		
		GUI.Label (new Rect (10,40,100,40), GUI.tooltip);

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

                bounceValue = newBounceValue / 10.0f;
            }
        }
    }
	
}
