<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="board.BoardDBBean"%>
<%@ page import="board.BoardBean"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
<%
BoardDBBean manager = BoardDBBean.getInstance();
int idx = Integer.parseInt(request.getParameter("idx"));
String title = request.getParameter("title");
String content = request.getParameter("content");

manager.modify(idx, title, content);
%>
<script>
alert("수정되었습니다.");
location.href="list.jsp";
</script>



</body>
</html>