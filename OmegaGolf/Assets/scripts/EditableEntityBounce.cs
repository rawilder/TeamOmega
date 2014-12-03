using UnityEngine;
using System.Collections;
using System.Text.RegularExpressions;

public class EditableEntityBounce: MonoBehaviour
{
    private string textFieldString;
    public bool drawEditor;
    
    public PhysicMaterial physMaterial;
    public float bounceValue;

    public GUISkin defaultSkin;

	public EditType editType;  
	public enum EditType { bounceWall, ifWall, colorMat }

    // Use this for initialization
    void Start()
    {
        textFieldString = (bounceValue*10).ToString();
        drawEditor = false;
        bounceValue = 0.0f;
        physMaterial.bounciness = 1.0f;
    }

    // Update is called once per frame
    void Update()
    {
        /*
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
         */
    }

    void OnGUI()
    {
        if (drawEditor)
        {
            Rect windowRect = new Rect(Screen.width * .7f, 50, 290, 60);

            windowRect = GUI.Window(0, windowRect, WindowFunction, "Code Editor");


            GUISkin oldskin = GUI.skin;

            if (windowRect.Contains(new Vector3(Input.mousePosition.x, Screen.height - Input.mousePosition.y, 0)))
            {
                GUI.skin = defaultSkin;
                GUI.skin.label.alignment = TextAnchor.UpperLeft;
                GUI.Label(new Rect(Screen.width * .7f, Screen.height * .85f, Screen.width * .25f, Screen.height * .2f), "<size=30>Here we can set the bounciness of the wall. The variables data type is int, for integer, so no decimals! 0 = no bounce, 10 = max bounce.</size>");
                GUI.skin.label.alignment = TextAnchor.MiddleCenter;

            }

            GUI.skin = oldskin;
        }
    }

    void WindowFunction(int windowID)
    {
        GUI.Label(new Rect(10, 25, 250, 75), "<b><size=20>int bounceValue =     ;</size></b>");

        textFieldString = GUI.TextField(new Rect(185, 28, 25, 20), textFieldString, 2);
        textFieldString = Regex.Replace(textFieldString, "[^0-9]", "");


        if (GUI.Button(new Rect(230, 25, 45, 30), "Apply"))
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
                AudioManager.Instance.playChangeCode();
                bounceValue = newBounceValue / 10.0f;
            }
        }
    }
	
}
