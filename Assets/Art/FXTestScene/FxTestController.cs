using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FxTestController : MonoBehaviour {
    public Animator Role;

    public ParticleSystem[] Pars;
	
	// Update is called once per frame
	void Update () {
        playAni();
	}

    private void playAni()
    {
        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            Role.CrossFade("Attack01", 0.1f);
            if (Pars.Length > 0 && Pars[0] != null)
            {
                Pars[0].Play(true);
            }
        }

        if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            Role.CrossFade("Attack02", 0.1f);
            if (Pars.Length > 1 && Pars[1] != null)
            {
                Pars[1].Play(true);
            }
        }

        if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            Role.CrossFade("Attack03", 0.1f);
            if (Pars.Length > 2 && Pars[2] != null)
            {
                Pars[2].Play(true);
            }
        }

        if (Input.GetKeyDown(KeyCode.Alpha4))
        {
            Role.CrossFade("Attack04", 0.1f);
            if (Pars.Length > 3 && Pars[3] != null)
            {
                Pars[3].Play(true);
            }
        }
    }
}
