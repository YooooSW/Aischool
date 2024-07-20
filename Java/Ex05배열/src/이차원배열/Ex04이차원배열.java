package 이차원배열;

import java.lang.reflect.Array;

public class Ex04이차원배열 {

	public static void main(String[] args) {

		// 00 01 02 03 04 -> 21 - 25
		// 14 13 12 11 10 -> 26 - 30
		// 20 21 22 23 24 -> 31 - 35
		// 규칙!
		int[][] array = new int[5][5];

		int num = 21;
		// 0,2,4 -------->
		// 1,3   <--------

		for (int j = 0; j < 5; j++) {
			// j : 0 1 2 3 4
			if (j % 2 == 1) {
				// <----
				for(int i = 4; i >= 0; i--) {
					// i : 4 3 2 1 0 
					array[j][i] = num;
					num++;
				}
			} else {
				// ----> 0 1 2 3 4 
				for(int i = 0;  i < 5; i++) {
					array[j][i] = num;
					num++;
				}
			}

		}
		
		for(int j = 0; j < 5; j++) {
			for(int i = 0; i < 5; i++) {
				System.out.print(array[j][i]+" ");
			}System.out.println();
		}
		
		
		
		
		
		
		
		
		
		

	}
	
	
	

}
