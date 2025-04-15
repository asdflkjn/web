package basic;

import java.sql.*;

public class EmpDAO { //DB연동할 클래스 생성(DAO: Data Access Object)
	
	 String driver	= "oracle.jdbc.driver.OracleDriver";	// 오라클 드라이버
	 String url 		= "jdbc:oracle:thin:@127.0.0.1:1521:xe"; // 오라클 DB 주소
	 String user 		= "scott";
	 String pass 		= "tiger";
	
	
	public EmpDAO () throws Exception{
		
		// 1. 드라이버로딩
		Class.forName(driver);
	}
	
	public void insert(EmpVO vo) throws Exception{
		Connection con 		 = null;
		PreparedStatement ps = null; 
		// 2. 연결객체
		con = DriverManager.getConnection(url, user, pass);
				
		// 3. sql 문장
		String 	sql = "INSERT"
				+ " INTO emp(empno, ename, deptno, job, sal)"
				+ "	VALUES(?,?,?,?,?)";	
				
		// 4. 전송객체
		ps = con.prepareStatement(sql);		
		//prepareStatement ps = Connection con.prepareStatement(sql);
		
		ps.setInt( 1, vo.getEmpno());
		ps.setString( 2, vo.getEname());
		ps.setInt( 3, vo.getDeptno());
		ps.setString( 4, vo.getJob());
		ps.setInt( 5, vo.getSal());
		
		
		// 5. 실행
		
		ps.executeUpdate();
		
		// 7. 닫기
		ps.close();
		con.close();
		
	}
	
}
