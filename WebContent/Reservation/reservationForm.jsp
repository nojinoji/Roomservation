<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="reservation.ReservationDB"%>

<% ReservationDB manager = ReservationDB.getInstance(); %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Roomservation</title>
  
</head>
<body>


	<div data-role="fieldcontain">
	<form>
	
	<%if(session.getAttribute("id")==null){%>
		<h1>�α����� ���ּ���</h1>
		<%}else{%>
    
	
		<%if(session.getAttribute("day0")==null){ %>
		<a href="main.jsp?pagefile=reservationMonday&study=<%=manager.checkStudy(String.valueOf(session.getAttribute("id"))) %>" data-role="button">������</a>
	       <%}else{ %>
	       <%} %>
	    <%if(session.getAttribute("day1")==null){ %>
	    <a href="main.jsp?pagefile=reservationTuesday&study=<%=manager.checkStudy(String.valueOf(session.getAttribute("id"))) %>" data-role="button">ȭ����</a>
	       <%}else{ %>
	       <%} %>
	    <%if(session.getAttribute("day2")==null){ %>
	    <a href="main.jsp?pagefile=reservationwednesday&study=<%=manager.checkStudy(String.valueOf(session.getAttribute("id"))) %>" data-role="button">������</a>
	       <%}else{ %>
	       <%} %>
	       <%if(session.getAttribute("day3")==null){ %>
	    <a href="main.jsp?pagefile=reservationThursday&study=<%=manager.checkStudy(String.valueOf(session.getAttribute("id"))) %>" data-role="button">�����</a>
	       <%}else{ %>
	       <%} %>
	       <%if(session.getAttribute("day4")==null){ %>
	    <a href="main.jsp?pagefile=reservationFriday&study=<%=manager.checkStudy(String.valueOf(session.getAttribute("id"))) %>" data-role="button">�ݿ���</a>
	       <%}else{ %>
	       <%} 
	       }%>
	       
       </form>
       </div>


</body>
</body>
</html>