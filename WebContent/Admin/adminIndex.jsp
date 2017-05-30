<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">


</head>
<body>
<%
					if (session.getAttribute("admin") == null) {
				%>
<h1>로그인</h1>
<br><br>
<p>
<form name="adminLoginform" action="loginPro.jsp" method="post">
<div class="form-group">
  <label class="control-label" for="focusedInput">Login</label>
  <input class="form-control" name="idInput" id="idInput" type="text" >
</div>
<div class="form-group">
  <label class="control-label" for="focusedInput">Password</label>
  <input class="form-control" name="passwdInput" id="passwdInput" type="password" >
</div>

<br><br>
    <span class="input-group-btn">
      <input class="btn btn-default" type="submit" value ="Login">
    </span>
  </div>
</div>
</p>
<%}else{%>
<h1>로그인 되었습니다.</h1>
<%} %>
</form>
</body>
</html>