using UnityEngine;
using System.Collections;

public class BallBehavior : MonoBehaviour
{


    Rigidbody rb;
    // Use this for initialization
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        Ray r = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;
        if (Input.GetMouseButtonDown(0))
        {
            rb.velocity = new Vector3(0,0,0);
            if (Physics.Raycast(r, out hit, Mathf.Infinity))
            {
                if (hit.collider.gameObject.CompareTag("Ball"))
                {
                    Vector3 dir = transform.position - hit.point; 
                    rb.AddForce(dir.x * 100.0f, 0, dir.z * 100.0f);
                }
            }
        }
    }

    void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.CompareTag("OutOfBounds"))
        {
            rb.velocity = Vector3.zero;
            rb.angularVelocity = Vector3.zero;
            rb.MovePosition(GameObject.FindGameObjectWithTag("SpawnPoint").transform.position);
        }
    }
}
