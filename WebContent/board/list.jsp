<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@page import="java.util.ArrayList"%>
<%@ page import="board.BoardDBBean"%>
<%@ page import="board.BoardBean"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>게시판</title>
<meta name="viewport" content="initial-scale=1.0">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <link rel="stylesheet" href="../jquery.mobile-1.3.1.css" />
   <link rel="stylesheet" type="text/css" href="../table.css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>

<body>
	
	<%
		BoardDBBean manager = BoardDBBean.getInstance();
		ArrayList<BoardBean> list = manager.selectBoard();
		String study = manager.checkStudy(manager.memberCheck( String.valueOf( session.getAttribute("id"))));
		
	%>
	<br>
	<br><br>
	<div class="container">

	<table class="table-style-three">
		<tr class="info">
			<th width="50">번호</th>
			<th width="130">제 목</th>
			<th width="130">스터디 이름</th>
			<th width="100">날짜</th>
		</tr>
		<%
			for(int i =0 ; i<list.size(); i++){
				BoardBean bb = list.get(i);	
		%>
		
			<tr >
				
				<td><%= bb.getIdx()  %></td>
				<td><a href="read.jsp?idx=<%=bb.getIdx()%>"><%= bb.getTitle() %><a> </td>
				<td><%= bb.getStu_name() %></td>
				<td><%= bb.getReg_date() %></td>  
				
			</tr>
		<%
			}
		%>
	</table>
	<br><br>
	<button onclick="location.href='post.jsp'">글쓰기</button>	
	</div>
</body>
</html>