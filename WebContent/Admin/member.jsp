<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="admin.AdminDBBean"%>
<%@ page import="admin.MemberDataBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>

	<%
		AdminDBBean manager = AdminDBBean.getInstance();
		ArrayList<MemberDataBean> list = manager.selectMember();
	%>

	<table  class="table table-striped table-hover ">
		<tr class="info">
			<th width="200">회원 아이디</th>
			<th width="200">회원 이름</th>
			<th width="200">회원 학번</th>
			<th width="200">회원 생년월일</th>
			<th width="200">핸드폰 번호</th>
			<th width="200">스터디</th>
			<th width="200">비 고</th>
		</tr>
		<%
			for(int i =0 ; i<list.size(); i++){
				MemberDataBean mdb = list.get(i);	
		%>
		
			<tr >
				
				<td><%= mdb.getMem_id()  %></td>
				<td><%= mdb.getMem_name() %> </td>
				<td><%= mdb.getMem_snum() %></td>
				<td><%= mdb.getMem_bir() %></td>  
				<td><%= mdb.getMem_phone() %></td>
				<td><%= manager.CheckStudy(mdb.getStu_num()) %> </td>
				<td>
				<INPUT type="button" value="수정" onClick="location.href='modifyForm.jsp?mem_id=<%=mdb.getMem_id()%>'">
				<INPUT type="button" value="삭제" onClick="location.href='deleteMember.jsp?mem_id=<%=mdb.getMem_id()%>'">
				</td>
			</tr>
		<%
			}
		%>
		
	</table>

</body>
</html>
