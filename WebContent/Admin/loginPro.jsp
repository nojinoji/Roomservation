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
String id = String.valueOf(request.getParameter("idInput"));
String pwd = String.valueOf(request.getParameter("passwdInput"));

if(id.equals("admin")){
	if(pwd.equals("1234")){
		session.setAttribute("admin", "admin");
		%>
		<script type="text/javascript">
			alert("로그인이 되었습니다.");
			location.href="main.jsp?profile=adminIndex";
		</script>
		<%
	}else{
		%>
		<script type="text/javascript">
			alert("비밀번호가 틀렸습니다.");
			location.href="main.jsp?profile=adminIndex";
		</script>
		<%	
	}
	
}else{
	%>
	<script type="text/javascript">
		alert("아이디가 틀렸습니다.");
		location.href="main.jsp?profile=adminIndex";
	</script>
	<%
}


%>

</body>
</html>