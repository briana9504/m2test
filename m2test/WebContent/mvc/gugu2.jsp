<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head><!-- view -->
<body><!-- servlet이 요청을 담당 + jsp는 출력을 담당 -->
<%
	//Object list = request.getAttribute("list"); 는 가능
	ArrayList<String> list = (ArrayList<String>)request.getAttribute("list");
	for(String s: list){
%>		
		<div><%=s %></div>	
<%		
	}
%>
</body>
</html>