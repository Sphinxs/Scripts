
using System.Collections;

using System.Collections.Generic;

using UnityEngine;

using UnityEngine.SceneManagement;

public class Enemy : MonoBehaviour
{

    public float currentSpeed;

    public float minSpeed, maxSpeed;

    private float x, y;

    void Start()
    {

    }

    void Update()
    {

        transform.Translate(Vector3.down * (currentSpeed * Time.deltaTime));

        if (transform.position.y < -6.0f)
        {

            Plt.missed++;

            Plt.score -= 10;

            SetPosition();
        }

        if(Plt.missed > 5)
                SceneManager.LoadScene(2);
        
    }

    public void SetPosition()
    {

        currentSpeed = Random.Range(minSpeed, maxSpeed);

        x = Random.Range(-2.0f, 2.0f);

        y = 8.0f;

        transform.position = new Vector3(x, y, 0.0f);

    }

    /* void OnTriggerEnter(Collider otherObject) // To destroy the player active the tag kill-player on object player
    {

        Debug.Log("Colisão | " + otherObject.name);

        if (otherObject.tag == "kill-player")
        {
            Plt.life -= 1;

            Plt.score = 0;

            Plt.missed = 0;

            Instantiate(ExplosionPlayer, new Vector3(transform.position.x, transform.position.y, transform.position.z), Quaternion.identity);

            Destroy(otherObject.gameObject); // Destroy the Player

            Destroy(this.gameObject); // Destroy the Enemy

        }

    } */

}
