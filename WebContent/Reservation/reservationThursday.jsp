<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="reservation.ReservationDB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Roomservation</title>
  
</head>

<% ReservationDB manager = ReservationDB.getInstance();
String study = request.getParameter("study"); 
if(study.equals("0")){
	%>
	<script>
	alert("가입된 스터디가 없습니다.");
	location="main.jsp?pagefile=reservationForm"
	</script>
	<%
}%>
  <center>
	<table class="table-style-three" width= "300" > <!-- 9시 -->
	<thead>
	<tr>
		<th>9시</th>
	</tr>
	</thead>
	<tbody> 
	<tr> 
	<%if(manager.reservationCheck("9", "1", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=9&select=1&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("9", "1", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("9", "2" ,"thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=9&select=2&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("9", "2", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("9", "3", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=9&select=3&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("9", "3", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("9", "4", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=9&select=4&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("9", "4", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("9", "5", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=9&select=5&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("9", "5", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("9", "6", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=9&select=6&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("9", "6", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	</tbody>
</table>

<br>

<table class="table-style-three" width= "300" > <!-- 10시 -->
	<thead>
	<tr>
		<th>10시</th>
	</tr>
	</thead>
	<tbody> 
	<tr> 
	<%if(manager.reservationCheck("10", "1", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=10&select=1&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("10", "1", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("10", "2", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=10&select=2&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("10", "2", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("10", "3", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=10&select=3&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("10", "3", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("10", "4", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=10&select=4&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("10", "4", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("10", "5", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=10&select=5&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("10", "5", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("10", "6", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=10&select=6&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("10", "6", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	</tbody>
	</table>
	
	<br>
	
	<table class="table-style-three" width= "300" > <!-- 11시 -->
	<thead>
	<tr>
		<th>11시</th>
	</tr>
	</thead>
	<tbody> 
	<tr> 
	<%if(manager.reservationCheck("11", "1", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=11&select=1&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("11", "1", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("11", "2", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=11&select=2&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("11", "2", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("11", "3", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=11&select=3&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("11", "3", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("11", "4", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=11&select=4&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("11", "4", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("11", "5", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=11&select=5&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("11", "5", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("11", "6", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=11&select=6&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("11", "6", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	</tbody>
</table>

<h1>채플</h1>

<table class="table-style-three" width= "300" > <!-- 1시 -->
	<thead>
	<tr>
		<th>1시</th>
	</tr>
	</thead>
	<tbody> 
	<tr> 
	<%if(manager.reservationCheck("1", "1", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=1&select=1&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("1", "1", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("1", "2", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=1&select=2&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("1", "2", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("1", "3", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=1&select=3&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("1", "3", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("1", "4", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=1&select=4&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("1", "4", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("1", "5", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=1&select=5&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("1", "5", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("1", "6", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=1&select=6&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("1", "6", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	</tbody>
</table>

<br>

<table class="table-style-three" width= "300" > <!-- 2시 -->
	<thead>
	<tr>
		<th>2시</th>
	</tr>
	</thead>
	<tbody> 
	<tr> 
	<%if(manager.reservationCheck("2", "1", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=2&select=1&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("2", "1", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("2", "2", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=2&select=2&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("2", "2", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("2", "3", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=2&select=3&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("2", "3", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("2", "4", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=2&select=4&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("2", "4", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("2", "5", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=2&select=5&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("2", "5", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("2", "6", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=2&select=6&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("2", "6", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	</tbody>
</table>

<br>

<table class="table-style-three" width= "300" > <!-- 3시 -->
	<thead>
	<tr>
		<th>3시</th>
	</tr>
	</thead>
	<tbody> 
	<tr> 
	<%if(manager.reservationCheck("3", "1", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=3&select=1&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("3", "1", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("3", "2", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=3&select=2&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("3", "2", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("3", "3", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=3&select=3&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("3", "3", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("3", "4", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=3&select=4&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("3", "4", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("3", "5", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=3&select=5&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("3", "5", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("3", "6", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=3&select=6&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("3", "6", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	</tbody>
</table>

<br>

<table class="table-style-three" width= "300" > <!-- 4시 -->
	<thead>
	<tr>
		<th>4시</th>
	</tr>
	</thead>
	<tbody> 
	<tr> 
	<%if(manager.reservationCheck("4", "1", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=4&select=1&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("4", "1", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("4", "2", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=4&select=2&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("4", "2", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("4", "3", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=4&select=3&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("4", "3", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("4", "4", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=4&select=4&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("4", "4", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("4", "5", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=4&select=5&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("4", "5", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("4", "6", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=4&select=6&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("4", "6", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	</tbody>
</table>

<br>

<table class="table-style-three" width= "300" > <!-- 5시 -->
	<thead>
	<tr>
		<th>5시</th>
	</tr>
	</thead>
	<tbody> 
	<tr> 
	<%if(manager.reservationCheck("5", "1", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=5&select=1&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("5", "1", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("5", "2", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=5&select=2&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("5", "2", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("5", "3", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=5&select=3&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("5", "3", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("5", "4", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=5&select=4&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("5", "4", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("5", "5", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=5&select=5&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("5", "5", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("5", "6", "thursday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=5&select=6&day=thursday">예약해주세요</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("5", "6", "thursday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	</tbody>
</table>
<br><br>
  </center>

</body>
</html>