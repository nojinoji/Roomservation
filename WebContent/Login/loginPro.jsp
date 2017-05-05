<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="login.LogonDBBean"%>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
String id = request.getParameter("id");
String passwd = request.getParameter("pass");

LogonDBBean logon = LogonDBBean.getInstance();

int check= logon.userCheck(id,passwd);

if(check==1){
session.setAttribute("id",id);%>
<script type="text/javascript">
alert("로그인이 되었습니다.");
location.href="../index.jsp";
</script>
<%}else if(check ==0){%>
<script type="text/javascript">
alert("비밀번호가 맞지 않습니다.");
history.go(-1);
</script>
<%}else{ %>
<script type="text/javascript">
alert("아이디가 맞지 않습니다.");
history.go(-1);
</script>
<%}%>

</body>
</html>


