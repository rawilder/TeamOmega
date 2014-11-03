using UnityEngine;
using System.Collections;

public class MainMenu : MonoBehaviour
{

#region Private Variables
    private float screenHeight;
    private float screenWidth;

    private int _worldIndex;
    private float _backW, _backH, _backX, _backY;
    private int _backFontSize;
    //Main Menu Variables
    private float _mmPlayButtonHeight, _mmPlayButtonWidth, _mmPlayX, _mmPlayY, _mmQuitX, _mmQuitY,_mmQuitButtonHeight,_mmQuitButtonWidth, _mmGolfHeight, _mmProHeight, _mmTopMargin;
    private int _mmGolfFontSize, _mmProFontSize, _mmPlayFontSize, _mmQuitFontSize;
    //World Menu Variables
    private float _wButtonHeight, _wButtonWidth, _wButtonX, _wButtonY, _wLeftButtonX, _wRightButtonX, _wLeftButtonY, _wLeftButtonW, _wLeftButtonH;
    private int _wButtonFontSize;
    //level menu variables
    private float _lButtonWidth, _lButtonHeight, _lButton1X, _lButton2X, _lButton3X, _lButtonY, _lStar1X, _lStar2X, _lStar3X, _lStarY, _lStarW, _lStarH;
    private int _lButtonFontSize;
 
    private enum MenuState
    {
        Main,
        World,
        Level
    };
    private MenuState _state;
#endregion

#region Public Variables
    public Camera trailCam;
    public GUISkin defaultSkin;
    public Texture2D NoStars;
    public Texture2D OneStar;
    public Texture2D TwoStars;
    public Texture2D ThreeStars;

    /// <summary>
    /// Trick so that Unity will serialize inspector for us
    /// Access a level using using worlds[worldIndex].levels[levelIndex]
    /// </summary>
    [System.Serializable]
    public class World
    {
        public string worldName;
        public GUIStyle buttonStyle;
        public string level1Name;
        public string level2Name;
        public string level3Name;
    }
    public World[] worlds;

#endregion

    
    void Start () {
        _state = MenuState.Main;
        screenHeight = Screen.height;
        screenWidth = Screen.width;
        CalculateDimensions();
        _worldIndex = 0;
	}

    void Update()
    {
        if(Screen.height != screenHeight || Screen.width != screenWidth)
        {
            screenHeight = Screen.height;
            screenWidth = Screen.width;
            CalculateDimensions();
        }
    }
	
	void OnGUI(){
        //Assign Skin to use
        GUI.skin = defaultSkin;
        // 3 Different screens, (Main, world selection, level selection)
        switch(_state)
        {
            case MenuState.Main:
                MainGUI();
                break;
            case MenuState.World:
                WorldGUI();
                break;
            case MenuState.Level:
                LevelGUI();
                break;
        }
        trailCam.Render();
       
    }

