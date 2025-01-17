package 학생정보관리프로그램2;

import java.util.List;

public class Controller {

   private StudentDAO dao;

   public Controller() {
      dao = new StudentDAO();
   }

   // 학생 등록 기능
   public void insert(StudentDTO dto) {
		
		int cnt = dao.insert(dto); // cnt
		
		if(cnt > 0) {
			System.out.println("학생 등록 성공");
		}else {
			System.out.println("학생 등록 실패");
		}
		
	}

   // 학생 전체 조회 기능


   // 학생 검색 기능


   // 학생 정보 수정 기능
   public void update(StudentDTO dto) {
		int cnt = dao.update(dto);
		if(cnt > 0) {
			System.out.println("학생정보 수정 성공");
		}else {
			System.out.println("학생정보 수정 실패");
		}
	}

   // 학생 정보 삭제 기능
   public void delete(StudentDTO dto) {
		int cnt = dao.delete(dto);
		if(cnt > 0) {
			System.out.println("학생정보 삭제 성공");
		}else {
			System.out.println("학생정보 삭제 실패");
		}
	}

   // 학생 정보를 출력하는 메서드
   private void displayStudent(StudentDTO student) {
      System.out.println("이름: " + student.getName());
      System.out.println("나이: " + student.getAge());
      System.out.println("성별: " + student.getGender());
      System.out.println("전공: " + student.getMajor());
      System.out.println("-------------------------");
   }
}