package 동물;

public class Bird extends Animal{

	// 성별, 밥먹기, 잠자기, 움직이기
	// - Animal
	
	// + 알을 낳는다.
	public void egg() {
		System.out.println("알을 낳는다.");
	}

	@Override
	public void move() {
		System.out.println("난다.");
	}
	
	// Animal 물려주고있는 move를 "난다"
	// 실제로 물려받고 있는 메서드는 "움직인다"
	// 조류가 움직이는건 맞지만 안에 로직이 "난다"로 바뀌게 만들어줘야한다!
	
	// 오버라이딩(Override) : 재정의
	// 상속 관계에서 같은 이름의 메서드를 재정의(로직을 재정의)할 수 있다.
	// 단, 리턴타입, 매개변수의 형태가 바뀌면 안된다!
	
	
	// 오버로딩(Overloading) : 중복정의
	// 같은 클래스 내에서 같은 이름의 메서드를 중복정의 하는 것
	// 단, 매개변수의 형태가 달라야한다.
	
	
	
	
	
}
