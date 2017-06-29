using UnityEngine;

public class Movement : MonoBehaviour
{
        private CharacterController _characterController;

        public bool Moving
        {
                get; set;
        }

        public Vector3 Velocity
        {
                get; set;
        }

        void Start()
        {
                _characterController = GetComponent<CharacterController>();
                //if (!_characterController)
                //        _characterController = gameObject.AddComponent<CharacterController>();
        }

        // Update is called once per frame
        void Update()
        {
                if (!Moving)
                        return;

                if (_characterController)
                        _characterController.Move(Velocity * Time.deltaTime);
                else
                        transform.Translate(Velocity * Time.deltaTime);
        }

}