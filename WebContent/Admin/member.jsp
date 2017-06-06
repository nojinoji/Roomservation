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
			<th width="200">ȸ�� ���̵�</th>
			<th width="200">ȸ�� �̸�</th>
			<th width="200">ȸ�� �й�</th>
			<th width="200">ȸ�� �������</th>
			<th width="200">�ڵ��� ��ȣ</th>
			<th width="200">���͵�</th>
			<th width="200">�� ��</th>
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
				<INPUT type="button" value="����" onClick="location.href='modifyForm.jsp?mem_id=<%=mdb.getMem_id()%>'">
				<INPUT type="button" value="����" onClick="location.href='deleteMember.jsp?mem_id=<%=mdb.getMem_id()%>'">
				</td>
			</tr>
		<%
			}
		%>
		
	</table>

</body>
</html>
