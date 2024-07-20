package 일차원배열;

import java.util.Random;

public class Ex06배열 {

	public static void main(String[] args) {

		// 로또 문제 : 중복 값 없이 배열에 랜덤한 값으로
		//           초기화 될 수있게 만들어 보자!
		
		// 랜덤한 값이 인덱스로 들어오면 이전에 인덱스에 
		// 들어있는 값들 중에서 중복되는 건(같은 것)없는지
		// 확인을 해보자!
		
		// 근데? 중복된값을 만나면 다시 현재 위치(인덱스)에서
		// 다른 값이 들어오도록 만들자!
		
		
		Random rd = new Random();
		int[] lotto = new int[5];
		
		for(int j = 0; j < 5; j++) {
			// 0번 인덱스에 값을 할당
			lotto[j] = rd.nextInt(10)+1;
			// 이전에 인덱스에 같은 값이 있는지 확인
			for(int i = 0 ; i < j; i++) {
				if(lotto[j] == lotto[i]) {

					j--;
					
				}
			}
		}
		
		
		for(int i = 0; i < lotto.length; i++) {
			System.out.print(lotto[i]+" ");
		}
		
		
		
		
//		// 1번 인덱스에 값을 할당
//		lotto[1] = rd.nextInt(10)+1;
//		// 0번 인덱스의 값과 같은지 확인
//		for(int i = 0; i < 1; i++) {
//			// i : 0
//			if(lotto[1] == lotto[i]) {
//				// 다시 1번인덱스에 값을 할당할 수 있도로 코드
//			}
//		}
//		// 2번 인덱스에 값을 할당
//		lotto[2] = rd.nextInt(10)+1;
//		// 0, 1번 인덱스의 값과 같은지 확인
//		for(int i = 0; i < 2; i++) {
//			if(lotto[2] == lotto[i]) {
//				// 다시 2번인덱스에 값을 할당할 수 있도로 코드
//			}
//		}
//		
//		// 3
//		lotto[3] = rd.nextInt(10)+1;
//		for(int i = 0; i < 3; i++) {
//			// i : 0 1 2
//			if(lotto[3] == lotto[i]) {
//				// 다시 2번인덱스에 값을 할당할 수 있도로 코드
//			}
//		}
//		
//		lotto[4] = rd.nextInt(10)+1;
//		for(int i = 0; i < 4; i++) {
//			// i: 0 1 2 3
//			if(lotto[4] == lotto[i]) {
//				// 다시 4번인덱스에 값을 할당할 수 있도록 코드
//			}
//		}
//		
//		
		
		
		
		
	
	}

}
