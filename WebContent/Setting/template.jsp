<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String pagefile=request.getParameter("pagefile");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Roomservation</title> 
  <meta name="viewport" content="initial-scale=1.0">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <link rel="stylesheet" href="../jquery.mobile-1.3.1.css" />
   <link rel="stylesheet" type="text/css" href="../table.css">
  <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
  <script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>
 
</head>
<body>
<div data-role="page">

  <div data-role="header" data-position="fixed">
    <a href="javascript:history.back()" data-role="button">Back</a>
    <h1>Roomservation</h1>
    
    <%if(session.getAttribute("id")==null){
    %>
    <a href="Login/main.jsp" data-role="button">Login</a>
    <%}else{
    %>
    <a href="Login/logout.jsp" data-role="button">Logout</a>
    <%} %>
  </div><!-- /header -->

<div data-role="content"> 
<br><br>
	<center>
	 <jsp:include page='<%=pagefile+".jsp"%>'/>
	</center>
</div>
   

</div><!-- /page -->
</body>
</html>