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
                GUI.Label(new Rect(Screen.width * .7f, Screen.height * .85f, Screen.width * .3f, Screen.height * .2f), "<size=30>\"if\" statements control the flow of code based on a true or false condition. If the condition in parentheses is false, the code in the braces will not execute.</size>");
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
