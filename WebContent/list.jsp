<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.PhoneDao" %>     
<%@ page import="com.javaex.vo.PhoneVo" %>   
<%
	PhoneDao pd= new PhoneDao();
	List<PhoneVo> pList= pd.getList();
%>    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>[phonebook1]</h1>
	
	<h2>전화번호 리스트</h2>
	
	<p>입력한 정보 내역입니다.</p>
	
	<%
	for(int i= 1; i<pList.size(); i++) {
	%>
	
	<table border= "1">
		<tr>
			<td>이름(name)</td>
			<td><%=pList.get(i).getName()%></td>
		</tr>
		<tr>
			<td>핸드폰(hp)</td>
			<td><%=pList.get(i).getHp()%></td>
		</tr>
		<tr>
			<td>회사(company)</td>
			<td><%=pList.get(i).getCompany()%></td>
		</tr>
	</table>
	<br>
	<%
	}
	%>
</body>
</html>