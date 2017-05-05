<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

</head>
<body>
<div class="ui-body">
			<h1>로그인</h1>
		</div>
	<div data-role="fieldcontain">
	<form name="loginform" action="loginPro.jsp" method="post">
             <label for="name-c">로그인:</label>
             <input id="id" name="id" type="text"/>
             <br>
             <label for="name-c">비밀번호:</label>
             <input type="password" id="pass" name="pass" />
             <br><br>
       <input type="submit" value=" 로그인" ">
       <a href="main.jsp?pagefile=joinForm" data-role="button">회원가입</a>
       </form>
       </div>

</body>
</html>