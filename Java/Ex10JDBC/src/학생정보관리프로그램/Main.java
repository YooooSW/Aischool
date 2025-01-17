package 학생정보관리프로그램;

import java.util.Scanner;

public class Main {

   public static void main(String[] args) {
      
      Scanner sc = new Scanner(System.in);
      StudentDAO studentDAO = new StudentDAO();
      Controller conn = new Controller();
      
      while(true) {
         System.out.println("[1]학생등록 [2]학생전체조회 [3]학생검색 [4]학생정보수정 [5]학생정보삭제 [6]프로그램종료 >> ");
         int select = sc.nextInt();
         
         if(select == 1) {
             // 학생 등록
             System.out.print("이름: ");
             String name = sc.next();
             System.out.print("나이: ");
             int age = sc.nextInt();
             System.out.print("성별: ");
             String gender = sc.next();
             System.out.print("전공: ");
             String major = sc.next();
             
             StudentDTO student = new StudentDTO(name, age, gender, major);
             conn.insert(student);

          } else if(select == 2) {
             // 학생 전체 조회
             conn.selectAll();

          } else if(select == 3) {
             // 학생 검색
             System.out.print("검색할 학생의 이름: ");
             String name = sc.next();
             conn.search(name);

          } else if(select == 4) {
             // 학생 정보 수정
             System.out.print("수정할 학생의 이름: ");
             String name = sc.next();
             System.out.print("수정할 전공: ");
             String major = sc.next();
             conn.update(name, major);
          } else if(select == 5) {
              // 학생 정보 삭제
              System.out.print("삭제할 학생의 이름: ");
              String name = sc.next();
              conn.delete(name);

           } else if(select == 6) {
              System.out.println("프로그램 종료!");
              break;
           } else {
              System.out.println("잘못된 선택입니다. 다시 입력해주세요.");
           }
        }
        sc.close();

      }
   }
