package 메서드;

public class Ex00메서드 {

	public static void main(String[] args) {

//		System.out.println(5+10+13);
//		System.out.println(5+14+13);
//		System.out.println(5+123+13);
//		System.out.println(5+17+13);
//		System.out.println(5+198+13);
//		System.out.println(5+19+13);
//		System.out.println(5+192+13);
//		System.out.println(5+192+13);
//		System.out.println(5+192+13);
//		System.out.println(5+192+13);
//		System.out.println(5+192+13);
		
		// 근데 가산점 +13점.....
		
		sum(5,10);
		sum(5,14);
		sum(5,152);
		sum(5,104);
		sum(5,130);
		sum(5,105);
		sum(5,106);
		sum(5,108);
		sum(5,109);
		
		// 근데 가산점 +13점.....
		
		// 유지보수가 용이하다...
		// 프로그램 생산성이 높아진다!
		
	}

	public static void sum(int a, int b) {
		System.out.println(a+b+1000);
	}
	
	
	
}
