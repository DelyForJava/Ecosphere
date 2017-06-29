using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public  class BotAI : MonoBehaviour
{
        public Director Director;

        private Clock _clock;
        private Movement _movement;
        private Orientation _orientation;
        private CharacterController _characterController;
        private Animator _animator;

        void Awake()
        {
                _clock = GetComponent<Clock>();
                if (!_clock)
                        _clock = gameObject.AddComponent<Clock>();

                _movement = GetComponent<Movement>();
                if (!_movement)
                        _movement = gameObject.AddComponent<Movement>();

                _orientation = GetComponent<Orientation>();
                if (!_orientation)
                        _orientation = gameObject.AddComponent<Orientation>();

                _characterController = GetComponent<CharacterController>();
                if (!_characterController)
                        _characterController = gameObject.AddComponent<CharacterController>();

                _animator = GetComponentInChildren<Animator>();

        }

        void Update()
        {
                if(gameObject.name=="Hero")
                {
                        var b = Director.IsHeroMoving;
                        var v = Director.HeroVelocityFromJoystick;
                        var t = transform.position + v;
                        Director.HeroPosition = transform.position;

                        _movement.Moving = b;
                        _movement.Velocity = v;

                        _orientation.Changed = b;
                        _orientation.Target =  t;


                        _animator.SetInteger("case", Director.HeroCase);

                        if (Director.AttackQueue.Count <= 0)
                        {
                                _clock.ElapsedTime = 0;
                                return;
                        }

                        var casi = _animator.GetCurrentAnimatorStateInfo(0);
                        //var casi = _animator.GetCurrentAnimatorStateInfo(_animator.GetLayerIndex("Base Layer"));
                        if (_clock.ElapsedTime > casi.length)
                        {
                                Debug.Log("current state consume" + casi.length);
                                _clock.ElapsedTime -= casi.length;
                                Director.PopQueue = true;
                                Director.HeroCase = 0;
                                _animator.SetInteger("case", 0);
                        }
                }
                else
                {

                }

        }

        void LateUpdate()
        {
                
        }

}
