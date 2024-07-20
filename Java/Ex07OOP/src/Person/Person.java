package Person;

public class Person {
	
	//설계도에 해당하는 곳
	//Class == 설계도
	//1)Field(필드)	: 데이터, 변수, 속성, 정보
	// 내가 설계하고자하는 Object가 가질 수 있는 데이터
	//				 Person
	
	// 사람이 가질 수 있는 데이터(변수)?
	// - 나이
	int age;
	// - 성별
	String gender;
	// - 이름
	String name;
	// 필드를 만들 때는 선언만 해준다
	// 값을 정의 해놓으면 문제가 생긴다 Ex) 이름을 특정한 값으로 초기화하면
	//							    >인스턴스는 모두 같은 이름을 가진다.
		
	//2)Method(메서드) : Object의 행위/행동, 기능
	//사람이 할 수 있는 행위/헹동
	
	// - 숨쉬기
	public void breathe() {
		System.out.println("숨을 쉰다 o3o ~ ");
	}
	// - 밥먹기
	public void eat() {
		System.out.println("밥을 먹는다 :q ~");
	}
	// - 잠자기
	public void sleep() {
		System.out.println("잠을 잔다 ㅡ_ㅡzz");
	}
		
	
	

}
