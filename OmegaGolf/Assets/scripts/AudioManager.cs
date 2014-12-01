using UnityEngine;
using System.Collections;

public class AudioManager : MonoBehaviour {


    private AudioSource bounceWall, changeCode, menuHover, menuSelect;

    public static AudioManager Instance { get; private set; }

	// Use this for initialization
    // Music: http://www.bensound.com
	void Awake () {
        if (Instance != null)
            Destroy(gameObject);
        Instance = this;
        DontDestroyOnLoad(this);
        foreach(AudioSource aSource in GetComponents<AudioSource>())
        {
            switch(aSource.clip.name)
            {
                case "changeCode":
                    changeCode = aSource;
                    break;
                case "bounceWallHit":
                    bounceWall = aSource;
                    break;
                case "menuHover":
                    menuHover = aSource;
                    break;
                case "menuSelect":
                    menuSelect = aSource;
                    break;
                default:
                    break;
            }
        }
	}


    public void playBounceWall()
    {
        bounceWall.Play();
    }
    public void playChangeCode()
    {
        changeCode.Play();
    }
    public void playMenuHover()
    {
        menuHover.Play();
    }
    public void playMenuSelect()
    {
        menuSelect.Play();
    }

	
}
