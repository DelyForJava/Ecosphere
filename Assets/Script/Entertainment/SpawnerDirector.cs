using UnityEngine;

public partial class Director
{
        // -----------------------------------------------  Bot ----------------------------------- //
        public int HeroCase
        {
                set; get;
        }

        // -----------------------------------------------  Bot ----------------------------------- //

        private Vector3 _heroVelocityFromJoystick;
        public Vector3 HeroVelocityFromJoystick
        {
                get
                {
                        var s = new Vector3(JoystickPosition.x, 0, JoystickPosition.y);
                        s.Normalize();
                        _heroVelocityFromJoystick = s * 5;
                        return _heroVelocityFromJoystick;
                }
                set
                {
                        _heroVelocityFromJoystick = value;
                }
        }

        public bool IsHeroMoving
        {
                get;set;
        }

        public bool IsHeroAttacking
        {
                get;set;
        }
        //private bool _isHeroMoving;
        //public bool IsHeroMoving
        //{
        //        get
        //        {
        //                if (JoystickPosition != Vector3.zero)
        //                        _isHeroMoving = true;
        //                else
        //                        _isHeroMoving = false;

        //                return _isHeroMoving;
        //        }
        //        set
        //        {
        //                _isHeroMoving = value;
        //        }

        //}

        public Vector3 HeroPosition
        {
                get;set;
        }

}