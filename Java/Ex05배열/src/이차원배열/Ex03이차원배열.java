package 이차원배열;

public class Ex03이차원배열 {

	public static void main(String[] args) {

		int[][] array = new int[5][5];
		
		int num = 21;
		
		// 데이터 입력
		// 21 22 23 24 25 num
		// 04 14 24 34 44 index
		// 앞에 인덱스 값은 0 ~ 4 +1로 변하고 있음
		// 한 줄입력하고나서 뒤에 인덱스 값은 4 ~ 0 -1로 변함.
		
		for(int j = 4; j >= 0; j--) {
			// j : 4 3 2 1 0
			for(int i = 0; i < array.length; i++) {
				array[i][j] = num;
				num++;
			}
		}
		
		for(int j = 0; j < array.length; j++) {
			for(int i = 0; i < array.length; i++) {
				System.out.print(array[j][i]+ " ");
			}System.out.println();
		}
		
		
		
		
		
	}

}
