<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="board.BoardBean"%>
<%@ page import="board.BoardDBBean"%>	
<%request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>삭제하기</title>
<link rel="stylesheet" href="../css/board.css" type="text/css" />

</head>
<body>
<%
	BoardDBBean manager = BoardDBBean.getInstance();
	
	int idx = Integer.parseInt(request.getParameter("idx"));
	
	manager.delete(idx); 
	%>
	<script type="text/javascript">
	alert("삭제되었습니다.");
	location.href="list.jsp";
	</script>
	
</body>
</html>