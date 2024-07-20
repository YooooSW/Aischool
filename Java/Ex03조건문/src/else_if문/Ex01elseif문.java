package else_if문;

public class Ex01elseif문 {

	public static void main(String[] args) {
		
		// if-elseif-else문
		// 두 개 이상의 조건식을 판별해서 실행코드를 동작 시키는 문법
		
		// if(조건식1){
		// 		조건식1이 true일 경우 실행시킬 코드
		// }else if(조건식2){
		// 		조건식2이 true일 경우 실행시킬 코드
		// }else{
		// 		조건식1, 2..을 모두 만족하지 않았을 경우
		//		실행시킬 코드
		// 		- 필수는 아님...
		// }
		
		int num = 0;
		// 짝수인지, 홀수인지, 0인지
		if(num == 0) {
			System.out.println("0입니다.");
		}else if(num % 2 == 1){
			System.out.println("홀수 입니다.");
		}else {
			System.out.println("짝수 입니다.");
		}
		

	}

}
