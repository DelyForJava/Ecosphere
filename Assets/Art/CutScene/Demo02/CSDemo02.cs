using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CSDemo02 : MonoBehaviour {
    public Animator ZhongJiPaoXiao;

	public GameObject NonBrokenWindow;

	public GameObject BrokenWindow01;

	public GameObject BrokenWindow02;

	private Rigidbody[] brokenwindows;

	public float EntranceTime = 3f;

	public float BrokenTime = 0.2f;

	public float RoarTime = 1.4f;

	public ParticleSystem Explosion;

	public ParticleSystem Roar;

	public Animation AniCamera;


	// Use this for initialization
	void Start () {
		if (BrokenWindow02 != null) {
			brokenwindows = BrokenWindow02.GetComponentsInChildren<Rigidbody> ();
		}
        playAniForCS();

    }

    // Update is called once per frame
    //void Update () {
    //       if (Input.GetKeyDown(KeyCode.S)){
    //		playAniForCS();
    //       }
    //}

    private void playAniForCS() {
		StartCoroutine (play ());
    }

	private IEnumerator play() {
		NonBrokenWindow.SetActive (true);
		ZhongJiPaoXiao.gameObject.SetActive (false);
		ZhongJiPaoXiao.transform.localPosition = new Vector3 (-4.74f, 0, -70.05f);
		AniCamera.Play ("camera_cs_demo02");
		yield return new WaitForSeconds (EntranceTime);
		ZhongJiPaoXiao.gameObject.SetActive (true);
		ZhongJiPaoXiao.Play("Entrance", 0, 0);
		yield return new WaitForSeconds (BrokenTime);
		Time.timeScale = 0.1f;
		Explosion.Play (true);
		NonBrokenWindow.SetActive (false);
		BrokenWindow01.SetActive (true);
		BrokenWindow02.SetActive (true);
		for (int i = 0; i < brokenwindows.Length; i++) {
			brokenwindows [i].isKinematic = false;
		}
		yield return new WaitForSeconds (RoarTime - 0.4f);
		Time.timeScale = 1f;
		Roar.Play (true);
		yield return new WaitForSeconds (0.4f);
		//Roar.Play (true);
	}
}
