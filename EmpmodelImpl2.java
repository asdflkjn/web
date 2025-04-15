package z_emp_review.model;

import java.util.ArrayList;

import z_emp_review.vo.EmpVo;

public class EmpmodelImpl implements EmpModel {

	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user = "scott";
	String pass = "tiger";
	
	public EmpmodelImpl() throws Exception {
	// 1. 드라이버를 메모리 로딩
	Class.forName(driver);
	}
	
/*
	메소드명	: insertEmp
	인  자	: 사원정보를 가진 EmpVo
			  (사번, 사원명, 월급, 부서, 업무)
	리턴값	: 없음
	역활		: 사원정보를 넘겨받아 emp 테이블에 입력		
*/
	
	@Override
	public void insertEmp(EmpVo vo) throws Exception {
	
	}
/*
	메소드명 	: updateEmp
	인 자   	: 사원정보를 가진 EmpVo
			  (사번, 업무, 부서번호)
	리턴값 	: 수정한 결과 행 (레코드)수
	역활		: 해당하는 사번의 사원정보에서 업무와 부서번호를 동시에 수정
*/	
	@Override
	public int updateEmp(EmpVo vo) throws Exception {
		
		int result = 0;
		
		return result;
	}

	@Override
	public ArrayList<EmpVo> selectAll() throws Exception {
		ArrayList<EmpVo> data = new ArrayList<EmpVo>();
		
		return data;
	}
	
	@Override
	public EmpVo selectByEmpno(int sabun) throws Exception {
		EmpVo result = new EmpVo();
		
		return result;
	}

/*
	메소드명 	: deleteEmp
	인 자   	: 사원정보를 가진 EmpVo
			  (사번, 업무, 부서번호)
	리턴값 	: 수정한 결과 행 (레코드)수
	역활		: 해당하는 사번의 사원정보에서 업무와 부서번호를 동시에 삭제
*/
	@Override
	public int deleteEmp(int sabun) throws Exception {
		
		int result = 0;
		
		return result;
	}
}