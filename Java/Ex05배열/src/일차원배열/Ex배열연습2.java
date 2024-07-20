package 일차원배열;

import java.util.Random;
import java.util.Scanner;

public class Ex배열연습2 {
	public static void main(String[] args) {
				
		// 사용자에게 입력받아 배열의 인덱스의 수만큼 별 출력

		Scanner sc = new Scanner(System.in);
		int[] num = new int[5];

		for (int i = 0; i < 5; i++) {
			System.out.print(i + "번째 별의 수 : ");
			num[i] = sc.nextInt();
		}

		for (int i = 0; i < num.length; i++) {
			System.out.print(num[i] + ":");
			for (int j = 0; j < num[i]; j++) {
				System.out.print("* ");
			}
			System.out.println();
		}

	}
}
