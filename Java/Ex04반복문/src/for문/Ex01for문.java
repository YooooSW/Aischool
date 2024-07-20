package for문;

public class Ex01for문 {

	public static void main(String[] args) {
		
		
		// 1) for문을 사용하여 21에서 57까지 출력하시오
		for(int i=21; i<=57; i++) {
			System.out.print(i+" ");
		}
		
		System.out.println();
		// 2) for문을 사용하여 96에서 53까지 출력하시오.
		for(int i=96; i>=53; i--) {
			System.out.print(i+" ");
		}
		
		System.out.println();
		// 3) for문을 사용하여 21에서 57까지의 수 중
		// 	  홀수만 출력하시오.
		
		// 홀수인가를 판단해서 맞으면 출력
		// build up
		for(int i=21; i<=57; i++) {
			if(i%2==1) {
				System.out.print(i+" ");
			}
		}
		
		System.out.println();
		// 	  보폭(반복후작업)조정
		for(int i=21; i<=57; i+=2) {
			// i : 21 23 25 27 .....
			System.out.print(i+" ");
		}
		
		
		
		

	}

}
