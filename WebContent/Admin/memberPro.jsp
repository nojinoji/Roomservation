<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	String mem_id = request.getParameter("mem_id");
	String mem_name = request.getParameter("mem_name");
	String mem_snum = request.getParameter("mem_snum");
	String mem_bir = request.getParameter("mem_bir");
	String mem_phone = request.getParameter("mem_phone");


System.out.println(mem_id);

%>

	<script type="text/javascript">
alert("수정되었습니다.");
location.href="main.jsp?pagefile=member"
</script>
</body>
</html>