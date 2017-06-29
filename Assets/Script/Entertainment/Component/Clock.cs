using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Clock : MonoBehaviour
{
        public float ElapsedTime
        {
                get; set;
        }

        public bool Paused
        {
                get;set;
        }


        void Start()
        {

        }

        // Update is called once per frame
        void Update()
        {
                if (Paused)
                        return;

                ElapsedTime += Time.deltaTime;
        }

}
