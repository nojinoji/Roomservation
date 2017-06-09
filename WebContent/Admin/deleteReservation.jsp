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

String res_room = request.getParameter("res_room");
String res_time = request.getParameter("res_time");
String res_day = request.getParameter("res_day");

System.out.println(res_room);
System.out.println(res_time);
System.out.println(res_day);

manager.deleteReservation(res_room, res_time, res_day) ; 

%>

<script>
alert("삭제되었습니다.");
location.href="main.jsp?pagefile=reservation";
</script>


</body>
</html>