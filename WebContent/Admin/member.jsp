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
			<th width="200">����</th>
		</tr>
		<%
			for(int i =0 ; i<list.size(); i++){
				MemberDataBean mdb = list.get(i);	
		%>
		<form action = memberPro.jsp>
			<tr >
				<td><input type="text" name="mem_id" value=<%= mdb.getMem_id()  %> size="10"></td>
				<td><input type="text" name="mem_name" value=<%= mdb.getMem_name() %> size="15"></td>
				<td><input type="text" name="mem_snum" value=<%= mdb.getMem_snum() %> size="15"></td>
				<td><input type="text" name="mem_bir" value=<%= mdb.getMem_bir() %> size="15" ></td>  
				<td><input type="text" name="mem_phone" value=<%= mdb.getMem_phone() %> size="15"></td>
				<td><%= manager.CheckStudy(mdb.getStu_num()) %> </td>
				<td><input type="submit" value ="����"> </td>
			</tr>
		<%
			}
		%>
		</form>
	</table>

</body>
</html>
