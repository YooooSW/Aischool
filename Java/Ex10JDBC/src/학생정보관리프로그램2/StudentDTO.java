package 학생정보관리프로그램2;
// Data Transfer Object 자료형 전송 객체

public class StudentDTO {
	
	// DTO
	// Student 테이블에 있는 컬럼만큼 필드, 
	
	private String name;
	private int age;
	private String gender;
	private String major;
	
	public StudentDTO(String name, int age, String gender, String major) {
		super();
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.major = major;
	}
	
	public StudentDTO(String name, int age, String major) {
		super();
		this.name = name;
		this.age = age;
		this.major = major;
	}
	

	public StudentDTO(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	
	

}