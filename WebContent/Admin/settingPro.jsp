<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

</head>
<body>
	<%String[] day = request.getParameterValues("day");

for(int i =0 ; i<day.length; i++){

	if(!day[i].equals("")){
		session.setAttribute("day"+i, "day");
	}
	System.out.println(session.getAttribute("day"+i));
}
%>
</body>
</html>