
public class Ex03자료형 {

	public static void main(String[] args) {
		
		// 1.논리형
		// 1) boolean : 1byte(8bit - 2^8)
		// true/false 값만 저장할 수 있는 자료형 (참/거짓)
		// 제외한 다른 값을 넣으면 type mismatch error
		
		boolean isHot = true;
		System.out.println(isHot);
		
		// 2. 문자형
		// 1) char : 2byte
		// 문자 한 개를 저장 할 수 있는 자료형
		// ''(작은따옴표)로 감싸줘야 한다.
		// + 유니코드 문자도 저장 할 수 있다		
		char firstName = '조';
		
		// 3. 정수형
		// 1) byte : 1byte
		byte num1 = 127;
		// -128 ~ 127
		// 1byte - 8bit - 2^8 - 256개
		// -128 ~ 127
		
		// 2) short : 2byte(16bit)
		short num2 = 128;
		
		// 3) int : 4byte - 정수형 데이터 타입 중에서 기본으로 사용되는 자료형
		// -21억 ~ 21억
		int num3 = 200;
		// 자주쓰이는 이유 : 기본데이터 타입을 선언을 하면 메모리 공간을 차지함
		// ex) 내가 long을 선언을 하는 순간 메모리 8byte의 공간을 차지
		// byte, short는 너무 작고, long은 너무 커요.. 중간 int
		// - 메모리 공간을 좀더 효율적으로 사용하기 위함
		// 4) long : 8byte
		
		// 4. 실수형 : 소수점이 붙은 숫자들
		// 1) float : 4byte
		float pi2 = 3.141592f; // 에러없애려면 형변환해줘야함 (float)3.141592 or 3.141592f
		// 2) double : 8byte
		double pi1 = 3.141592;
		
		// * 형변환 (Cast/Casting) - convert....
		// 1) 강제형변환(명시적형변환)
		// - 큰 자료형을 작은 자료형의 변수에 담을 때 진행
		// 명시를 하는 이유 : 이 곳에서 손실값이 발생할 수도 있다 라는걸
		// 2) 자동형변환(묵시적형변환)
		// - 작은 자료형을 큰 자료형의 변수에 담을 때 진행
		double pi3 = pi2; // pi2 -> float
		
		// + char에 문자 한개도 담을 수 있고, 유니코드도 가능해요
		// 97이라는 십진수(숫자, 정수형) ----> a
		
		int num = 97;
		// char자료형으로 형변환 해서 출력했을 때 a라는 문자 한개가
		// console보이는지 확인해보자 (ch라는 변수명)
		
		char ch = (char)(num);
		System.out.println(ch); // a
		
		// +만약에 문자 여러개를 저장하고 싶다면?
		// 래퍼런스형 데이터 타입
		// String : 문자열을 저장할 수 있는 데이터 타입
		
		// 나의 이름을 저장 할 수 있는 name이라는 변수를 만들어보자
		String name = "조자연";
		// ""(큰따옴표)로 데이터를 감싸줘서 대입한다
		System.out.println(name);
		
		// 주소값 : 데이터가 저장되어있는 장소
		// 주소값을 Reference : 참조 하는 데이터 타입

	}

}
