<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import='basic.*' %>


<%	
	// 1. 화면의 입력값을 얻어와서 VO 객체의 멤버로 담기
	EmpVO vo = new EmpVO();
	vo.setEmpno(Integer.parseInt(request.getParameter("empno")));
	vo.setEname(request.getParameter("ename"));
	// 나머지도

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