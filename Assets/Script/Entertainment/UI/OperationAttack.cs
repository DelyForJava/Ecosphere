using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class OperationAttack : MonoBehaviour, IPointerDownHandler, IPointerUpHandler
{
        public Director director;

        public void OnPointerDown(PointerEventData data)
        {
                director.PushQueue = true;
        }

        public void OnPointerUp(PointerEventData data)
        {
        }

}