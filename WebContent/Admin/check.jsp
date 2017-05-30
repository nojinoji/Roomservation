<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="admin.AdminDBBean"%>
<%@ page import="admin.CheckDataBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		AdminDBBean manager = AdminDBBean.getInstance();
		ArrayList<CheckDataBean> list = manager.selectCheck();
	%>
	<h1>출석</h1><br><br>
	<table  class="table table-striped table-hover ">
		<tr class="info">
			<th width="200">스터디 이름</th>
			<th width="200">스터디 종류</th>
			<th width="200">스터디 시간</th>
		</tr>
		<%
			for(int i =0 ; i<list.size(); i++){
				CheckDataBean cdb = list.get(i);
				if(cdb.getStu_enter()== 1){
		%>
			<tr >
				<td><%= cdb.getStu_name() %></td>
				<td><%= cdb.getStu_code() %></td>
				<td><%= cdb.getTime() %></td>
				
			</tr>
		<%
				}
			}
		%>
	</table>
</body>
</html>