package while문;

import java.util.Scanner;

public class Ex07예제 {

	public static void main(String[] args) {

		// 숫자, 문자한개(char)의 같다를 비교할때
		// : ==

		// 문자열이 같다를 비교할 때는
		// : equals()

//		String name = "조자연";
		// name == "조자연"
		// name.equals("조자연")
//		if(name.equals("조자연")) {
//			System.out.println("로그인 성공");
//		}

		// 입력하는 기능에서 문자열을 입력하는 건
		// : sc.next()

		Scanner sc = new Scanner(System.in);
		
		int attempt = 0;
		
		while (attempt<3) {
			// 2) 아이디랑 비밀번호 입력
			System.out.print("아이디를 입력해 주세요 >> ");
			String id = sc.next();
			System.out.print("비밀번호를 입력해 주세요 >> ");
			int pw = sc.nextInt();
			
			
			// 3) id, pw가 로그인 성공인지 아닌지 판단
			if (id.equals("Hello") && pw == 1234) {
				System.out.println("로그인 성공!");
				break;
			} else {
				attempt++;
				if(attempt>=3) {
					System.out.println("아이디와 비밀번호가 3회 틀렸습니다. 본인인증을해주세요");
					break;
				}
				System.out.println("아이디와 비밀번호가 잘못되었습니다.");
				System.out.println("계속 하시겠습니까? (Y/N) >> ");
				String login = sc.next();
				if (login.equals("N") || login.equals("n")) {
					System.out.println("종료합니다");
					break;
				} // 3번이상틀렸을때, 아이디와 비밀번호가 3회 틀렸습니다. 본인인증을 해주세요.
				
			}
			

		}

	}

}
