using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Orientation : MonoBehaviour
{
        //direction target or pointer target
        public Vector3 Target
        {
                get;set;
        }


        public bool Changed
        {
                get;set;
        }

        void Start()
        {
        }

        // Update is called once per frame
        void Update()
        {
                if(Changed)
                        transform.LookAt(Target);
        }

}
