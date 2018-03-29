
using System.Collections;

using System.Collections.Generic;

using UnityEngine;

public class Player : MonoBehaviour
{

    public float speedPlayer;

    public GameObject Shut;

    public float shutDistance;

    Renderer rend; // Renderer

    void Start()
    {
        rend = GetComponent<Renderer>(); // Renderer        
    }

    void Update()
    {

        float movH = Input.GetAxisRaw("Horizontal") * speedPlayer * Time.deltaTime;

        float movV = Input.GetAxisRaw("Vertical") * speedPlayer * Time.deltaTime;

        transform.Translate(Vector3.right * movH);

        transform.Translate(Vector3.up * movV);


        if (transform.position.y > 8.0f)
            transform.position = new Vector3(transform.position.x, -4.0f, transform.position.z);
        else if (transform.position.y < -4.0f)
            transform.position = new Vector3(transform.position.x, 8.0f, transform.position.z);

        if (transform.position.x > 7.0f)
            transform.position = new Vector3(-6.0f, transform.position.y, 0.0f);
        else if (transform.position.x < -6.0f)
            transform.position = new Vector3(7.0f, transform.position.y, 0.0f);

        if (Input.GetKeyDown("space"))
        {
            Instantiate(Shut, new Vector3(transform.position.x, transform.position.y + (transform.localScale.y * shutDistance), 0.0f), Quaternion.identity);
        }

    }

    void OnTriggerEnter()
    {
        print("colisão\n\n");

        StartCoroutine(DestroyShip()); // Renderer            
    }

    IEnumerator DestroyShip()
    {
        Debug.Log("\nPlayer Dead\n");

        Plt.life -= 1;

        rend.enabled = false;

        yield return new WaitForSeconds(1.5f);

        rend.enabled = true;
    }

}
