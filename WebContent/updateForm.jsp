<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% 
	String name= request.getParameter("name");
	String hp= request.getParameter("hp");
	String company= request.getParameter("company");
	String id= request.getParameter("id");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>[Phonebook1]</h1>

	<h2>전화번호 수정폼</h2>

	<p>
		수정 화면입니다.<br>
	   	아래 항목을 기입하고 "수정" 버튼을 클릭하세요
	</p>
	
	<form action="./update.jsp" method="get">
		이름(name): <input type="text" name="name" value="" placeholder="<%=name%>"> <br>
		핸드폰(hp): <input type="text" name="hp" value="" placeholder="<%=hp%>"> <br>
		회사(company): <input type="text" name="company" value="" placeholder="<%=company%>"> <br>
		코드(id): <input type="text" name="id" value="" placeholder="<%=id%>"> <br>
		<button type="submit">수정</button>
	</form>
	
</body>
</html>