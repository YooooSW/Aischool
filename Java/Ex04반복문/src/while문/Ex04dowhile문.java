package while문;

public class Ex04dowhile문 {

	public static void main(String[] args) {
		
		// do-while문
		// : 반복 횟수가 정해져 있지 않을 경우 사용하는 문법
		
		// do {
		// 	   한번은 실행시킬 코드 == true일동안 반복할 코드
		// }while(조건식);
		
		// do-while문과 while무느이 차이점
		int cnt = 6;
		
		// cnt가 5일 동안 반복 - syso("반복");
		while(cnt == 5) {
			System.out.println("반복");
		}
		
		do {
			System.out.println("반복");
		}while(cnt == 5);
		
		
	}

}
