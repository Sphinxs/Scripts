
using System.Collections;

using System.Collections.Generic;

using UnityEngine;

using UnityEngine.SceneManagement;

public class Menu : MonoBehaviour
{

	private string instructionTxt = "\nInstrução : \n\nSeta esquerda e direita para se mover\n\nTecla espaço para atirar\n\n";

    private int btnWidth = 150, btnHeight = 40;

    void Start()
    {

    }

    void Update()
    {

    }

	void OnGUI()
    {
        GUI.Label(new Rect(600, 200, 400, 400), instructionTxt); // X, y, width and height
	
        if(GUI.Button(new Rect(Screen.width / 2 - btnWidth / 2, 350, btnWidth, btnHeight), "Jogar")) {
            SceneManager.LoadScene(1);
        }
    }

}
