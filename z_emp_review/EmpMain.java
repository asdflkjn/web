package z_emp_review;

import java.util.Scanner;

import z_emp_review.view.EmpView;

public class EmpMain {

	public static void main(String[] args) {
		
		Scanner input = new Scanner(System.in);
		
		EmpView view = new EmpView();
		
		while(true) {
			
			System.out.println("사원정보"); 
			System.out.println("[1]입력 [2]수정 [3]삭제 [4]전체검색 [5]사번검색 [q]나가기");
		
			String sel = input.next();
			if(sel.equals("q")) break;
			else if(sel.equals("1")) view.insertEmp();
			else if(sel.equals("2")) view.updateEmp();
			// 나머지들
			
		}

	}

}
