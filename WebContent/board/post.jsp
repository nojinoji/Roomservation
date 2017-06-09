<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ page import="board.BoardDBBean"%>
<%@ page import="board.BoardBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>글쓰기</title>
<link rel="stylesheet" href="../css/board.css" type="text/css" />
</head>
<body>
<%
BoardDBBean manager = BoardDBBean.getInstance();
int stu_num = manager.memberCheck(String.valueOf(session.getAttribute("id"))); 
%>
	<div class="pagewidth">
		<div class="page-wrap">
			<div class="content">
				<!-- CONTENT -->
				<h3>일지 쓰기</h3>
				<form name="postFrm" method="post" action="postProc.jsp">
					<table border="0" width="100%" align="center">
						<tr>
							<td width="20%">제 목</td>
							</tr>
						<tr>
							<td width="80%"><input type="text" name="title" size="30"
								maxlength="30"></td>
						</tr>
						<tr>
							<td width="20%">내 용</td>
						</tr>
						<tr>
							<td width="80%"><textarea name="content" rows="10" cols="50"></textarea></td>
						</tr>
						
						<tr>
							<td colspan="2"><hr /></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="등록"> 
							<input type="reset" value="다시쓰기"> <input type="button"
								value="리스트" onClick="javascript:location.href='list.jsp'">
							</td>
						</tr>
					</table>
						<input type="hidden" name =stu_name value =<%=manager.checkStudy(stu_num)%> >
					
				</form>
			</div>
			<div class="clear"></div>
		</div>
		
	</div>
</body>
</html>