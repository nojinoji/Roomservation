<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
	
	<% String mem_id = request.getParameter("mem_id");%>
	
<p>
<form name="adminLoginform" action="modifyPro.jsp" method="post">
 
<div class="form-group">
  <label class="control-label" for="focusedInput">아이디 : </label>
  <input class="form-control" name="mem_id" id="mem_id" type="hidden" value="<%=mem_id %>" ><%=mem_id %>
</div>
 <br>
<div class="form-group">
  <label class="control-label" for="focusedInput">이름 :</label>
  <input class="form-control" name="mem_name" id="mem_name" type="text" >
</div>
<div class="form-group">
  <label class="control-label" for="focusedInput">학번 :</label>
  <input class="form-control" name="mem_snum" id="mem_snum" type="text" >
</div>
<div class="form-group">
  <label class="control-label" for="focusedInput">생년월일 :</label>
  <input class="form-control" name="mem_bir" id="mem_bir" type="text" >
</div>
<div class="form-group">
  <label class="control-label" for="focusedInput">전화번호 :</label>
  <input class="form-control" name="mem_phone" id="mem_phone" type="text" >
</div>

<br><br>
    <span class="input-group-btn">
      <input class="btn btn-default" type="submit" value ="수정">
    </span>
  </div>
</div>
</p>
</form>
</div>
</body>
</html>