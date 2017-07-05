using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VideoAI : MonoBehaviour
{
        void Start()
        {
                Handheld.PlayFullScreenMovie("launch.mp4", Color.black, FullScreenMovieControlMode.CancelOnInput, FullScreenMovieScalingMode.AspectFill);

//#if  UNITY_IPHONE || UNITY_ANDRIOD
//                Handheld.PlayFullScreenMovie("launch.mp4", Color.black, FullScreenMovieControlMode.CancelOnInput, FullScreenMovieScalingMode.AspectFill);
//#else
//#endif
        }

}