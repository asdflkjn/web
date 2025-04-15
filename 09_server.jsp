<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import='basic.*' %> <!-- basic폴더의 모든 파일을 임포트하겠다. 'basic.EmpVO, basic.EmpDAO'이거 써도됨 -->

<%
	// 1. 화면의 입력값을 얻어와서 VO 객체의 멤버로 담기
	EmpVO vo = new EmpVO();

	vo.setEmpno(Integer.parseInt(request.getParameter("empno")));
	vo.setEname(request.getParameter("ename"));
	vo.setDeptno(Integer.parseInt(request.getParameter("deptno")));
	vo.setJob(request.getParameter("job"));
	vo.setSal(Integer.parseInt(request.getParameter("sal")));
	//사용자가 입력한 값을 넘겨받자마자 형변환(cf. 한번만 쓸거같으면 따로 변수선언x)
	
	
	// 2. 모델측 DAO의 insert()로 위의 VO를 전송
	EmpDAO dao = new EmpDAO();
	dao.insert(vo); 
	
%>  

<!DOCTYPE html>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 사원등록 </title>  
</head>
<body>
	 성공적으로 입력되었지 DB에서 확인합니다.
</body>
</html>