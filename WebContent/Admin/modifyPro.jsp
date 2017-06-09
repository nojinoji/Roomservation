<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="admin.AdminDBBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<% request.setCharacterEncoding("utf-8");%>
<title>Insert title here</title>
</head>
<body>
<% 
	AdminDBBean manager = AdminDBBean.getInstance();

	
	String mem_id = request.getParameter("mem_id");
	String mem_name = String.valueOf(request.getParameter("mem_name"));
	String mem_snum = request.getParameter("mem_snum");
	String mem_bir = request.getParameter("mem_bir");
	String mem_phone = request.getParameter("mem_phone");
	
	
	manager.updateMember(mem_id, mem_name, mem_snum, mem_bir, mem_phone);
		

%>

	<script type="text/javascript">
		alert("수정되었습니다.");
		location.href="main.jsp?pagefile=member"
		</script>

	
</body>
</html>