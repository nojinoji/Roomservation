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
	alert("���Ե� ���͵� �����ϴ�.");
	location="main.jsp?pagefile=reservationForm"
	</script>
	<%
}%>
  <center>
	<table class="table-style-three" width= "300" > <!-- 9�� -->
	<thead>
	<tr>
		<th>9��</th>
	</tr>
	</thead>
	<tbody> 
	<tr> 
	<%if(manager.reservationCheck("9", "1", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=9&select=1&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("9", "1", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("9", "2" ,"monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=9&select=2&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("9", "2", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("9", "3", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=9&select=3&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("9", "3", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("9", "4", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=9&select=4&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("9", "4", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("9", "5", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=9&select=5&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("9", "5", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("9", "6", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=9&select=6&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("9", "6", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	</tbody>
</table>

<br>

<table class="table-style-three" width= "300" > <!-- 10�� -->
	<thead>
	<tr>
		<th>10��</th>
	</tr>
	</thead>
	<tbody> 
	<tr> 
	<%if(manager.reservationCheck("10", "1", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=10&select=1&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("10", "1", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("10", "2", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=10&select=2&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("10", "2", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("10", "3", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=10&select=3&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("10", "3", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("10", "4", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=10&select=4&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("10", "4", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("10", "5", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=10&select=5&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("10", "5", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("10", "6", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=10&select=6&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("10", "6", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	</tbody>
	</table>
	
	<br>
	
	<table class="table-style-three" width= "300" > <!-- 11�� -->
	<thead>
	<tr>
		<th>11��</th>
	</tr>
	</thead>
	<tbody> 
	<tr> 
	<%if(manager.reservationCheck("11", "1", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=11&select=1&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("11", "1", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("11", "2", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=11&select=2&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("11", "2", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("11", "3", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=11&select=3&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("11", "3", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("11", "4", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=11&select=4&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("11", "4", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("11", "5", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=11&select=5&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("11", "5", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("11", "6", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=11&select=6&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("11", "6", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	</tbody>
</table>

<h1>ä��</h1>

<table class="table-style-three" width= "300" > <!-- 1�� -->
	<thead>
	<tr>
		<th>1��</th>
	</tr>
	</thead>
	<tbody> 
	<tr> 
	<%if(manager.reservationCheck("1", "1", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=1&select=1&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("1", "1", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("1", "2", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=1&select=2&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("1", "2", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("1", "3", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=1&select=3&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("1", "3", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("1", "4", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=1&select=4&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("1", "4", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("1", "5", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=1&select=5&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("1", "5", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("1", "6", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=1&select=6&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("1", "6", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	</tbody>
</table>

<br>

<table class="table-style-three" width= "300" > <!-- 2�� -->
	<thead>
	<tr>
		<th>2��</th>
	</tr>
	</thead>
	<tbody> 
	<tr> 
	<%if(manager.reservationCheck("2", "1", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=2&select=1&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("2", "1", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("2", "2", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=2&select=2&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("2", "2", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("2", "3", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=2&select=3&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("2", "3", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("2", "4", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=2&select=4&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("2", "4", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("2", "5", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=2&select=5&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("2", "5", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("2", "6", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=2&select=6&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("2", "6", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	</tbody>
</table>

<br>

<table class="table-style-three" width= "300" > <!-- 3�� -->
	<thead>
	<tr>
		<th>3��</th>
	</tr>
	</thead>
	<tbody> 
	<tr> 
	<%if(manager.reservationCheck("3", "1", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=3&select=1&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("3", "1", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("3", "2", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=3&select=2&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("3", "2", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("3", "3", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=3&select=3&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("3", "3", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("3", "4", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=3&select=4&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("3", "4", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("3", "5", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=3&select=5&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("3", "5", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("3", "6", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=3&select=6&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("3", "6", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	</tbody>
</table>

<br>

<table class="table-style-three" width= "300" > <!-- 4�� -->
	<thead>
	<tr>
		<th>4��</th>
	</tr>
	</thead>
	<tbody> 
	<tr> 
	<%if(manager.reservationCheck("4", "1", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=4&select=1&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("4", "1", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("4", "2", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=4&select=2&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("4", "2", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("4", "3", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=4&select=3&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("4", "3", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("4", "4", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=4&select=4&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("4", "4", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("4", "5", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=4&select=5&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("4", "5", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("4", "6", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=4&select=6&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("4", "6", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	</tbody>
</table>

<br>

<table class="table-style-three" width= "300" > <!-- 5�� -->
	<thead>
	<tr>
		<th>5��</th>
	</tr>
	</thead>
	<tbody> 
	<tr> 
	<%if(manager.reservationCheck("5", "1", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=5&select=1&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("5", "1", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("5", "2", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=5&select=2&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("5", "2", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("5", "3", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=5&select=3&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("5", "3", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("5", "4", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=5&select=4&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("5", "4", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("5", "5", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=5&select=5&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("5", "5", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	<tr> 
	<%if(manager.reservationCheck("5", "6", "monday").equals("")) { %>
		<td><a href ="reservationPro.jsp?time=5&select=6&day=monday">�������ּ���</a></td>
		<%} else{ %>
		<td><%
		int stu_num = Integer.parseInt(manager.reservationCheck("5", "6", "monday"));
		out.println(manager.reservationStudy(stu_num)); %></td>
		<%} %> 
	</tr>
	</tbody>
</table>
<br><br>
  </center>

</body>
</html>