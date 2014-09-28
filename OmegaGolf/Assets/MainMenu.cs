using UnityEngine;
using System.Collections;

public class MainMenu : MonoBehaviour {

    private float screenHeight;
    private float screenWidth;
    private float buttonHeight;
    private float buttonWidth;

	void Start () {
        screenHeight = Screen.height;
        screenWidth = Screen.width;

        buttonHeight = screenHeight * 0.3f;
        buttonWidth = screenWidth * 0.4f;
	}
	
	void OnGUI(){
        GUIStyle centeredText = new GUIStyle("label");
        centeredText.alignment = TextAnchor.MiddleCenter;

        GUI.Label(new Rect((screenWidth - buttonWidth) * 0.5f, screenHeight * 0.05f, buttonWidth, screenHeight * 0.1f), "Main Menu", centeredText);

        if (GUI.Button(new Rect((screenWidth - buttonWidth) * 0.5f, screenHeight * 0.2f, buttonWidth, buttonHeight), "Prototype Level"))
        {
            Application.LoadLevel(1);
        }
        if (GUI.Button(new Rect((screenWidth - buttonWidth) * 0.5f, screenHeight * 0.6f, buttonWidth, buttonHeight), "Quit"))
        {
            Application.Quit();
        }
    }
}
