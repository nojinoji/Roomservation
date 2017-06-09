<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="board.BoardDBBean"%>	
<%request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글보기</title>
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
</head>
<body>
	<%
	BoardDBBean manager = BoardDBBean.getInstance();
	
	int idx = Integer.parseInt(request.getParameter("idx"));
	
	
	%>
	<div data-role="content"> 

	<div data-role="fieldcontain">
		<h2>제목 : <%=manager.bringTitle(idx) %></h2>
	</div>
	<div data-role="fieldcontain">
		<h2>내용 : </h2><br>
		<%=manager.bringTitle(idx) %> 
	</div>
	
	<input type="button" onclick="location.href='modify.jsp?idx=<%=idx%>'" value="수정">
	<input type="button" onclick="location.href='delete.jsp?idx=<%=idx%>'" value="삭제">
	</div>
	
	
	
	
	
</body>
</html>