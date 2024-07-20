package while문;

public class Ex연습 {

	public static void main(String[] args) {

		for (int i = 65; i <= 90; i++) {
			System.out.print((char) i + " ");
		}

		// 등차수열
		int sum = 0;
		for (int i = 1; i <= 77; i++) {
			sum += (78 - i) * i;
		}
		System.out.println(sum);

	}

}
