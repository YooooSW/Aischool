package for문;

import java.util.Scanner;

public class Ex03for문 {

	public static void main(String[] args) {
		
		// 입력받은 정수의 약수를 구하세요
		Scanner sc = new Scanner(System.in);
		System.out.print("정수 입력 : ");
		int num = sc.nextInt();
		
		int sum = 0;
		
		System.out.print(num + "의 약수 : ");
		for(int i=1; i<=num; i++) {
			if(num%i == 0) {
				System.out.print(i + " ");
				sum += i;
			}
		}
		
		System.out.println();
		// 약수의 총합을 구하는 for문을 작성해보자
		System.out.print("총합 : "+sum);
		
		// clean code라는 건 뭐지?
		// - 코드의 길이가 짧다
		// - 유지보수가 용이하다
		// - 가독성이 뛰어나다
		// - 시간복잡도가 줄어든 코드이다
		// : 실행시간
		
		// 약수 절반+1~자기자신-1까지는없다.
		// sum구할때 num/2 해주고 합에 자기자신num 더하기
		// (int i=1; i<=num/2; i++)
		// System.out.print("총합 : "+sum+num);
		

	}

}
