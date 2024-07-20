package while문;

import java.util.Random;
import java.util.Scanner;

public class Ex10예제 {

	public static void main(String[] args) {
		
		// 1) 랜덤, 입력하는 기능을 가져오기
		Random rd = new Random();
		Scanner sc = new Scanner(System.in);
		
		System.out.println("======1부터 100 사이 숫자 맞추기 게임!======");
		int num = rd.nextInt(100)+1;
		while(true) {
			System.out.print("1과 100사이의 정수를 입력하세요 >> ");
			int answer = sc.nextInt();
			if(num == answer) {
				System.out.println(num + " 정답입니다!!");
				break;
			}else if(num < answer) {
				System.out.println("더 작은 수로 다시 시도 해보세요");
			}else {
				System.out.println("더 큰 수로 다시 시도 해보세요");
			}
		}

	}

}
