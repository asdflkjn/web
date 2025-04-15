<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	//# 1."id"로 저장된 세션값을 얻어온다.
	//# 2. 값이 null이라면 LoginForm.jsp로 페이지 이동
	//# 3. null이 아니라면 String 형변환하여 변수에 지정
	//String userId = session.getAttribute("id"); //Type mismatch: cannot convert from Object to String - 리턴값이 오브젝트이다
	//String userId = (String)session.getAttribute("id"); -이렇게 강제형변환 하면 널값이 올때 널포인터익셉션 발생
	Object obj = session.getAttribute("id");
	if( obj == null ){ 
		response.sendRedirect("LoginForm.jsp");
		return;
	}
	
	String userId = (String)obj;
%>
    
<!DOCTYPE html>
<html>
<head>
<title> 우리 페이지 </title>
</head>
<body>

	<h2> 이 페이지는 로그인을 하셔야만 볼 수 있는 페이지 입니다 </h2><br/><br/><br/>
	<%= userId %>님, 로그인 중입니다.

</body>
</html>