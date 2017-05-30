<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String pagefile = request.getParameter("pagefile");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Roomservation</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="main.jsp">Roomservation</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<%
					if (session.getAttribute("admin") == null) {
				%>
				<%
					} else {
				%>
				<li><a href="main.jsp?pagefile=member">Member</a></li>
				<li><a href="main.jsp?pagefile=reservation">Reservation </a></li>
				<li><a href="main.jsp?pagefile=check">Check</a></li>
				<li><a href="main.jsp?pagefile=setting">Setting </a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="logout.jsp">Logout</a></li>
			</ul>
			<%
					}
				%>
		</div>
	</div>
	</nav>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		
			<jsp:include page='<%=pagefile + ".jsp"%>' />
		
	</div>

</body>
</html>