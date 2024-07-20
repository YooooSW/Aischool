package while문;

import java.util.Random;
import java.util.Scanner;

public class Ex09예제 {

	public static void main(String[] args) {
		
		// 랜덤으로 숫자를 가져와주는 기능을 한번 사용해보자
		Random rd = new Random();
		Scanner sc = new Scanner(System.in);
		
		int randomNumber = rd.nextInt(10)+1;
		// bound : 10 --> 0 ~ 9
		// 0 1 2 3 4 5 6 7 8 9
		// 1 2 3 4 5 6 7 8 9 10
		// 1~10 --> rd.nextInt(10)+1 또는 (randomNumber+1) 해주기
		System.out.println(randomNumber);
		
		
		System.out.println("===Plus Game===");
		while(true) {
			int num1 = rd.nextInt(10)+1;
			int num2 = rd.nextInt(10)+1;
			System.out.print(num1+"+"+num2+"=");
			int answer = sc.nextInt();
			if(num1+num2 == answer) {
				System.out.println("Success");
			}else {
				System.out.println("Fail");
				System.out.print("계속하시겠습니까? >> ");
				String select1 = sc.next();
				if(select1.equals("N") || select1.equals("n")) {
					System.out.println("종료합니다.");
					break;
				}else {
					continue;
				}
			}
		}

	}

}
