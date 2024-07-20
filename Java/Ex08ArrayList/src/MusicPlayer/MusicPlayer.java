package MusicPlayer;

import java.util.ArrayList;
import java.util.Scanner;

import javazoom.jl.player.MP3Player;

public class MusicPlayer {

	public static void main(String[] args) {

		// 1) 외부 라이브러리 적용하기 - player.jar

		MP3Player mp3 = new MP3Player();
		Controller con = new Controller();

		// mp3.play("C:\\Users\\user\\Desktop\\music\\Mena Massoud, Naomi Scott - A
		// Whole New World.mp3");

		// 경로 + 파일명 + 확장자 : path
		// mp3.stop();

		// 노래 한곡
		// 가수, 노래제목, 플레이시간, 경로
		// -> Music

		// Music 클래스를 사용해서 10개의 객체생성을 진행해보자
		// music1 ~ music10

		String defaultPath = "C:\\Users\\user\\Desktop\\music\\";
		Music m1 = new Music(defaultPath + "Anne Marie - 2002.mp3", "2002", "Anne Marie", 257);
		Music m2 = new Music(defaultPath + "Billie Eilish - bad guy.mp3", "bad guy", "Billie Eilish", 277);
		Music m3 = new Music(defaultPath + "Carmen Twillie, Lebo M. - Circle of Life.mp3", "Circle of Life",
				"Carmen Twillie, Lebo M.", 257);
		Music m4 = new Music(defaultPath + "CHUNG HA - 벌써 12시.mp3", "벌써 12시", "CHUNG HA", 182);
		Music m5 = new Music(defaultPath + "Idina Menzel - Let It Go.mp3", "Let It Go", "Idina Menzel", 126);
		Music m6 = new Music(defaultPath + "Itzy - Dalla Dalla.mp3", "Dalla Dalla", "Itzy", 233);
		Music m7 = new Music(defaultPath + "JENNIE - SOLO.mp3", "SOLO", "JENNIE", 198);
		Music m8 = new Music(defaultPath + "Mena Massoud, Naomi Scott - A Whole New World.mp3",
				"Mena Massoud, Naomi Scott", "A Whole New World", 222);
		Music m9 = new Music(defaultPath + "Rain - 깡.mp3", "깡", "Rain", 237);
		Music m10 = new Music(defaultPath + "TWICE - FANCY.mp3", "FANCY", "TWICE", 114);

		// 1) Music 자료형을 관리하는 ArrayList를 하나 만들어주세요
		// musicList라는 이름으로 만들어주세요

		ArrayList<Music> musicList = new ArrayList<>();

		// 2) music1 ~ music10 ArrayList에 담아주기
		musicList.add(m1);
		musicList.add(m2);
		musicList.add(m3);
		musicList.add(m4);
		musicList.add(m5);
		musicList.add(m6);
		musicList.add(m7);
		musicList.add(m8);
		musicList.add(m9);
		musicList.add(m10);

		// System.out.println(musicList.get(0).getSinger());

		Scanner sc = new Scanner(System.in);

		// 현재 어떤노래가 재생인지 저장되는 변수 index
		int index = 0;

		while (true) {
			System.out.print("[1]재생 [2]정지 [3]이전곡 [4]다음곡 [5]종료 >> ");
			int select = sc.nextInt();
			if (select == 1) {
				// 노래 재생
				// console
				// 노래 제목 - 가수 이름, 4분 30초

				// 첫번째 노래가 재생될 수 있도로 만들어주자!
				mp3.play(musicList.get(index).getPath());

				// 출력문 현재 재생중인 노래에 대한 정보를 보여주자
//            System.out.print(musicList.get(index).getTitle()+"-");
//            System.out.print(musicList.get(index).getSinger()+",");
//            System.out.print(musicList.get(index).getPlayTime()/60+"분");
//            System.out.print(musicList.get(index).getPlayTime()%60+"초");
//            System.out.println();

				musicList.get(index).showMusic();

			} else if (select == 2) {
				// 노래 정지 - stop

				// musicStop();
				con.musicStop();
				// NullPointerException

			} else if (select == 3) {
				// 노래 이전곡

				// 현재 재생중인 노래가 있으면, 멈추고
				// isPlaying - 노래가 재생 : true, 멈춰 : false
				con.musicStop();
				// 현재 인덱스를 기준으로 -1에 위치해 있는 노래가 재생 되도록 만들자
				// 단, 첫번째 곡에서 (index가 0일때) 이전곡을 누르면
				// 마지막 곡이 실행될 수 있도록 만들자

				index = con.preMusic(index, musicList);

				// 출력문 현재 재생중인 노래에 대한 정보를 보여주자
//            System.out.print(musicList.get(index).getTitle()+"-");
//            System.out.print(musicList.get(index).getSinger()+",");
//            System.out.print(musicList.get(index).getPlayTime()/60+"분");
//            System.out.print(musicList.get(index).getPlayTime()%60+"초");
//            System.out.println();
				musicList.get(index).showMusic();
				// 마찬가지로 곡이 실행될때 노래에 대한 정보가 출력되도록 만들자
				// 노래 제목 - 가수 이름, 4분 30초

			} else if (select == 4) {
				// 다음곡 재생
				con.musicStop();
				// 현재 재생중인 노래가 있으면, 멈추고

				index = con.nextMusic(index, musicList);
				// 출력문 현재 재생중인 노래에 대한 정보를 보여주자
//            System.out.print(musicList.get(index).getTitle()+"-");
//            System.out.print(musicList.get(index).getSinger()+",");
//            System.out.print(musicList.get(index).getPlayTime()/60+"분");
//            System.out.print(musicList.get(index).getPlayTime()%60+"초");
//            System.out.println();
				musicList.get(index).showMusic();

				// 현재 인덱스를 기준으로 +1에 위치해 있는 노래가 재생 되도록 만들자
				// 단, 마지막 곡에서 (index가 9일때) 다음곡을 누르면
				// 첫번째 곡이 실행될 수 있도록 만들자

				// 마찬가지로 곡이 실행될때 노래에 대한 정보가 출력되도록 만들자
				// 노래 제목 - 가수 이름, 4분 30초
			} else {
				System.out.println("프로그램 종료");
				break;
			}
		}

	}
}