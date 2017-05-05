<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="study.StudyDBBean"%>
<% request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

StudyDBBean manager = StudyDBBean.getInstance();

String study = request.getParameter("study");
String stu_code = "";
int stu_time = 0;
int count = 0;

String stu_name = request.getParameter("stu_name");

if(study.equals("Freshman Study")){
	stu_code = "ST01";
	stu_time = 10;
}else if(study.equals("A++ Study")){
	stu_code = "ST02";
	stu_time = 30;
}else if(study.equals("Jump Study")){
	stu_code = "ST03";
	stu_time = 30;
}else{
	stu_code = "ST04";
	stu_time = 50;
}
 
boolean flag = manager.insertStudy(stu_code, stu_name, stu_time);

if(flag){
	int stu_num = manager.confirmStudyNum(stu_name);

	
	String stu_mem1 = request.getParameter("stu_mem1");
	if(!stu_mem1.equals("")){
		count++;	
	}
	String stu_mem2 = request.getParameter("stu_mem2");
	if(!stu_mem2.equals("")){
		count++;	
	}
	String stu_mem3 = request.getParameter("stu_mem3");
	if(!stu_mem3.equals("")){
		count++;	
	}
	String stu_mem4 = request.getParameter("stu_mem4");
	if(!stu_mem4.equals("")){
		count++;	
	}
	String stu_mem5 = request.getParameter("stu_mem5");
	if(!stu_mem5.equals("")){
		count++;	
	}
	String stu_mem6 = request.getParameter("stu_mem6");
	if(!stu_mem6.equals("")){
		count++;	
	}
	
	int i = 0;
	
	if(!stu_mem1.equals("")){
		if(manager.confirmId(stu_mem1)){
			manager.insertStudyMember(stu_num, stu_mem1);
			i++;
		}
	}
	if(!stu_mem2.equals("")){		
		if(manager.confirmId(stu_mem2)){
			manager.insertStudyMember(stu_num, stu_mem2);
			i++;
		}
	}
	if(!stu_mem3.equals("")){
		if(!stu_mem3.equals("")){
			manager.insertStudyMember(stu_num, stu_mem3);
			i++;
		}
	}
	if(!stu_mem4.equals("")){
		if(!stu_mem4.equals("")){
			manager.insertStudyMember(stu_num, stu_mem4);
			i++;
		}
	}
	if(!stu_mem5.equals("")){
		if(!stu_mem5.equals("")){
			manager.insertStudyMember(stu_num, stu_mem5);
			i++;
		}
	}
	if(!stu_mem6.equals("")){
		if(!stu_mem6.equals("")){
			manager.insertStudyMember(stu_num, stu_mem6);
			i++;
		}
	}
	
	if(i == count){
		%>
		<script type="text/javascript">
		alert("가입되었습니다.");
		location.href="main.jsp";

		</script>
		<% 
	}
	
	
}
	%>
	

</body>
</html>