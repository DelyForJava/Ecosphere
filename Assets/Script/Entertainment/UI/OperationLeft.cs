using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class OperationLeft : MonoBehaviour, IPointerDownHandler, IPointerUpHandler, IBeginDragHandler,IDragHandler,IEndDragHandler
{
        public void OnPointerDown(PointerEventData data)
        {
#if UNITY_EDITOR
                joystickTransform.localPosition = data.pressPosition / director.Canvas.localScale.x;
                _firstTouchPosition = data.pressPosition / director.Canvas.localScale.x;
#else
		joystickTransform.localPosition = data.pressPosition/_canvasScaleX;
		_firstTouchPosition = data.pressPosition/_canvasScaleX;
#endif

                director.JoystickPosition = Vector3.zero;

                toggleJoystick(true);
                director.HeroCase = 1000;
                Debug.Log("On Joystick Pointer Down" + director.HeroCase);
        }

        public void OnPointerUp(PointerEventData data)
        {
                toggleJoystick(false);
                knobTransform.localPosition = Vector3.zero;
                director.JoystickPosition = Vector3.zero;
                director.HeroCase = 0;
                Debug.Log("On Joystick Pointer Up" + director.HeroCase);

        }

        public void OnBeginDrag(PointerEventData data)
        {


        }
        public void OnEndDrag(PointerEventData data)
        {
        }

        public void OnDrag(PointerEventData data)
        {
#if UNITY_EDITOR
                Vector2 delta = data.position / director.Canvas.localScale.x - _firstTouchPosition;
#else
		Vector2 delta = data.position/_canvasScaleX - _firstTouchPosition;
#endif
                delta = Vector2.ClampMagnitude(delta, 80);
                director.JoystickPosition = delta;
                knobTransform.localPosition = delta;

        }

        void Awake()
        {
                joystickTransform = transform.Find("Joystick");
                backgroundImage = transform.Find("Joystick/Background").GetComponent<Image>();
                knobTransform = transform.Find("Joystick/Knob");
                toggleJoystick(false);
        }

        void Start()
        {
#if UNITY_EDITOR

#else
		_canvasScaleX = director.Canvas.localScale.x;
#endif
        }

        private void toggleJoystick(bool onOrOff)
        {
                if (onOrOff)
                {
                        backgroundImage.color = new Color(1f, 1f, 1f, 0.7f);
                        knobTransform.GetComponent<Image>().color = new Color(1f, 1f, 1f, 0.7f);
                }
                else
                {
                        backgroundImage.color = new Color(1f, 1f, 1f, 0.1f);
                        knobTransform.GetComponent<Image>().color = new Color(1f, 1f, 1f, 0.1f);
                }
        }

        public Director director;

        private Transform joystickTransform;
        private Image backgroundImage;
        private Transform knobTransform;

        private Vector2 _firstTouchPosition;

#if UNITY_EDITOR
#else
	private float _canvasScaleX;
#endif

}