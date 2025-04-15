package z_emp_review.vo;

public class EmpVO {

	private int 	sabun;	// 사번	(empno)
	private String 	irum;	// 사원명	(ename)
	private int 	wolgup;	// 급여	(sal)
	private String 	upmu;	// 업무	(job)
	private int 	buseo;	// 부서번호(deptno)
	
	
	
	public EmpVO() {
			
	}

	public EmpVO(int sabun, String irum, int wolgup, String upmu, int buseo) {
		
		this.sabun = sabun;
		this.irum = irum;
		this.wolgup = wolgup;
		this.upmu = upmu;
		this.buseo = buseo;
	}

	
	public int getSabun() {
		return sabun;
	}

	public void setSabun(int sabun) {
		this.sabun = sabun;
	}

	public String getIrum() {
		return irum;
	}

	public void setIrum(String irum) {
		this.irum = irum;
	}

	public int getWolgup() {
		return wolgup;
	}

	public void setWolgup(int wolgup) {
		this.wolgup = wolgup;
	}

	public String getUpmu() {
		return upmu;
	}

	public void setUpmu(String upmu) {
		this.upmu = upmu;
	}

	public int getBuseo() {
		return buseo;
	}

	public void setBuseo(int buseo) {
		this.buseo = buseo;
	}
	
	
	
	
}


/*
	데이타를 전송하는 객체
	
	VO : value object
	DTO : Data Tranfer Object
*/