<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.json.simple.*"%>
<%@ page import="check.CheckDBBean"%>
<% request.setCharacterEncoding("UTF-8");%>

<%
	CheckDBBean manager = CheckDBBean.getInstance();

	String id = request.getParameter("id");
	String check = String.valueOf(request.getParameter("check"));
	String study = "";
	int time = 0;
	System.out.println(id);
	System.out.println(check);
	
	if(!id.equals("")){
		study = manager.CheckStudy(id);
		time = manager.time(study);
		System.out.println(study);
		System.out.println(time);
	}
	if(check.equals("check")){
		manager.Check(study);
		
		
		
		 Thread.sleep(600*1000);	
		
		manager.unCheck(study);
		
		time --;
		manager.timeCalculate(time,study);

	}
	
%>
