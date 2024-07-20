package 일차원배열;

import java.util.Scanner;

public class Ex08배열 {

	public static void main(String[] args) {

		// 1) 입력하는 기능 가져오기
		Scanner sc = new Scanner(System.in);
		// 2) 실제 정답이 저장될 배열 만들기 - answer
		int[] answer = {1, 4, 3, 2, 1}; // 크기 5
		// 3) 사용자가 입력한 정답이 저장될 배열 만들기 - user
		int[] user = new int[5];
		// 4) 사용자로부터 정답 입력받기
		// 입력한 5개의 정답이 user배열 인데스에 저장 되어야함
		
		for(int i = 0; i < user.length; i++) {
			// i : 0 1 2 3 4 
			System.out.print(i+1+"번답 >> ");
			user[i] = sc.nextInt();
		}
		
		// 5) 사용자가 입력한 정답과 실제 정답이 같은지 비교하기
		// 정답이 같으면 'O'를 출력하고 총점에 +20하기
		// 정답이 다르면 'X'를 출력하기
		int sum = 0; // 총합이 저장 변수
		
		for(int i = 0; i < user.length; i++) {
			// i : 0 1 2 3 4
			if(answer[i] == user[i]) {
				System.out.print("O ");
				// 총합 +20
				sum += 20;
			}else {
				System.out.print("X ");
			}
		}
		
		System.out.println("총합 : "+sum);
		
		
		// - 총점이 계산되려면 총점이 저장될 수 있는 공간이
		//   필요하겠죠?
		
		
	}

}
