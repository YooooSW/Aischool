package 저금통;

public class PiggyBank {

	// 저금통 설계도
	// 1) 필드 - money
	private int money;
	private String name;
	// private 접근제한자
	// : 필드를 클래스 외부에서 접근하지 못하도록 도와주는 제한자
	// private 으로 되어있는 필드는 존재하고 있는 클래스 내부에 메서드를 통해서만
	// 접근이 가능하다

	// PiggyBank 클래스에 필드에 접근할 수 있는 메서드를 만들어줘야한다!
	// -- 생성자(constructor)
	public PiggyBank(int money, String name) {
		// - 기본 생성자 : 클래스를 만들 때 생략되어있다
		// 1. 객체 생성을 할 수 있다.
		// 2. 필드를 초기화시키는 기능을 가질 수 있다.
		this.money = money;
		this.name = name;
	}

	// 생성자의 특징 *****
	// 1.생성자도 메서드 - ()
	// 2.생성자는 리턴타입이 없다(void가 아닌 없다!)
	// 3.기본생성자는 생략되어 있다.
	// 4.새로운 생성자를 만들면
	// >> 필드를 초기화 시키는 생성자를 만들면
	// >> 기본 생성자는 사용할 수 없는 상태가 된다.
	// >> 기본 생성자 또한 사용하고 싶으면 오버로딩 해주면 된다
	// 5.생성자의 이름은 클래스의 이름과 같다.
	public PiggyBank() {
		//기본 생성자
	}

	// getter / setter
	// getter : 필드에 있는 데이터를 결과값으로 돌려주는 메서드
	// setter : 필드에 있는 값을 수정하고 싶을 때 사용하는 메서드
	public int getMoney() {
		// 현재 필드에 있는 값을 결과로 반환
		return money;
	}
	
	public String getName() {
		return name;
	}
	public void setMoney(int money) {
		// 매개변수 money : 어떤 값으로 수정할건지에 대한 데이터
		this.money = money;
	}
	public void SetName(String name) {
		this.name = name;
	}

	// 2) 메서드 - 입금, 출금, 잔액
	public void deposit(int money) {
		// 돈을 입금
		// this << 현재 클래스를 지칭하는 키워드
		// 필드 안의 변수를 지칭하기 위해서 사용
		this.money += money;
	}

	public void withdraw(int money) {
		// 돈을 인출
		this.money -= money;
	}

	public void showMoney() {
		// 현재 잔액 출력
		System.out.println(money + "원");
	}

}
