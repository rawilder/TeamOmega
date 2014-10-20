using UnityEngine;
using System.Collections;

public class BallBehavior : MonoBehaviour
{


    Rigidbody rb;
    bool inHole;
    private PlayerController playerController;

    // Use this for initialization
    void Start()
    {
        playerController = GetComponent<PlayerController>();
        rb = GetComponent<Rigidbody>();
        inHole = false;
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
            inHole = true;
        }
    }

    void OnGUI()
    {
        if(inHole)
        {
            GUI.Label(new Rect(Screen.width * .03f, Screen.height * .03f, 1500, 1000), "<i><size=55>Wow great job.</size></i>");
            GUI.Label(new Rect(Screen.width * .7f, Screen.height * .8f, 1500, 1000), "<i><size=55>You did it.</size></i>");

        }
    }

    public void reset()
    {
        playerController.strokeCount = 0;

        rb.velocity = Vector3.zero;
        rb.angularVelocity = Vector3.zero;
        rb.MovePosition(GameObject.FindGameObjectWithTag("SpawnPoint").transform.position);
        inHole = false;
    }

    public void teleportToHole()
    {
        rb.velocity = Vector3.zero;
        rb.angularVelocity = Vector3.zero;
        rb.MovePosition(new Vector3(-25.05f, 9f, -10.3f));
    }
}
