package 일차원배열;

import java.util.Scanner;

public class Ex09로그인프로그램 {

	public static void main(String[] args) {

		// 1) 입력하는 기능 가져오기
		Scanner sc = new Scanner(System.in);
		
		// id, pw 배열을 선언 및 생성
		String[] id_array = new String[3];
		int[] pw_array = new int[3];
		
		// 인덱스 값
		int index = 0;
		
		// 2) while문 사용해서 사용자한테 메뉴 선택 받기
		while(true) {
			// 종료조건 : 사용자가 3을 입력했을 때
			System.out.print("[1]회원가입 [2]로그인 [3]종료 >> ");
			int select = sc.nextInt();
			
			if(select == 1) {
				// 회원가입
				if(index == 3) {
					System.out.println("회원가입을 진행할 수 없습니다.");
					continue;
				}
				System.out.println("== 회원가입 ==");
				// 1) id,pw가 저장될 수 있는 배열을 만들어보자
				// 배열을 만들어야하는 위치는 여기가 맞을까?도 고민해보세요
				// -> while문이 실행될때마다 다시 초기화 되지 않도록 하기위해 바깥
				
				// 2) 사용자가 입력한 id,pw가 각각의 인덱스값에
				// 저장될 수 있도록 만들어보자
				System.out.print("아이디 입력 : ");
				String id = sc.next();
				System.out.print("비밀번호 입력 : ");
				int pw = sc.nextInt();
				
				// - 근데 while문에서는 인덱스값으로 사용할 수 있는
				// 변수가 없음... 필요하면 만들어보아요
				
				id_array[index] = id;
				pw_array[index] = pw;
				
				index++;
				// 다음 회원가입을 진행하는 사용자는 +1 증가한
				// 인덱스값에 데이터를 저장할 수 있도록
				
				// 아무래도 크기가 3으로 정해져있으니...
				// 3명을 초과하는 가입자가 발생하면 안됩니다!
				// 만약 초과하려고 했을 때는 ?
				// + "더 이상 가입할 수 없습니다." 문구를 보여주기
				
		
			}else if(select == 2) {
				boolean isSuccessful = false;
				
				// 로그인
				System.out.println("== 로그인 ==");
				
				// 1) 사용자로 부터 id,pw을 입력받기
				System.out.print("아이디 입력 : ");
				String id = sc.next();
				System.out.print("비밀번호 입력 : ");
				int pw = sc.nextInt();
				// 2) 사용자가 입력한 id랑 pw가 배열에 들어있는지
				// 확인하기 
				// 단, 로그인 성공의 기준은...
				// id와 pw가 일치해야한다... \
				for(int i = 0; i < id_array.length; i++) {
					if(id_array[i].equals(id) && pw_array[i]==pw) {
						isSuccessful = true;
						// 
					}
				}
				
				
				if(isSuccessful == true) {
					System.out.println("로그인 성공");
				}else {
					System.out.println("로그인 실패");
				}
				
				
				// id[0] - smhrd, id[1] - cjy
				// pw[0] - 1234,  pw[1] - 0000
				// 이 들어가있다고 가정했을 때
				// smhrd, 1234는 로그인 성공인데
				// smhrd, 0000은 로그인 실패입니다!
				
				// 회원가입이 3번 완료가 되어있어야 로직이 동작
				// NullPointerException...... 
				
				// 성공과 실패의 여부를 알 수있는 어떤 변수....?
				
				
			}else {
				System.out.println("프로그램이 종료되었습니다.");
				break; // while문을 빠져나가는 키워드
			}
			
			
		}
		
		
		
	}

}
