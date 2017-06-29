using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VideoAI : MonoBehaviour
{
        void Start()
        {
                Handheld.PlayFullScreenMovie("vvv 1.mp4", Color.black, FullScreenMovieControlMode.CancelOnInput, FullScreenMovieScalingMode.AspectFill);
        }

}