<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="login.LogonDBBean"%>
<% request.setCharacterEncoding("UTF-8");%>

<%
LogonDBBean manager = LogonDBBean.getInstance();
String user = request.getParameter("user_number");
int flag = 0;
String str = "";
if(user == null){
    user = "";
}

if(!user.equals("")){
    flag = manager.confirmId(user);
}
if(flag == 1){    // 이미 존재하는 계정
    str = "NO";
    out.print(str);

}else{        // 사용가능한 계정
    str = "YES";
    out.print(str);
}
%>



