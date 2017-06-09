<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="admin.AdminDBBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<%request.setCharacterEncoding("utf-8"); %>
</head>
<body>
<%
AdminDBBean manager = AdminDBBean.getInstance();

String mem_id = request.getParameter("mem_id");

manager.deleteMember(mem_id);

%>

<script type="text/javascript">
		alert("삭제되었습니다.");
		location.href="main.jsp?pagefile=member"
		</script>
</body>
</html>