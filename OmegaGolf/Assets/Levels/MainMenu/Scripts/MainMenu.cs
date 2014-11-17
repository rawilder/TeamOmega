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
    private float _mmTitleX, _mmTitleY, _mmTitleW, _mmTitleH, _mmPlayButtonHeight, _mmPlayButtonWidth, _mmPlayX, _mmPlayY, _mmQuitX, _mmQuitY, _mmQuitButtonHeight, _mmQuitButtonWidth, _mmTopMargin, _mmGolfHeight;
    private int  _mmPlayFontSize, _mmQuitFontSize,_mmGolfFontSize;
    //World Menu Variables
    private float _wButtonHeight, _wButtonWidth, _wButtonX, _wButtonY;
    private int _wButtonFontSize;
    //level menu variables
    private float _lButtonWidth, _lButtonHeight, _lButton1X, _lButtonDeltaX, _lButtonY;
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
    public Texture2D titleTexture;
    public Texture2D NoFlags;
    public Texture2D OneFlag;
    public Texture2D TwoFlags;
    public Texture2D ThreeFlags;
    public Texture2D Lock;

    [System.Serializable]
    public class World
    {
        public string worldName;
        public GUIStyle buttonStyle;
        public string level1Name;
        public string level2Name;
        public string level3Name;
        public string level4Name;
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
        _mmTopMargin = screenHeight * .05f;
        _mmTitleX = screenWidth * .15f;
        _mmTitleY = _mmTopMargin * 3;
        _mmTitleW = screenWidth * .7f;
        _mmTitleH = screenHeight  * .4f;
        //World selection variables
        _wButtonHeight = (screenHeight * 0.35f) / worlds.Length;
        _wButtonWidth = screenWidth * 0.25f;
        _wButtonFontSize = Mathf.Min(Mathf.FloorToInt(_wButtonWidth * .25f), Mathf.FloorToInt(_wButtonHeight * .45f));
        _wButtonX = (screenWidth - _wButtonWidth) * 0.5f;
        _wButtonY = (screenHeight - _wButtonHeight) * 0.35f;
        //level selection variables
        _lButtonWidth = screenWidth * .1f;
        _lButtonHeight = screenHeight * .15f;
        _lButtonFontSize = Mathf.Min(Mathf.FloorToInt(_lButtonWidth * .25f), Mathf.FloorToInt(_lButtonHeight * .5f));
        _lButton1X = screenWidth * .25f;
        _lButtonDeltaX = _lButtonWidth * 1.25f;
        _lButtonY = (screenHeight - _lButtonHeight) * 0.45f;
        //universal
        _backW = screenWidth * .1f;
        _backH = screenHeight * .1f;
        _backX = _backW * .1f;
        _backY = _backH * .1f;
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
        GUI.DrawTexture(new Rect(_mmTitleX, _mmTitleY, _mmTitleW, _mmTitleH), titleTexture);
        
    }
#endregion

   

#region World Selection Screen
    private void WorldGUI()
    {
        for (int i = 0; i < worlds.Length; i++)
        {
            worlds[i].buttonStyle.fontSize = _wButtonFontSize;
            if (GUI.Button(new Rect(_wButtonX, _wButtonY + i *(_wButtonHeight * 1.25f) , _wButtonWidth, _wButtonHeight), worlds[i].worldName, worlds[i].buttonStyle))
            {
                _worldIndex = i;
                _state = MenuState.Level;
            }
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

    private bool LevelButton(Rect buttonLoc, int flagCount, int levelNumber)
    {
        // button
        //bool b = GUI.Button(buttonLoc, levelNumber.ToString());
        //stars
        Rect flagRect = new Rect(buttonLoc.x + .075f * buttonLoc.width, buttonLoc.y - .5f * buttonLoc.height, .75f * buttonLoc.width, buttonLoc.height);
        switch(flagCount)
        {
            case 0:
                GUI.DrawTexture(flagRect, NoFlags);
                break;
            case 1:
                GUI.DrawTexture(flagRect, OneFlag);
                break;
            case 2:
                GUI.DrawTexture(flagRect, TwoFlags);
                break;
            case 3:
                GUI.DrawTexture(flagRect, ThreeFlags);
                break;
        }
        return GUI.Button(buttonLoc, levelNumber.ToString(), worlds[_worldIndex].buttonStyle); ;
    }
    private bool LockedLevel(Rect buttonLoc)
    {
        bool b = GUI.Button(buttonLoc, string.Empty, worlds[_worldIndex].buttonStyle);
        Rect lockRect = new Rect(buttonLoc.x + .25f*buttonLoc.width, buttonLoc.y + .1f * buttonLoc.height, .5f * buttonLoc.width, .7f * buttonLoc.height);
        GUI.DrawTexture(lockRect, Lock);
        return b;
    }
    private void LevelGUI()
    {
        GUI.DrawTexture(new Rect(screenWidth/3, _mmTopMargin*1.5f, screenWidth/3, _mmGolfHeight/2), worlds[_worldIndex].buttonStyle.active.background);
        GUI.skin.label.fontSize = Mathf.FloorToInt(_mmGolfFontSize/2.5f);
        GUI.Label(new Rect(screenWidth/3, _mmTopMargin*2, screenWidth/3, _mmGolfHeight/2), worlds[_worldIndex].worldName);
        
        //for now just putting 3 buttons, since that is most we will have for a world right now.
        //can make a button grid later if we need more levels
        worlds[_worldIndex].buttonStyle.fontSize = _lButtonFontSize;
        //Level1
        if (LevelButton(new Rect(_lButton1X, _lButtonY, _lButtonWidth, _lButtonHeight), 0 ,1))
        {
            Application.LoadLevel(worlds[_worldIndex].level1Name);
        }

        //Level 2
        if (LevelButton(new Rect(_lButton1X + _lButtonDeltaX, _lButtonY, _lButtonWidth, _lButtonHeight), 1, 2))
        {
            Application.LoadLevel(worlds[_worldIndex].level2Name);
        }

        //Level 3
        if (LevelButton(new Rect(_lButton1X + 2*_lButtonDeltaX, _lButtonY, _lButtonWidth, _lButtonHeight), 2, 3))
        {
            Application.LoadLevel(worlds[_worldIndex].level3Name);
        }

        //Level 4
        if (LevelButton(new Rect(_lButton1X + 3 * _lButtonDeltaX, _lButtonY, _lButtonWidth, _lButtonHeight),3,4))
        {
            Application.LoadLevel(worlds[_worldIndex].level4Name);
        }

        for (int i = 0; i < 4; i++ )
        {
            LockedLevel(new Rect(_lButton1X + i * _lButtonDeltaX, _lButtonY + 1.5f * _lButtonHeight, _lButtonWidth, _lButtonHeight));
        }
        //back button (bottom right corner)
        GUI.skin.button.fontSize = _backFontSize;
        if (GUI.Button(new Rect(_backX, _backY, _backW, _backH), "Back"))
        {
            _state = MenuState.World;
        }
    }
#endregion
}
