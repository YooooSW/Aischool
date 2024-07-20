package StudentScore;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		StudentScore[] score = new StudentScore[3];

		for (int i = 0; i < score.length; i++) {
			System.out.print(i + 1 + "번째 학생의 이름을 입력하세요. >> ");
			String name = sc.next();
			System.out.print(i + 1 + "번째 학생의 Java점수를 입력하세요. >> ");
			int java = sc.nextInt();
			System.out.print(i + 1 + "번째 학생의 Web점수를 입력하세요. >> ");
			int web = sc.nextInt();
			System.out.print(i + 1 + "번째 학생의 Android점수를 입력하세요. >> ");
			int android = sc.nextInt();

			score[i] = new StudentScore(name, java, web, android);
			System.out.println();
		}

		for (int i = 0; i < score.length; i++) {
			System.out.println(score[i].getName() + "님의 총점은 "
					+ score[i].ScoreSum() + "점, 평균은 " + score[i].ScoreAvg()+ "점 입니다.");
		}

		sc.close();
	}

}