    /// <summary>
    /// Called when screen size changes, recalculates all button sizes, label sizes, etc.
    /// Everything that needs to be recalculated if screen size changes should go in here.
    /// </summary>
    private void CalculateDimensions()
    {
        //Main Menu variables
        _mmPlayButtonHeight = screenHeight * .15f;
        _mmPlayButtonWidth = screenWidth * .25f;
        _mmPlayX = (screenWidth - _mmPlayButtonWidth) * .5f;
        _mmPlayY = screenHeight * .55f;
        _mmPlayFontSize = Mathf.Min(Mathf.FloorToInt(_mmPlayButtonWidth * .25f), Mathf.FloorToInt(_mmPlayButtonHeight * .35f));
        _mmQuitButtonHeight = screenHeight * .15f;
        _mmQuitButtonWidth = screenWidth * .2f;
        _mmQuitX = (screenWidth - _mmQuitButtonWidth) * .5f;
        _mmQuitY = screenHeight * .75f;
        _mmQuitFontSize = Mathf.Min(Mathf.FloorToInt(_mmQuitButtonWidth * .25f), Mathf.FloorToInt(_mmQuitButtonHeight * .35f));
        _mmGolfFontSize = Mathf.Min(Mathf.FloorToInt(screenWidth * .15f),Mathf.FloorToInt(screenHeight * .2f));
        _mmGolfHeight = _mmGolfFontSize * 1.25f;
        _mmProFontSize = Mathf.Min(Mathf.FloorToInt(screenWidth * .1f),Mathf.FloorToInt(screenHeight * .15f));
        _mmProHeight = _mmProFontSize * 1.2f;
        _mmTopMargin = screenHeight * .05f;
        //World selection variables
        _wButtonHeight = screenHeight * 0.4f;
        _wButtonWidth = screenWidth * 0.4f;
        _wButtonFontSize = Mathf.Min(Mathf.FloorToInt(_wButtonWidth * .3f), Mathf.FloorToInt(_wButtonHeight * .3f));
        _wButtonX = (screenWidth - _wButtonWidth) * 0.5f;
        _wButtonY = (screenHeight - _wButtonHeight) * 0.5f;
        _wLeftButtonX = _wButtonX - _wButtonWidth / 2;
        _wRightButtonX = _wButtonX + 1.25f * _wButtonWidth ;
        _wLeftButtonY = _wButtonY + _wButtonHeight / 4;
        _wLeftButtonW = _wButtonWidth / 4;
        _wLeftButtonH = _wButtonHeight / 2;
        //level selection variables
        _lButtonWidth = screenWidth * .2f;
        _lButtonHeight = screenHeight * .2f;
        _lButtonFontSize = Mathf.Min(Mathf.FloorToInt(_lButtonWidth * .25f), Mathf.FloorToInt(_lButtonHeight * .5f));
        _lButton1X = screenWidth * .1f;
        _lButton2X = _lButton1X + _lButtonWidth + _lButton1X;
        _lButton3X = _lButton2X + _lButtonWidth + _lButton1X;
        _lButtonY = (screenHeight - _lButtonHeight) * 0.5f;
        _lStar1X = _lButton1X + .2f * _lButtonWidth;
        _lStar2X = _lButton2X + .2f * _lButtonWidth;
        _lStar3X = _lButton3X + .2f * _lButtonWidth;
        _lStarY = _lButtonY + .7f * _lButtonHeight;
        _lStarW = .6f * _lButtonWidth;
        _lStarH = _lButtonHeight * .2f;
        //universal
        _backW = screenWidth * .15f;
        _backH = screenHeight * .15f;
        _backX = screenWidth - _backW;
        _backY = screenHeight - _backH;
        _backFontSize = Mathf.Min(Mathf.FloorToInt(_backW * .15f), Mathf.FloorToInt(_backH * .35f));
    }

#region Main Title Screen
    private void MainGUI()
    {
       
        //Play Button
        GUI.skin.button.fontSize = _mmPlayFontSize;
        if (GUI.Button(new Rect(_mmPlayX, _mmPlayY, _mmPlayButtonWidth, _mmPlayButtonHeight), "Play")) {
            _state = MenuState.World;
        }
        //Quit Button
        GUI.skin.button.fontSize = _mmQuitFontSize;
        if (GUI.Button(new Rect(_mmQuitX, _mmQuitY, _mmQuitButtonWidth, _mmQuitButtonHeight), "Quit")){
            Application.Quit();
        }
        //Title
        GUI.skin.label.fontSize = _mmGolfFontSize;
        GUI.Label(new Rect(0, _mmTopMargin, screenWidth, _mmGolfHeight), "Golf");
        GUI.skin.label.fontSize = _mmProFontSize;
        GUI.Label(new Rect(0, _mmTopMargin + _mmGolfHeight, screenWidth, _mmProHeight), "PRO[gramming]");
        
    }
#endregion


#region World Selection Screen
    private void WorldGUI()
    {
        worlds[_worldIndex].buttonStyle.fontSize = _wButtonFontSize;
        if (GUI.Button(new Rect(_wButtonX, _wButtonY, _wButtonWidth, _wButtonHeight), worlds[_worldIndex].worldName, worlds[_worldIndex].buttonStyle))
        {
            _state = MenuState.Level;
        }
        //left button
        if (GUI.Button(new Rect(_wLeftButtonX, _wLeftButtonY, _wLeftButtonW, _wLeftButtonH), string.Empty, defaultSkin.customStyles[0]))
        {
            if (_worldIndex == 0)
                _worldIndex = worlds.Length-1;
            else
                _worldIndex -= 1;
        }
        //right button
        if (GUI.Button(new Rect(_wRightButtonX, _wLeftButtonY, _wLeftButtonW, _wLeftButtonH), string.Empty, defaultSkin.customStyles[1]))
        {
            if (_worldIndex == worlds.Length-1)
                _worldIndex = 0;
            else
                _worldIndex += 1;
        }

        //back button (bottom right corner)
        GUI.skin.button.fontSize = _backFontSize;
        if (GUI.Button(new Rect(_backX, _backY, _backW, _backH), "Back"))
        {
            _state = MenuState.Main;
        }
    }
#endregion


#region Level Selection Screen
    private void LevelGUI()
    {
        GUI.skin.label.fontSize = _mmGolfFontSize;
        GUI.Label(new Rect(0, _mmTopMargin, screenWidth, _mmGolfHeight), worlds[_worldIndex].worldName);
        //for now just putting 3 buttons, since that is most we will have for a world right now.
        //can make a button grid later if we need more levels
        worlds[_worldIndex].buttonStyle.fontSize = _lButtonFontSize;
        //Level1
        if (GUI.Button(new Rect(_lButton1X, _lButtonY, _lButtonWidth, _lButtonHeight), "1", worlds[_worldIndex].buttonStyle))
        {
            Application.LoadLevel(worlds[_worldIndex].level1Name);
        }
        GUI.DrawTexture(new Rect(_lStar1X, _lStarY, _lStarW, _lStarH), OneStar);

        //Level 2
        if (GUI.Button(new Rect(_lButton2X, _lButtonY, _lButtonWidth, _lButtonHeight), "2", worlds[_worldIndex].buttonStyle))
        {
            Application.LoadLevel(worlds[_worldIndex].level2Name);
        }
        GUI.DrawTexture(new Rect(_lStar2X, _lStarY, _lStarW, _lStarH), TwoStars);

        //Level 3
        if (GUI.Button(new Rect(_lButton3X, _lButtonY, _lButtonWidth, _lButtonHeight), "3", worlds[_worldIndex].buttonStyle))
        {
            Application.LoadLevel(worlds[_worldIndex].level3Name);
        }
        GUI.DrawTexture(new Rect(_lStar3X, _lStarY, _lStarW, _lStarH), ThreeStars);

        //back button (bottom right corner)
        GUI.skin.button.fontSize = _backFontSize;
        if (GUI.Button(new Rect(_backX, _backY, _backW, _backH), "Back"))
        {
            _state = MenuState.World;
        }

    }
#endregion
}
