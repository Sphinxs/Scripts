
using System.Collections;

using System.Collections.Generic;

using UnityEngine;

using UnityEngine.SceneManagement;

public class Menu : MonoBehaviour
{

    private int btnWidth = 150, btnHeight = 40;

    public Texture backgroundMenu;

	void OnGUI()
    {   
        GUI.DrawTexture(new Rect(0, 0, Screen.width, Screen.height), backgroundMenu);

        if(GUI.Button(new Rect(Screen.width / 2 - btnWidth / 2, 350, btnWidth, btnHeight), "Jogar")) {
            SceneManager.LoadScene(1);
        }

    }

}
