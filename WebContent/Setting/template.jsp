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
    
    <%if(session.getAttribute("id")==null){
    %>
    <a href="../Login/main.jsp" data-role="button">Login</a>
    <%}else{
    %>
    <a href="../Login/logout.jsp" data-role="button">Logout</a>
    <%} %>
  </div><!-- /header -->
  <div class="ui-body">
			<h1>설정</h1>
		</div>
<br><br>
<center>
 <jsp:include page='<%=pagefile+".jsp"%>'/>
</center>
  <div data-role="footer" data-position="fixed">
    <div data-role="navbar">
      <ul>
        <li><a href="../index.jsp" data-icon="check" >Home</a></li>
        <li><a href="../Reservation/main.jsp" data-icon="check">예약</a></li>
        <li><a href="#" data-icon="check">출석</a></li>
        <li><a href="main.jsp" data-icon="gear" data-icon="check" class="ui-btn-active ui-state-persist">설정</a></li>
      </ul>
    </div>
  </div>

</div><!-- /page -->
</body>
</html>