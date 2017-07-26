using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CSDemo01 : MonoBehaviour {
	public Animator Yeqi;

	public Animator Shibing01;

	public Animator Shibing02;

	public GameObject Door;

	public GameObject BrokenDoor;

	public Animation[] AniCameras;

	public float EntranceTime = 3f;

	public ParticleSystem[] GunFires;

	public ParticleSystem[] GunHits;

	public ParticleSystem Land;

	public ParticleSystem BrokenDoorPar;

	// Use this for initialization
	void Start () {
		playAniForCS();
	}
	
	// Update is called once per frame
	void Update () {
		//if (Input.GetKeyDown(KeyCode.S)){
		//	playAniForCS();
		//}
	}

	private void playAniForCS() {
		StartCoroutine (play ());
	}

	private IEnumerator play() {
		// reset
		Yeqi.gameObject.SetActive (false);
		Yeqi.gameObject.transform.localPosition = new Vector3 (59, 0, -13);

		Shibing01.gameObject.transform.localPosition = new Vector3 (56.23f, 0, -16.34f);
		Shibing01.Play ("Idle", 0, 0);

		Shibing02.gameObject.transform.localPosition = new Vector3 (60.4341f, 0, -17.373f);
		Shibing02.Play ("Idle", 0, 0);
		AniCameras[0].Play ("camera_cs_demo01a");
        AniCameras[1].Play("camera_cs_demo01b");
        AniCameras[2].Play("camera_cs_demo01c");
        AniCameras[3].Play("camera_cs_demo01d");
		yield return new WaitForSeconds (EntranceTime);
		Yeqi.gameObject.SetActive (true);
		Yeqi.Play ("Entrance", 0, 0);
        yield return new WaitForSeconds(0.2f);
        Land.Play(true);
		yield return new WaitForSeconds (0.8f);
		//Time.timeScale = 0.1f;
		yield return new WaitForSeconds (0.15f);
		Time.timeScale = 0.1f;
		Door.gameObject.SetActive (false);
		BrokenDoor.gameObject.SetActive (true);
        BrokenDoorPar.Play(true);
		yield return new WaitForSeconds (0.08f);
		Shibing01.Play ("Death", 0, 0);
		Shibing02.Play ("Death", 0, 0);
		yield return new WaitForSeconds (0.1f);
		for (int i = 0; i < GunFires.Length; i++) {
			GunFires [i].Play (true);
			GunHits [i].Play (true);
		}
		yield return new WaitForSeconds (0.4f);
		Time.timeScale = 1f;
	}
}
