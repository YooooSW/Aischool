package 월급계산프로그램;

public abstract class Employee {
	
	String empno;
	String name;
	int pay;
	
	public Employee(String empno, String name, int pay) {
		this.empno = empno;
		this.name = name;
		this.pay = pay;
	}
	
	public abstract int getMoneyPay();
	
	
	public String print() {
		return empno+" : "+name+" : "+ pay;
	}
	
	public String print(int month) {
		return empno+" : "+name+" : "+ pay + " : "+month+"만원";
	}
}
