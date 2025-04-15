package z_emp_review.view;

import java.util.Scanner;

import z_emp_review.vo.EmpVO;

public class EmpView {

	Scanner input = new Scanner(System.in);
	
	/*
		메소드명 : insertEmp
		역   할 : 사원의 정보를 입력받아서 데이타베이스에 입력할 함수를 호출하여 처리
		
			     입력받는 정보 : 사번, 사원명, 월급, 부서번호, 업무
	*/
	public void insertEmp() {
		System.out.println("사번을 입력하세요 ->");
		int sabun = input.nextInt();
		System.out.println("이름을 입력하세요 ->");
		String irum = input.next();
		System.out.println("월급을 입력하세요 ->");
		int wolgub = input.nextInt();
		System.out.println("부서번호를 입력하세요 ->");
		int buseo = input.nextInt();
		System.out.println("업무을 입력하세요 ->");
		String upmu = input.next();


	}
	
	public void updateEmp(){		
		System.out.println("수정할 사번을 입력하세요 ->");
		int sabun = input.nextInt();
		System.out.println("수정할 부서번호를 입력하세요 ->");
		int buseo = input.nextInt();
		System.out.println("수정할 업무을 입력하세요 ->");
		String upmu = input.next();
		
	}
	
	
	public void deleteEmp(){
		System.out.println("삭제 사번을 입력하세요 ->");
		int sabun = input.nextInt();
		
		
		
	}

	public void selectAll(){
		System.out.println(" -------- 전체 사원 목록 ---------");
		
		
	}
	
	
	public void selectBySabun(){
		System.out.println("검색할 사번을 입력하세요 ->");
		int sabun = input.nextInt();
		
		
	}
	
	
}
