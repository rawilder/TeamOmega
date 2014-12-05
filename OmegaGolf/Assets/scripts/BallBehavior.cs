using UnityEngine;
using System.Collections;
using System.Xml;
public class BallBehavior : MonoBehaviour
{


    Rigidbody rb;
    private PlayerController playerController;

    public GUISkin uiSkin;
    public Texture2D noflag;
    public Texture2D oneflag;
    public Texture2D twoflag;
    public Texture2D threeflag;
    public Texture2D gBall;
    private float windowWidth, windowHeight, windowX, windowY;


    // Use this for initialization
    void Start()
    {
        playerController = GetComponent<PlayerController>();
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        if (rb.position.y < -6)
        {
            reset();
        }

    }

    void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.CompareTag("HoleBounds") && !playerController.victoryCondition)
        {
            playerController.victoryCondition = true;
            AudioManager.Instance.playCheer();
            XmlDocument doc = new XmlDocument();
            doc.Load("Assets/Scores.xml");
            XmlNode root = doc.SelectSingleNode("Worlds/"+playerController.worldName);
            foreach(XmlNode level in root.ChildNodes)
            {
                if(int.Parse(level.Attributes["number"].InnerText) == playerController.levelNumber)
                {
                    int flagCount;
                    if (playerController.strokeCount <= playerController.par)
                        flagCount = 3;
                    else if (playerController.strokeCount <= playerController.par + 1)
                        flagCount = 2;
                    else
                        flagCount = 1;
                    level.Attributes["flags"].InnerText = Mathf.Max(int.Parse(level.Attributes["flags"].InnerText) , flagCount).ToString();
                    if(level.NextSibling != null)
                        level.NextSibling.Attributes["Locked"].InnerText = "False";
                    doc.Save("Assets/Scores.xml");
                    return;
                }
            }

        }

    }

    void OnCollisionExit(Collision collision)
    {

        if (collision.gameObject.CompareTag("Editable"))
        {
            rb.AddForce(rb.velocity * (100f * collision.gameObject.GetComponent<EditableEntityBounce>().bounceValue));
            AudioManager.Instance.playBounceWall();
        }
    }

    void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.CompareTag("BlackHole"))
        {

            rb.AddForce((collider.transform.position-rb.position)*150f);
        }
    }

    void OnGUI()
    {
        if (playerController.victoryCondition)
        {
            GUI.skin = uiSkin;
            playerController.enabled = false;
            playerController.arrowSprite.SetActive(false);
            float screenWidth = Screen.width;
            float screenHeight = Screen.height;
            windowWidth = screenWidth * .5f;
            windowHeight = screenHeight * .75f;
            windowX = (screenWidth - windowWidth) * .5f;
            windowY = (screenHeight - windowHeight) * .25f;
            GUI.Window(0, new Rect(windowX, windowY, windowWidth, windowHeight), LevelEndScreen, string.Empty);
        }
    }

    private void LevelEndScreen(int windowID)
    {
        //Level Complete Text
        GUI.skin.label.fontSize = Mathf.Min(Mathf.FloorToInt(windowWidth * .085f), Mathf.FloorToInt(windowHeight * .125f));
        GUI.Label(new Rect(0, windowHeight * .075f, windowWidth, windowHeight * .2f), "Level Complete!");
        GUI.skin.customStyles[0].fontSize = Mathf.Min(Mathf.FloorToInt(windowWidth * .15f), Mathf.FloorToInt(windowHeight * .05f));
        GUI.Label(new Rect(0, windowHeight * .225f, windowWidth, windowHeight * .1f), "Strokes/Par : " + playerController.strokeCount + "/" + playerController.par, GUI.skin.customStyles[0]);
        
        float ballWidth = Mathf.Min(windowWidth*.25f, windowHeight*.25f);
        float ballHeight = ballWidth;
        Texture2D flag;
        if (playerController.strokeCount <= playerController.par)
            flag = threeflag;
        else if (playerController.strokeCount <= playerController.par + 1)
            flag = twoflag;
        else
            flag = oneflag;
        GUI.DrawTexture(new Rect((windowWidth - ballWidth*2) * .475f, (windowHeight - ballHeight*2) * .6f, ballWidth*2, ballHeight*2), flag);
        GUI.DrawTexture(new Rect((windowWidth - ballWidth) * .5f, (windowHeight - ballHeight) * .7f, ballWidth, ballHeight), gBall);
        float buttonWidth = windowWidth * .25f;
        float buttonHeight = windowHeight * .15f;

        GUI.skin.button.fontSize = Mathf.FloorToInt(Mathf.Min(buttonWidth * .25f, buttonHeight * .3f));
        if (GUI.Button(new Rect((windowWidth - buttonWidth) * .95f, (windowHeight - buttonHeight) * .95f, buttonWidth, buttonHeight), "Next"))
        {
            if(Application.CanStreamedLevelBeLoaded("Level" + (playerController.levelNumber + 2).ToString()))
            {
                Application.LoadLevel("Level" + (playerController.levelNumber + 2).ToString()); //hacky shit cause i know naming structure of scenes
            }
            else
            {
                MainMenu.returnToLevelSelect = true;
                Application.LoadLevel("main_menu");
            }
        }
        if (GUI.Button(new Rect((windowWidth - buttonWidth) * .5f, (windowHeight - buttonHeight) * .95f, buttonWidth, buttonHeight), "Replay"))
        {
            Application.LoadLevel(Application.loadedLevelName);
        }
        if (GUI.Button(new Rect((windowWidth - buttonWidth) * .05f, (windowHeight - buttonHeight) * .95f, buttonWidth, buttonHeight), "Level Select"))
        {
            MainMenu.returnToLevelSelect = true;
            Application.LoadLevel("main_menu");
        }
    }

    public void reset()
    {
        playerController.strokeCount = 0;
        playerController.phaseWall = false;

        rb.velocity = Vector3.zero;
        rb.angularVelocity = Vector3.zero;
		rb.MovePosition(GameObject.FindGameObjectWithTag("SpawnPoint").transform.position);

        playerController.CheckForBallStop();

		renderer.material.color = playerController.ballColor;
		gameObject.layer = 0;
    }

    public void teleportToHole()
    {
        rb.velocity = Vector3.zero;
        rb.angularVelocity = Vector3.zero;
        rb.MovePosition(new Vector3(-25.05f, 9f, -10.3f));
    }
}
