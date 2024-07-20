package 메서드;

public class Ex01매o리o {

	public static void main(String[] args) {

		// 매개변수 있고, 리턴타입(데이터 타입이 명시)이 있는 메서드
		minus(10,5);
		System.out.println(minus(10,5));
		
	}// main 밖 - 메서드 정의
	
	// 1) public : 공공의 
	// - 클래스 내/외부에서 자유로운 접근을 할 수 있도록 도와주는 제한자
	// (private, protected, default)
	// 2) static : 저장소
	// 메모리 공간이 굉장히 작기 때문에 함부러 사용하지 말 것!
	// 3) int : 리턴타입
	// 내가 메서드를 사용했을 때 돌려받는 결과값에 대한 데이터 타입
	// 4) 메서드명(호출명)
	// 5) 매개변수 
	// - 선언만
	// - 매개변수 이름은 구분할 수 있는 이름으로 지어주면 된다
	public static int minus(int num1, int num2) {
		// {} (body) == 메서드 로직
//		int result = num1 - num2;
//		return result;
		return num1 - num2;
		// return : 리턴타입에 데이터 타입이 명시되어있으면
		// 반드시 메서드 로직 안에 키워드가 포함되어있어야한다!
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
