package 이중for문;

import java.util.Scanner;

public class Ex04별찍기 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.print("행 개수 : ");
		int num = sc.nextInt();

		for (int i = num; i >= 1; i--) {
			for (int j = 1; j <= i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}

	}

}


//		for(int j=1; j<=num; j++) {
//			// j : 1 2 3 4 5 6 7
//			// 	   7 6 5 4 3 2 1
//			for(int i=1; i<=num+1-j; i++) {
//				System.out.print("*");
//			}
//			System.out.println();
//		}
		
		// 5 ---> 6 - j
		// 7 ---> 8 - j
		
		
		
		
		
		