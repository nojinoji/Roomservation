<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String pagefile=request.getParameter("pagefile");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Roomservation</title> 
  
</head>
<body>
<div data-role="page">

  <div data-role="header" data-position="fixed">
    <a href="javascript:history.back()" data-role="button">Back</a>
    <h1>Roomservation</h1>
    
  </div><!-- /header -->
  
<br><br>
<center>
 <jsp:include page='<%=pagefile+".jsp"%>'/>
</center>
 
</div><!-- /page -->
</body>
</html>