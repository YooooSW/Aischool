package Person2;

public class Main {

	public static void main(String[] args) {

		Person person1 = new Person();
		person1.setName("홍길동");
		person1.setAge(25);

		Person person2 = new Person("김영희", 27);

		System.out.println("st1객체 학생 이름 : " + person1.getName() + ", 나이 : " + person1.getAge());
		System.out.println("st2객체 학생 이름 : " + person2.getName() + ", 나이 : " + person2.getAge());
		
		//객체배열
		// Person 자료형을 관리하는 배열을 선언 및 생성
		Person[] pArray = new Person[2];
		
		pArray[0] = person1;
		pArray[1] = person2;
		
		for(int i = 0; i < pArray.length; i++) {
			System.out.println(pArray[i].getName());
		}
		

	}

}
