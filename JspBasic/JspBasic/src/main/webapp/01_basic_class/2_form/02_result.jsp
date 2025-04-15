<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	 String name = request.getParameter("name");

	 String[] hobby = request.getParameterValues("hobby");
	 String hobbyText = "";
	 /*if( hobby != null) {
		 for(int i=0; i<hobby.length; i++){
			 hobbyText += hobby[i] + "/";
		 }
	 }*/
	 for(int i=0; hobby!=null && i<hobby.length; i++){
		 hobbyText += hobby[i] + "/";
	 }


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

이름 : <%= name %> <br/>
취미 : <%= hobbyText %><hr/>
</body>
</html>