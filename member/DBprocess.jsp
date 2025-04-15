<%@ page import="dbcom2.*"%>    
<%request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		request.setCharacterEncoding("utf-8"); 
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String birth = request.getParameter("birth"); 
		String gender = request.getParameter("gender"); // M(남자) : F(여자)
		String comments = request.getParameter("comments");
		String created = request.getParameter("created");
		
		ItemVO vo = new ItemVO();		
		vo.setUserid(userid);
		vo.setPassword(password);
		vo.setName(name);
		vo.setEmail(email);		
		vo.setAddress(address);		
		vo.setBirth(birth);		
		vo.setGender(gender);		
		vo.setComments(comments);
		
		ItemDAO dao = new ItemDAO();
		dao.insert(vo);	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>