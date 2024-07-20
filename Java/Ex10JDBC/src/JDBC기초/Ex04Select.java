package JDBC기초;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Ex04Select {

   public static void main(String[] args) {
      
      // 사용자로부터 이름과 나이를 입력받아 해당 학생의 현재 전공을 조회
      Scanner sc = new Scanner(System.in);
      
      System.out.print("조회할 학생의 이름을 입력하세요 >> ");
      String name = sc.next();
      
      System.out.print("조회할 학생의 나이를 입력하세요 >> ");
      int age = sc.nextInt();
      
      String currentMajor = getCurrentMajor(name, age);
      
      if(currentMajor != null) {
         System.out.println("학생의 현재 전공: " + currentMajor);
      } else {
         System.out.println("학생 정보를 찾을 수 없습니다.");
      }
   }
   
   // 학생의 현재 전공을 확인하는 메서드
   private static String getCurrentMajor(String name, int age) {
      String currentMajor = null;
      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
         
         String id = "hr";
         String pw = "12345";
         String url = "jdbc:oracle:thin:@localhost:1521:xe";
         
         Connection con = DriverManager.getConnection(url, id, pw);
         
         // 쿼리문을 준비
         String sql = "SELECT MAJOR FROM STUDENT";
         
         PreparedStatement psmt = con.prepareStatement(sql);
         
         ResultSet rs = psmt.executeQuery();
         
         if(rs.next()) {
            currentMajor = rs.getString("MAJOR");
         }
         
         rs.close();
         psmt.close();
         con.close();
         
      } catch (ClassNotFoundException | SQLException e) {
         e.printStackTrace();
         System.out.println("데이터베이스 조회 중 오류가 발생했습니다.");
      }
      
      return currentMajor;
   }
}