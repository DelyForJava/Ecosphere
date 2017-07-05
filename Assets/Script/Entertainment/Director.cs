using UnityEngine;


public partial class Director : MonoBehaviour
{
        public Transform Camera;

        /* ====================================================================== */
        void  Awake()
        {
                //awakeSpawner();
                var go = GameObject.Find("Spawner");
                if (!go)
                {
                        go = new GameObject();
                        go.name = "Spawner";
                }
                UnityEngine.SceneManagement.SceneManager.MoveGameObjectToScene(go, UnityEngine.SceneManagement.SceneManager.GetSceneByName("entertainment") );
                var spawnerAI = go.GetComponent<SpawnerAI>();
                if (!spawnerAI)
                        spawnerAI = go.AddComponent<SpawnerAI>();
                //Resources.LoadAssetAtPath();
                //spawnerAI.BotCell = Resources.Load<GameObject>("Assets/Dely/Prefab/BotCell.prefab");
                spawnerAI.BotCell = Resources.Load<GameObject>("BotCell");
                spawnerAI.BotNames = new string[] { "Hero" };
                spawnerAI.Director = this;
                //DontDestroyOnLoad(gameObject);
        }

        void Update()
        {
                //updateSpawner();
                //updateUI();
        }

        private void LateUpdate()
        {
                Camera.position = HeroPosition - new Vector3(0,-1,3);
                //Camera.LookAt(HeroPosition);
        }
        /* ------------------------------------------------------------------------------------------------------------ */

}