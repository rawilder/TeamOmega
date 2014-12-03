using UnityEngine;
using System.Collections;

public class AudioManager : MonoBehaviour {


    public  AudioSource bounceWall, changeCode, menuHover, menuSelect;

    public static AudioManager Instance { get; private set; }

	// Use this for initialization
    // Music: http://www.bensound.com
	void Awake () {

        if (this != Instance && Instance != null)
        {
            Destroy(gameObject);
            return;
        }

        Instance = this;
        DontDestroyOnLoad(this);
    }

    void LoadClips()
    {
        Instance = this;

        foreach (AudioSource aSource in this.gameObject.GetComponents<AudioSource>())
        {
            switch (aSource.clip.name)
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
        Instance.bounceWall.Play();
    }
    public void playChangeCode()
    {
        Instance.changeCode.Play();
    }
    public void playMenuHover()
    {
        Instance.menuHover.Play();
    }
    public void playMenuSelect()
    {
        Instance.menuSelect.Play();
    }

	
}
