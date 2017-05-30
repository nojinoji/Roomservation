<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="check.CheckDBBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<%String id = String.valueOf(session.getAttribute("id")); 
 CheckDBBean manager = CheckDBBean.getInstance();
 String study = manager.CheckStudy(id);%>
</head>
<body>
	<h1>내 스터디 : <%=study %></h1>
	<h1>스터디 남은 시간 : <%= manager.time(study)%></h1>
	
</body>
</html>