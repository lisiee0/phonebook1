<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao" %>     
<%@ page import="com.javaex.vo.PhoneVo" %> 

<%
	String name= request.getParameter("name");
	String hp= request.getParameter("hp");
	String company= request.getParameter("company");
	
	/*
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);
	*/
	
	PhoneVo pv= new PhoneVo(name, hp, company);
	
	PhoneDao pd= new PhoneDao();
	pd.personInsert(pv);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	저장 기능
</body>
</html>