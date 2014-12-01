using UnityEngine;
using System.Collections;

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
        if(collision.gameObject.CompareTag("HoleBounds"))
        {
            playerController.victoryCondition = true;
        }

    }

    void OnCollisionExit(Collision collision)
    {

        if (collision.gameObject.CompareTag("Editable"))
        {
            Debug.Log("hey hacky shit here");
            rb.AddForce(rb.velocity * (100f * collision.gameObject.GetComponent<EditableEntity>().bounceValue));
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
        GUI.skin.label.fontSize = Mathf.Min(Mathf.FloorToInt(windowWidth * .1f), Mathf.FloorToInt(windowHeight * .15f));
        GUI.Label(new Rect(0, windowHeight * .1f, windowWidth, windowHeight * .2f), "Level Complete!");
        GUI.skin.label.fontSize = Mathf.Min(Mathf.FloorToInt(windowWidth * .15f), Mathf.FloorToInt(windowHeight * .05f));
        GUI.Label(new Rect(0, windowHeight * .85f, windowWidth, windowHeight * .15f), "Strokes : " + playerController.strokeCount, GUI.skin.customStyles[0]);

        float ballWidth = Mathf.Min(windowWidth*.25f, windowHeight*.25f);
        float ballHeight = ballWidth;
        GUI.DrawTexture(new Rect((windowWidth - ballWidth*2) * .475f, (windowHeight - ballHeight*2) * .7f, ballWidth*2, ballHeight*2), twoflag);
        GUI.DrawTexture(new Rect((windowWidth - ballWidth) * .5f, (windowHeight - ballHeight) * .8f, ballWidth, ballHeight), gBall);
        float buttonWidth = windowWidth * .25f;
        float buttonHeight = windowHeight * .15f;

        GUI.skin.button.fontSize = Mathf.FloorToInt(Mathf.Min(buttonWidth * .25f, buttonHeight * .3f));
        if (GUI.Button(new Rect((windowWidth - buttonWidth) * .95f, (windowHeight - buttonHeight) * .95f, buttonWidth, buttonHeight), "Replay"))
        {
            Application.LoadLevel(Application.loadedLevelName);
        }
        if (GUI.Button(new Rect((windowWidth - buttonWidth) * .05f, (windowHeight - buttonHeight) * .95f, buttonWidth, buttonHeight), "Main Menu"))
        {
            Application.LoadLevel("main_menu");
        }
    }

    public void reset()
    {
        playerController.strokeCount = 0;

        rb.velocity = Vector3.zero;
        rb.angularVelocity = Vector3.zero;
		rb.MovePosition(GameObject.FindGameObjectWithTag("SpawnPoint").transform.position);

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
