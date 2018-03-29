
using System.Collections;

using System.Collections.Generic;

using UnityEngine;

public class Shut : MonoBehaviour
{

    public float shutSpeed;

    public GameObject Explosion;

    void Start()
    {
    }

    void Update()
    {

        float moveShut = shutSpeed * Time.deltaTime;

        transform.Translate(Vector3.up * moveShut);

        if (transform.position.y < -4.0f || transform.position.y > 8.0f || transform.position.x < -6.0f || transform.position.x > 6.0f)
            Destroy(this.gameObject);

    }

    void OnTriggerEnter(Collider otherObject)
    {

        Debug.Log("Colisão | " + otherObject.name);

        if (otherObject.tag == "enemy")
        {

            Plt.score += 10;

            Enemy enemy = (Enemy)otherObject.gameObject.GetComponent("Enemy");

            enemy.SetPosition();

            Instantiate(Explosion, new Vector3(transform.position.x, transform.position.y, transform.position.z), Quaternion.identity);

            // Destroy(otherObject.gameObject); // Destroy the Enemy

            Destroy(this.gameObject);

        }

    }

    

}
