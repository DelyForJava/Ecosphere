using System.Collections;
using System.Collections.Generic;
using System.Linq;

using UnityEngine;
using UnityEngine.SceneManagement;

public class Client : MonoBehaviour
{
        public Dictionary<string, string> _msgYellow;
        public Dictionary<string, string> _msgGreen;
        public Dictionary<string, string> _msgRed;

        void Awake()
        {
                _msgYellow = new Dictionary<string, string>();
                _msgGreen = new Dictionary<string, string>();
                _msgRed = new Dictionary<string, string>();

        }

        private void Start()
        {
                var activeScene = SceneManager.GetActiveScene();
                var gos = activeScene.GetRootGameObjects();
                var go = gos[0];

                var net = go.GetComponent<Net>();
                if (!net)
                        net = go.AddComponent<Net>();

                //StartCoroutine( LoadGame() );

        }

        void Update()
        {

        }

        AsyncOperation _asyncOperation;

        IEnumerator LoadGame()
        {
                yield return _asyncOperation;
                _asyncOperation = SceneManager.LoadSceneAsync("entertainment", LoadSceneMode.Additive);
                while (!_asyncOperation.isDone)
                        yield return _asyncOperation;

                var game1 = SceneManager.GetSceneByName("entertainment");
                SceneManager.SetActiveScene(game1);

                var firstScene = SceneManager.GetSceneByName("client");
                var gos = firstScene.GetRootGameObjects();
                //foreach (var go in gos)
                //        DontDestroyOnLoad(go);

                yield return _asyncOperation;
        }

}
