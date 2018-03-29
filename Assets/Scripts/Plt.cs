
using System.Collections;

using System.Collections.Generic;

using UnityEngine;


public class Plt : MonoBehaviour
{

    public static int score = 0, life = 3, missed = 0;

    void Start()
    {
        Debug.Log("\n\nPlatform\n\n");
    }

    void Update()
    {
    }

    void OnGUI()
    {
        GUI.Label(new Rect(50, 50, 80, 20), "Pontos : " + score.ToString()); // X, y, width and height

        GUI.Label(new Rect(50, 70, 80, 20), "Vidas : " + life.ToString()); // X, y, width and height

        GUI.Label(new Rect(50, 90, 160, 20), "Perdidos : " + missed.ToString()); // X, y, width and height
    }

}
