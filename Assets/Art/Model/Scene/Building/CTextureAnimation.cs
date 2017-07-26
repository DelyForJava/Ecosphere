using UnityEngine;
using System.Collections;

public class CTextureAnimation : MonoBehaviour
{

    //public Texture mainTexture;
	public string ChannelName = "MainTex";
    public int materialID = 0;
    public float xSpeed = 0.0f;
    public float ySpeed = 0.0f;
    public bool reverse = false;
    //	public float xSize = 1.0f;
    //	public float ySize = 1.0f;
    private float xOffset = 0.0f;
    private float yOffset = 0.0f;

    private Material material;

    void Start()
    {
        //setup material
        //if out of index
        if (materialID + 1 > GetComponent<Renderer>().materials.Length)
        {
            //get default material
            material = GetComponent<Renderer>().material;
        }
        else
        {
            //else get material from array
            material = GetComponent<Renderer>().materials[materialID];
        }
        //set scale
        //material.SetTextureScale("_MainTex", new Vector2(xSize, ySize));	
    }

    void Update()
    {
        //renderer.material.SetTexture("_MainTex", mainTexture);
        if (!reverse)
        {
            xOffset += xSpeed * Time.deltaTime;
            yOffset += ySpeed * Time.deltaTime;
        }
        else
        {
            xOffset -= xSpeed * Time.deltaTime;
            yOffset -= ySpeed * Time.deltaTime;
        }

        if (xOffset >= 1.0f | xOffset <= -1.0f)
            xOffset = 0.0f;

        if (yOffset >= 1.0f | yOffset <= -1.0f)
            yOffset = 0.0f;

        //set offset
		material.SetTextureOffset("_" + ChannelName, new Vector2(xOffset, yOffset));
    }
}