package MusicPlayer;

import java.util.ArrayList;

import javazoom.jl.player.MP3Player;

public class Controller {

	MP3Player mp3 = new MP3Player();

	// 노래가 재생중인지 아닌지 확인 후 노래를 멈추는 기능
	// musicStop() : void
	public void musicStop() {
		if (mp3.isPlaying()) {
			mp3.stop();
		}
	}

	// 이전곡을 재생하는 기능
	public int preMusic(int index, ArrayList<Music> musicList) {

		index--;

		if (index == -1) {
			index = musicList.size() - 1;
		}
		mp3.play(musicList.get(index).getPath());
		
		return index;
	}

	// 다음곡을 재생하는 기능
	public int nextMusic(int index, ArrayList<Music> musicList) {

		index++;
		// 9 10
		if (index == musicList.size()) {
			index = 0;
		}
		mp3.play(musicList.get(index).getPath());
		
		return index;
	}

}
