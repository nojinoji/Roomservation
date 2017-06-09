<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="board.BoardDBBean"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String stu_name = request.getParameter("stu_name");
String title = request.getParameter("title");
String content = request.getParameter("content");

BoardDBBean manager = BoardDBBean.getInstance();


manager.insertBoard(stu_name, title, content); 

%>

<script>
alert("게시되었습니다.");
location.href="list.jsp";

</script>
</body>
</html>
