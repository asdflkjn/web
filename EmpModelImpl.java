package z_emp_review.model;

import java.util.ArrayList;

import z_emp_review.vo.EmpVO;

public class EmpModelImpl implements EmpModel {

	// 0. JDBC 필요한 변수 선언
	String driver 	= "oracle.jdbc.driver.OracleDriver";
	String url 		= "jdbc:oracle:thin:@192.168.0.70:1521:xe";
	String user 	= "scott";
	String pass		= "tiger";

	public EmpModelImpl() throws Exception{
		// 1. 드라이버 로딩
		Class.forName(driver);
	}
	
	/*
	 * 메소드명 : insertEmp
	 * 인  자 : 사원정보를 가진 EmpVO
	 * 		  ( 사번, 사원명, 월급, 부서, 업무)
	 * 리 턴 값: 없음
	 * 역  할 : 사원정보를 넘겨받아 emp 테이블에 입력 
	 */
	@Override
	public void insertEmp(EmpVO vo) throws Exception {
		// 
		
	}
	
	/*
	 *  메소드명 : updateEmp
	 *  인  자 : 사원정보를 가진 EmpVO
	 *  		( 사번, 업무, 부서번호 )
	 *  리 턴 값 : 수정한 결과 행(레코드)수
	 *  역  할 : 해당하는 사번의 사원정보에서 업무와 부서번호를 동시에 수정
	 */
	@Override
	public int updateEmp(EmpVO vo) throws Exception {
		int result = 0;
		
		return result;
	}
	
	@Override
	public ArrayList<EmpVO> selectAll() throws Exception {
		ArrayList<EmpVO> data = new ArrayList<EmpVO>();
		
		
		return data;
	}
	
	@Override
	public EmpVO selectByEmpno(int sabun) throws Exception {
		EmpVO result = new EmpVO();
		
		return result;
	}
	
	@Override
	public int deleteEmp(int sabun) throws Exception {
		int result = 0;
		
		return result;
	}
	
}
