using UnityEngine;
using System.Collections;
using System.Text.RegularExpressions;

public class EditableEntityIfWall : MonoBehaviour
{
    private string textFieldString;
    public bool drawEditor;

    public GUISkin defaultSkin;

	public EditType editType;  
	public enum EditType { bounceWall, ifWall, colorMat }


    // Use this for initialization
    void Start()
    {
        drawEditor = false;
    }

    // Update is called once per frame
    void Update()
    {

    }

    void OnGUI()
    {
        if (drawEditor)
        {
            Rect windowRect = new Rect(Screen.width * .7f, 50, 300, 125);

            windowRect = GUI.Window(0, windowRect, WindowFunction, "Code Editor");

            GUISkin oldskin = GUI.skin;

            if (windowRect.Contains(new Vector3(Input.mousePosition.x,Screen.height - Input.mousePosition.y, 0)))
            {
                GUI.skin = defaultSkin;
                GUI.skin.label.alignment = TextAnchor.UpperLeft;
                GUI.skin.label.fontSize = Mathf.FloorToInt(Mathf.Min(Screen.width * .025f, Screen.height * .025f));
                GUI.Label(new Rect(windowRect.x, windowRect.y + windowRect.height * 1.25f, Screen.width * .25f, Screen.height * .35f), "\"if\" statements control the flow of code based on a true or false condition. If the condition in parentheses is false, the code in the braces will not execute.");
                GUI.skin.label.alignment = TextAnchor.MiddleCenter;

            }

            GUI.skin = oldskin;
        }

        
    }

    void WindowFunction(int windowID)
    {
        GUI.Label(new Rect(10, 25, 300, 125), "<b><size=20>if (ballColor == wallColor)" +
                                             "\n{" +
                                             "\n    collision = false;" +
                                             "\n}</size></b>");


    }
	
}
