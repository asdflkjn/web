package basic;

public class EmpVO {

	private int 	empno; // 사번
	private String 	ename; // 사원명
	private int		deptno;// 부서번호
	private String	job;   // 업무
	private int 	sal;   // 월급
	
	
	
	
	
	
	public EmpVO() {
		
	} //인자없는 디폴트 생성자 함수 부터 
	
	
	public EmpVO(int empno, String ename, int deptno, String job, int sal) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.deptno = deptno;
		this.job = job;
		this.sal = sal;
	} //인자있는 생성자함수




	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public int getSal() {
		return sal;
	}
	public void setSal(int sal) {
		this.sal = sal;
	}
	
	
}
