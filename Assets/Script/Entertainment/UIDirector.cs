using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public partial class Director
{
        public Transform Canvas;

        public bool PushQueue
        {
                get; set;
        }

        public bool PopQueue
        {
                get; set;
        }

        private Queue<int> _attackQueue;
        public Queue<int> AttackQueue
        {
                get
                {
                        if (_attackQueue == null)
                                _attackQueue = new Queue<int>();
                        return _attackQueue;
                }

        }

        public Vector3 JoystickPosition
        {
                get; set;
        }

        private void updateUI()
        {
                if (PushQueue == true)
                {
                        int ran = Random.Range(1, 4);
                        //if (ran == 3)
                        //        ran = 100;
                        AttackQueue.Enqueue(ran);
                        PushQueue = false;
                }

                if (PopQueue == true)
                {
                        AttackQueue.Dequeue();
                        PopQueue = false;
                }

                if (AttackQueue.Count <= 0)
                        return;

                int headCase = AttackQueue.Peek();
                HeroCase = headCase;
        }

}
