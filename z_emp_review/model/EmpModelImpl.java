package z_emp_review.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
		Connection con 		 = null;
		PreparedStatement ps = null;
		
		try {
			// 2. 연결객체 얻어오기
			con = DriverManager.getConnection(url, user, pass);
			
			// 3. SQL
			String sql = "INSERT  "
					+ " INTO emp(empno, ename, job, sal, deptno) "
					+ " VALUES(?,?,?,?,?)";
			
			// 4. 전송객체
			ps = con.prepareStatement(sql);
			ps.setInt(1, 	vo.getSabun());
			ps.setString(2, vo.getIrum());
			ps.setString(3, vo.getUpmu());
			ps.setInt(4,    vo.getWolgup());
			ps.setInt(5,    vo.getBuseo());
			
			// 5. 전송
			ps.executeUpdate();
			
		}finally {
			// 7. 닫기
			try {
				ps.close();
				con.close();
			}catch(Exception ex) {}
		}
	}
	
	/*
	 *  메소드명 : updateEmp
	 *  인  자 : 사원정보를 가진 EmpVO
	 *  		( 사번, 업무, 부서번호 )
	 *  리 턴 값 : 수정한 결과 행(레코드)수
	 *  역  할 : 해당하는 사번의 사원정보에서 업무와 부서번호를 수정
	 */
	@Override
	public int updateEmp(EmpVO vo) throws Exception {
		int result = 0;
		

		Connection con 		 = null;
		PreparedStatement ps = null;
		
		try {
			// 2. 연결객체 얻어오기
			con = DriverManager.getConnection(url, user, pass);
			
			// 3. SQL ( ###### )
			String sql = " UPDATE emp 			"
					+ "  SET    job=?, deptno=?	"
					+ "  WHERE  empno=?			";

			// 4. 전송객체
			ps = con.prepareStatement(sql);
			// ######
			ps.setString(1, vo.getUpmu());
			ps.setInt(2, 	vo.getBuseo());
			ps.setInt(3,    vo.getSabun());
			
			
			
			// 5. 전송
			result = ps.executeUpdate();
			
		}finally {
			// 7. 닫기
			try {
				ps.close();
				con.close();
			}catch(Exception ex) {}
		}
			
		
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
