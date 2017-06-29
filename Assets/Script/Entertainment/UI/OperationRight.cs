using UnityEngine;
using UnityEngine.EventSystems;

public class OperationRight : MonoBehaviour,IDragHandler
{
	public void OnDrag(PointerEventData data)
	{
                //director.Camera.RotateAround(director.Hero.position, Vector3.up, data.delta.x);
                //Camera.Translate(0, data.delta.y * 0.05f, 0,Space.World);
                //Camera.RotateAround(Hero.position, Vector3.right, data.delta.y);
        }

	public Director  director;

}