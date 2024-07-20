package 이차원배열;

public class Ex01이차원배열 {

	public static void main(String[] args) {

		// 21 ~ 45 : array
		
		int[][] array = new int[5][5];
		
		// 값을 입력
		int num = 21;
		
		for(int j = 0; j < array.length; j++) {
			//  j : 0 1 2 3 4 
			for(int i = 0; i < array.length; i++) {
				// i: 0 1 2 3 4
				array[j][i] = num;
				num++;
			}
		}
		
		
		// 값을 출력
		for(int j = 0; j < array.length; j++) {
			// j : 0 1 2 3 4
			for(int i = 0; i < array.length; i++) {
				// i : 0 1 2 3 4
				System.out.print(array[j][i]+"\t");
			}System.out.println();
		}
		
		
		
		
		
		
		
		
		
		
		
	}

}
