using UnityEngine;
using System.Collections;
using System.Xml;

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
        Help,
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
        public string[] levelNames = new string[8];
        public int[] levelFlags = new int[8];
    }
    public World[] worlds;

    public static bool returnToLevelSelect;



#endregion

    void Start () {
        _state = MenuState.Main;
        screenHeight = Screen.height;
        screenWidth = Screen.width;
        CalculateDimensions();
        _worldIndex = 0;

        XmlDocument doc = new XmlDocument();
        doc.Load("Assets/Scores.xml");
        for (int i = 0; i < worlds.Length; i++)
        {
            XmlNode root = doc.SelectSingleNode("Worlds/"+worlds[i].worldName);
            foreach (XmlNode level in root.ChildNodes)
            {
                worlds[i].levelFlags[int.Parse(level.Attributes["number"].InnerText)] = int.Parse(level.Attributes["flags"].InnerText);
            }
        }

        
	}

    void Update()
    {
        if (returnToLevelSelect)
        {
            _state = MenuState.Level;
            returnToLevelSelect = false;
        }
        if(Screen.height != screenHeight || Screen.width != screenWidth)
        {
            screenHeight = Screen.height;
            screenWidth = Screen.width;
            CalculateDimensions();
        }


        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (_state == MenuState.Help || _state == MenuState.World)
                _state = MenuState.Main;
            else if(_state == MenuState.Level)
                _state = MenuState.World;
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
            case MenuState.Help:
                HelpGUI();
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
            AudioManager.Instance.playMenuSelect();
        }
        //Help Button
        GUI.skin.button.fontSize = _mmQuitFontSize;
        if (GUI.Button(new Rect(_mmQuitX, _mmQuitY, _mmQuitButtonWidth, _mmQuitButtonHeight), "Introduction")){
            _state = MenuState.Help;
            AudioManager.Instance.playMenuSelect();
        }
        //Exit Button
        GUI.skin.button.fontSize = _backFontSize;
        if (GUI.Button(new Rect(_backX, _backY, _backW, _backH), "Exit"))
        {
            Application.Quit();
        }
        //Title
        GUI.DrawTexture(new Rect(_mmTitleX, _mmTitleY, _mmTitleW, _mmTitleH), titleTexture);
    }
#endregion

#region Help Screen

    private void HelpGUI()
    {
        GUI.skin.label.alignment = TextAnchor.UpperCenter;
        GUI.Label(new Rect(screenWidth * .125f, 150f, screenWidth * .75f, screenHeight), "<size=84>Welcome to Golf Programming!</size><size=45>\n\nWhere the fundamentals of programming meets mini golf!\n\nThe mouse is used to aim and set the power of your shot.\nLeft clicking will shoot the ball accordingly.\nPressing R will restart the level.\n\nClick the button in the top left to look at the code of the level.\nPut your mouse over the pop-up code editor to learn more about what it does!\nClick the top left button again to resume play.\n\nPress escape to return to the menu.</size>");
        GUI.skin.label.alignment = TextAnchor.MiddleCenter;

        //back button (bottom right corner)
        GUI.skin.button.fontSize = _backFontSize;
        if (GUI.Button(new Rect(_backX, _backY, _backW, _backH), "Back"))
        {
            _state = MenuState.Main;
            AudioManager.Instance.playMenuSelect();
        }
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
                AudioManager.Instance.playMenuSelect();
            }
        }
        //back button (bottom right corner)
        GUI.skin.button.fontSize = _backFontSize;
        if (GUI.Button(new Rect(_backX, _backY, _backW, _backH), "Back"))
        {
            _state = MenuState.Main;
            AudioManager.Instance.playMenuSelect();
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
        //GUI.DrawTexture(new Rect(screenWidth/3, _mmTopMargin*1.5f, screenWidth/3, _mmGolfHeight/2), worlds[_worldIndex].buttonStyle.active.background);
        GUI.skin.label.fontSize = Mathf.FloorToInt(_mmGolfFontSize);
        GUI.Label(new Rect(0, _mmTopMargin*2, screenWidth, _mmGolfHeight), worlds[_worldIndex].worldName);
        
        //for now just putting 3 buttons, since that is most we will have for a world right now.
        //can make a button grid later if we need more levels
        worlds[_worldIndex].buttonStyle.fontSize = _lButtonFontSize;
        for (int i = 0; i < 4; i++ )
        {
            if(string.IsNullOrEmpty(worlds[_worldIndex].levelNames[i]))
            {
                LockedLevel(new Rect(_lButton1X + i * _lButtonDeltaX, _lButtonY, _lButtonWidth, _lButtonHeight));
            }
            else
            {
                if (LevelButton(new Rect(_lButton1X + i * _lButtonDeltaX, _lButtonY, _lButtonWidth, _lButtonHeight), worlds[_worldIndex].levelFlags[i], i+1))
                {
                    Application.LoadLevel(worlds[_worldIndex].levelNames[i]);
                    AudioManager.Instance.playMenuSelect();
                }
            }
        }
        for (int i = 4; i < 8; i++)
        {
            if (string.IsNullOrEmpty(worlds[_worldIndex].levelNames[i]))
            {
                LockedLevel(new Rect(_lButton1X + (i-4) * _lButtonDeltaX, _lButtonY + 1.5f * _lButtonHeight, _lButtonWidth, _lButtonHeight));
            }
            else
            {
                if (LevelButton(new Rect(_lButton1X + (i - 4) * _lButtonDeltaX, _lButtonY + 1.5f * _lButtonHeight, _lButtonWidth, _lButtonHeight), worlds[_worldIndex].levelFlags[i], i + 1))
                {
                    Application.LoadLevel(worlds[_worldIndex].levelNames[i]);
                    AudioManager.Instance.playMenuSelect();
                }
            }
        }
        //back button (bottom right corner)
        GUI.skin.button.fontSize = _backFontSize;
        if (GUI.Button(new Rect(_backX, _backY, _backW, _backH), "Back"))
        {
            _state = MenuState.World;
            AudioManager.Instance.playMenuSelect();
        }
    }
#endregion
}
