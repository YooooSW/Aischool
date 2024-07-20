package Person;

public class Main {

	public static void main(String[] args) {
		
		//설계도를 사용하는 곳
		// 설계도의이름 레퍼런스형 변수명 = new 설계도의이름();
		Person p1 = new Person();
		//new - 새로운 주소값을 가지는 동적 메모리를 할당
		System.out.println(p1);
		
		// Person - 필드(나이,이름,성별) , 메서드(숨,밥,잠)
		// . << (참조연산자) 
	    p1.name = "조자연";
	    //String name = "조자연";
	    p1.age = 20;
	    p1.gender = "여자";
	    
	    System.out.println(p1.name);
		
	    p1.breathe();
	    p1.eat();
	    p1.sleep();
	    
	    //실습) Person 설계도를 사용해서 p2 생성
	    //p2의 필드를 짝궁의 데이터로 초기화 시킨 후 출력
	    //조자연 : 20 : 여자
	    
		Person p2 = new Person();
		p2.name = "유승완";
		p2.age = 29;
		p2.gender = "남자";
		
		System.out.println(p2.name + " : " + p2.age + " : " + p2.gender);		
		p2.breathe();
		p2.eat();
		p2.sleep();
		
				
	}

}
