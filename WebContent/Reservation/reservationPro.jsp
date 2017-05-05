<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="reservation.ReservationDB"%>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Roomservation</title>
</head>
<body>

<%

ReservationDB manager = ReservationDB.getInstance();

String time = request.getParameter("time");
String select = request.getParameter("select");
String day = request.getParameter("day");
String id =String.valueOf(session.getAttribute("id"));


boolean insert = manager.insertReservation(time, select, day, id);

if(insert){
	%>
	<script type="text/javascript">
	alert("예약되었습니다.");
	location.href="main.jsp?reservation";	
	</script>
<%}

%>

</body>
</html>