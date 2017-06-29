using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VideoAI : MonoBehaviour
{
        void Start()
        {
#if  UNITY_IPHONE || UNITY_ANDRIOD
                Handheld.PlayFullScreenMovie("vvv 1.mp4", Color.black, FullScreenMovieControlMode.CancelOnInput, FullScreenMovieScalingMode.AspectFill);
#else
#endif
        }

}