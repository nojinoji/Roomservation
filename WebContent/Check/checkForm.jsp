<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="check.CheckDBBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="initial-scale=1.0">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <link rel="stylesheet" href="../jquery.mobile-1.3.1.css" />
   <link rel="stylesheet" type="text/css" href="../table.css">
  <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
  <script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>
 <%String id = String.valueOf(session.getAttribute("id"));
 	CheckDBBean manager = CheckDBBean.getInstance();
 	String study = manager.CheckStudy(id);%>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">

        function showToast(){
        	
        	var id = "<%=id%>";
            /* 
                Call the 'makeToast' method in the Java code. 
                'app' is specified in MainActivity.java when 
                adding the JavaScript interface. 
             */
            app.makeToast(id,"check");

            return false;
        }

        /* 
            Call the 'showToast' method when the form gets 
            submitted (by pressing button or return key on keyboard). 
         */
        window.onload = function(){
            var form = document.getElementById("form");
            form.onsubmit = showToast;
        }
    </script>
</head>
<body>

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

<%if(session.getAttribute("id")==null){%>
<h1>로그인 후 이용해주세요.</h1>
    <%}
else if(manager.checkCheck(study)){%>
<h1>출석이되었습니다.</h1>
    <%}else{%>
<form id ="form">
<input type="submit" value="check" />
</form>
<%}%>

</body>
</html>