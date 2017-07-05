using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class OperationTouch : MonoBehaviour, IPointerDownHandler, IPointerUpHandler, IBeginDragHandler,IDragHandler,IEndDragHandler
{
        public void OnPointerDown(PointerEventData data)
        {
#if UNITY_EDITOR
                joystickTransform.localPosition = data.pressPosition / director.Canvas.localScale.x - new Vector2(0, 100);
                _firstTouchPosition = data.pressPosition / director.Canvas.localScale.x - new Vector2(0, 100);
#else
		joystickTransform.localPosition = data.pressPosition/_canvasScaleX - new Vector2(0, 100);
		_firstTouchPosition = data.pressPosition/_canvasScaleX - new Vector2(0, 100);
#endif

                Debug.Log("On Joystick Pointer Down" + director.HeroCase);
        }

        public void OnPointerUp(PointerEventData data)
        {
                director.IsHeroMoving = false;
                director.IsHeroAttacking = true;
                Debug.Log("On Joystick Pointer Up" + director.HeroCase);
        }

        public void OnBeginDrag(PointerEventData data)
        {
                //director.HeroCase = 1000;
                if (director.IsHeroAttacking)
                        return;

                toggleJoystick(true);
                //director.JoystickPosition = Vector3.zero;
                director.IsHeroMoving = true;
                Debug.Log("On Joystick Drag Begin" + director.HeroCase);

        }
        public void OnEndDrag(PointerEventData data)
        {
                //if (director.IsHeroAttacking)
                //        return;

                knobTransform.localPosition = Vector3.zero;
                director.JoystickPosition = Vector3.zero;

                //director.PushQueue = true;
                toggleJoystick(false);

                Debug.Log("On Joystick Drag End" + director.HeroCase);

        }

        public void OnDrag(PointerEventData data)
        {
                if (director.IsHeroAttacking)
                        return;

#if UNITY_EDITOR
                Vector2 delta = data.position / director.Canvas.localScale.x - _firstTouchPosition -new Vector2(0, 100);
#else
		Vector2 delta = data.position/_canvasScaleX - _firstTouchPosition;
#endif
                delta = Vector2.ClampMagnitude(delta, 80);
                director.JoystickPosition = delta;
                knobTransform.localPosition = delta ;

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

        private void Update()
        {
                
        }

        private void toggleJoystick(bool onOrOff)
        {
                if (onOrOff)
                {
                        backgroundImage.color = new Color(1f, 1f, 1f, 0.2f);
                        knobTransform.GetComponent<Image>().color = new Color(1f, 1f, 1f, 0.2f);
                }
                else
                {
                        backgroundImage.color = new Color(1f, 1f, 1f, 0f);
                        knobTransform.GetComponent<Image>().color = new Color(1f, 1f, 1f, 0f);
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