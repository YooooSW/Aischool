package 마우스;

public class WheelMouse extends BallMouse{
	
	// extends(확장하다)
	// class 자식클래스명 extends 부모클래스
	
	// 우클릭, 좌클릭, 드래그하는 기능은
	// - BallMouse클래스로부터 물려받는 기능
	
	// + 스크롤하는 기능(휠마우스만 가진 기능)
	public void scroll() {
		System.out.println("스크롤하기");
	}
	
}
