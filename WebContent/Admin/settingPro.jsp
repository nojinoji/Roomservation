<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

</head>
<body>
	<%String[] day = request.getParameterValues("day");
	

	

	for(int i =0; i<day.length; i++){
		if(day[i].equals("monday")){
			session.setAttribute("day0", "day");
		}if(day[i].equals("tuesday")){
			session.setAttribute("day1", "day");
		}if(day[i].equals("wednesday")){
			session.setAttribute("day2", "day");	
		}if(day[i].equals("thursday")){
			session.setAttribute("day3", "day");	
		}if(day[i].equals("friday")){
			session.setAttribute("day4", "day");	
		}
	}

	
	System.out.println(session.getAttribute("day0"));
	System.out.println(session.getAttribute("day1"));
	System.out.println(session.getAttribute("day2"));
	System.out.println(session.getAttribute("day3"));
	System.out.println(session.getAttribute("day4"));
	

%>
<script type="text/javascript">
location.href="main.jsp?pagefile=setting";
</script>
</body>
</html>