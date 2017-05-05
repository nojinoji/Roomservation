<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="login.LogonDBBean"%>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="member" class="login.LogonDataBean">
	<jsp:setProperty name="member" property="*" />
</jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
LogonDBBean manager = LogonDBBean.getInstance();
boolean result = manager.insertMember(member); 


if(result){ %>
<script type="text/javascript">
alert("회원가입을 하였습니다.");
location.href="main.jsp";
</script>
<%}else{%>
	<script type="text/javascript">
	alert("회원가입에 실패 하였습니다.");
	history.back();	
	</script>

<%}

%>
</body>
</html>