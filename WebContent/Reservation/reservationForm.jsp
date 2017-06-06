<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Roomservation</title>
  
</head>
<body>


	<div data-role="fieldcontain">
	<form>
	
	<%if(session.getAttribute("day0")==null){ %>
	<a href="main.jsp?pagefile=reservationMonday" data-role="button">월요일</a>
       <%}else{ %>
       <%} %>
    <%if(session.getAttribute("day1")==null){ %>
    <a href="main.jsp?pagefile=reservationTuesday" data-role="button">화요일</a>
       <%}else{ %>
       <%} %>
    <%if(session.getAttribute("day2")==null){ %>
    <a href="main.jsp?pagefile=reservationwednesday" data-role="button">수요일</a>
       <%}else{ %>
       <%} %>
       <%if(session.getAttribute("day3")==null){ %>
    <a href="main.jsp?pagefile=reservationThursday" data-role="button">목요일</a>
       <%}else{ %>
       <%} %>
       <%if(session.getAttribute("day4")==null){ %>
    <a href="main.jsp?pagefile=reservationFriday" data-role="button">금요일</a>
       <%}else{ %>
       <%} %>
       
       </form>
       </div>


</body>
</body>
</html>