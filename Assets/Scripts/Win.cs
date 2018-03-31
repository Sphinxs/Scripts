
using System.Collections;

using System.Collections.Generic;

using UnityEngine;

using UnityEngine.SceneManagement;

public class Win : MonoBehaviour {

	private int btnWidth = 150, btnHeight = 40;

	void OnGUI()
    {
        if(GUI.Button(new Rect(Screen.width / 2 - btnWidth / 2, 350, btnWidth, btnHeight), "Você Ganhou")) {
            Plt.score = 0;
			
			Plt.life = 3;
			
			Plt.missed = 0;

			SceneManager.LoadScene(0);
        }
    }

}
