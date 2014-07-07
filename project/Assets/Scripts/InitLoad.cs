using UnityEngine;
using System.Collections;

public class InitLoad : MonoBehaviour {

	void Start()
	{
		#if UNITY_ANDROID && !UNITY_EDITOR
		WaitForOuyaSdk();
		#endif
		Application.LoadLevel("Level");
	}
	
	#if UNITY_ANDROID && !UNITY_EDITOR
	IEnumerable WaitForOuyaSdk()
	{
		while (!OuyaSDK.isIAPInitComplete())
		{
			yield return null;
		}
	}
	#endif
}
