using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public  class SpawnerAI : MonoBehaviour
{
        public Director Director;

        public GameObject BotCell;

        public string[] BotNames;

        /* ====================================================================== */
        void Awake()
        {

        }

        void Start()
        {
                foreach (var name in BotNames)
                {
                        var go = Instantiate(BotCell);
                        go.name = name;
                        go.transform.parent = transform;

                        var botAI = go.GetComponent<BotAI>();
                        if (!botAI)
                                botAI = go.AddComponent<BotAI>();

                        botAI.Director = Director;
                        BotsYellow.Add(name, go);
                }

        }

        void Update()
        {
                foreach (var bot in BotsGreen)
                {
                        var value = bot.Value;
                        //value.GetComponent<BotAI>().UpdateAI(IsHeroMoving, HeroVelocityFromJoystick);
                }

                if (BotsYellow.Count > 0)
                {
                        BotsGreen.Union(BotsYellow);
                        BotsYellow.Clear();
                }

                if (BotsRed.Count > 0)
                {
                        BotsGreen.Except(BotsRed);
                        BotsRed.Clear();
                }
        }

        // -----------------------------------------------  Bot ----------------------------------- //
        public int BotCase
        {
                set; get;
        }

        private Dictionary<string, GameObject> botsYellow;
        public Dictionary<string, GameObject> BotsYellow
        {
                get
                {
                        if (botsYellow == null)
                                botsYellow = new Dictionary<string, GameObject>();
                        return botsYellow;
                }

        }

        private Dictionary<string, GameObject> botsGreen;
        public Dictionary<string, GameObject> BotsGreen
        {
                get
                {
                        if (botsGreen == null)
                                botsGreen = new Dictionary<string, GameObject>();
                        return botsGreen;
                }

        }

        private Dictionary<string, GameObject> botsRed;
        public Dictionary<string, GameObject> BotsRed
        {
                get
                {
                        if (botsRed == null)
                                botsRed = new Dictionary<string, GameObject>();
                        return botsRed;
                }

        }
        // -----------------------------------------------  Bot ----------------------------------- //

}
