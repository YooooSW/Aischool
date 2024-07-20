package 이중for문;

public class Ex03별찍기 {

	public static void main(String[] args) {

		int n = 5;
		for (int i = 1; i <= n; i++) {
			for (int j = 1; j <= i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		
		
		
		System.out.println();

		
		
		// 역삼각형
		for (int i = n; i >= 1; i--) {
			for (int j = 1; j <= i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		
		
		
		System.out.println();
		
		

		// 정삼각형
//		for (int i = 1; i <= n; i++) {
//			for (int j = n; j > i; j--) {
//				System.out.print(" ");
//			}
//			for (int k = 1; k <= (2 * i - 1); k++) {
//				System.out.print("*");
//			}
//			System.out.println();
//		}

	}

}
