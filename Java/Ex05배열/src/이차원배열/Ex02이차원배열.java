package 이차원배열;

public class Ex02이차원배열 {

	public static void main(String[] args) {

		// 데이터의 입력방향
		// 00 10 20 30 40
		// 01 11 21 31 41
		// ...
		
		int[][] array = new int[5][5];
		
		int num = 21;
		
		for(int j = 0; j < array.length; j++) {
			// j : 0 1 2 3 4
			for(int i = 0; i < array.length; i++) {
				// i : 0 1 2 3 4
				array[i][j] = num;
				num++;
			}
		}
		
		// 데이터
		// 00 01 02 03 04 - 21 26 31 36 41
		// 10 11 12 13 14 - 22 27 32 37 42
		// ...
		
		for(int j = 0; j < array.length; j++) {
			for(int i = 0; i < array.length; i++) {
				System.out.print(array[j][i]+"\t");
			}System.out.println();
		}
		
		
		
		
		
	}

}
