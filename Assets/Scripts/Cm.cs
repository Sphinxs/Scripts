
using System.Collections;

using System.Collections.Generic;

using UnityEngine;


public class Cm : MonoBehaviour
{

    public Transform pt, ct;

    void Update()
    {
		ct.position = Vector3.Lerp(
			ct.position,
			new Vector3(pt.position.x, ct.position.y, ct.position.z),
			3f
		);
    }
	
}
