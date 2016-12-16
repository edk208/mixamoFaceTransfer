using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;

public class SetWeights : MonoBehaviour {
	int blendShapeCount;
	SkinnedMeshRenderer skinnedMeshRenderer;
	Mesh skinnedMesh;
	int incrementor = 0;
	public Transform head;
	public Transform lefteye;
	public Transform righteye;
	public Transform ltarget;
	public Transform rtarget;

	//public TextAsset faceTextFile;
	//private string theWholeFileAsOneLongString;
	private List<string> eachLine;
	private List<string> inputs = new List<string>();
	public string directoryPath;

	// Use this for initialization
	void Awake ()
	{
		skinnedMeshRenderer = GetComponent<SkinnedMeshRenderer> ();
		skinnedMesh = GetComponent<SkinnedMeshRenderer> ().sharedMesh;
	}
	// Use this for initialization
	void Start () {
		readFiles ();

		InvokeRepeating ("setBlendShapes", 0, 0.033f); //Time is 0.033 so that it will do 30 faces in 1 second
		/*theWholeFileAsOneLongString = faceTextFile.text;

		eachLine = new List<string>();
		eachLine.AddRange(theWholeFileAsOneLongString.Split("\n"[0]) );

		blendShapeCount = skinnedMesh.blendShapeCount; 

		for (int i = 0; i < blendShapeCount; i++) {
			skinnedMeshRenderer.SetBlendShapeWeight (i, float.Parse(eachLine[i]));
		}*/
	}
	
	// Update is called once per frame
	void Update () {
	
	}
		
	//Reads in all the values into long strings that are saved into the inputs List. 
	private void readFiles()
	{
		var info = new DirectoryInfo (directoryPath);
		var fileInfo = info.GetFiles ();
		foreach (FileInfo file in fileInfo)
		{
			string f = file.FullName;
			if(f.EndsWith(".txt"))
			{
				inputs.Add (File.ReadAllText (f));
			}
		}
	}

	//Uses incrementor, don't change incrementor variable in any other methods.
	//Goes through a single file saved in the inputs List. Will work down input list if called 
	//in succession
	private void setBlendShapes()
	{
		if (incrementor < inputs.Count) {
			eachLine = new List<string> ();
			eachLine.AddRange (inputs [incrementor].Split ("\n" [0]));

			blendShapeCount = skinnedMesh.blendShapeCount; 
			for (int i = 0; i < blendShapeCount; i++) {
				skinnedMeshRenderer.SetBlendShapeWeight (i, float.Parse (eachLine [i]));
			}
			incrementor++;
			//Debug.Log (incrementor);

			Vector3 hr = new Vector3(Mathf.Rad2Deg*float.Parse(eachLine[50]),Mathf.Rad2Deg*float.Parse(eachLine[51]),Mathf.Rad2Deg*float.Parse(eachLine[52]));
			head.rotation = Quaternion.Euler (hr);
			ltarget.localPosition = new Vector3(-1*(float.Parse(eachLine[53])-0.13f),float.Parse(eachLine[54])-0.1f,float.Parse(eachLine[55])*-1);
			rtarget.localPosition = new Vector3(-1*(float.Parse(eachLine[56])+0.13f),float.Parse(eachLine[57])-0.1f,float.Parse(eachLine[58])*-1);
			lefteye.LookAt (ltarget);
			righteye.LookAt (rtarget);
		}
	}
}
