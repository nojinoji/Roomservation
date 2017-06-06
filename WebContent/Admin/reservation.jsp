<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="admin.AdminDBBean"%>
<%@ page import="admin.ReservationDataBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>

	<%
		AdminDBBean manager = AdminDBBean.getInstance();
		ArrayList<ReservationDataBean> list = manager.selectReservation();
	%>
	<h1>월요일</h1><br><br>
	<table  class="table table-striped table-hover ">
		<tr class="danger">
			<th width="200">스터디 이름</th>
			<th width="200">예약 시간</th>
			<th width="200">방 번호</th>
			<th width="200">삭제</th>
		</tr>
		<%
			for(int i =0 ; i<list.size(); i++){
				ReservationDataBean rdb = list.get(i);	
				if(rdb.getRes_day().equals("monday")){%>
			<tr >
				<td><%= manager.CheckStudy(rdb.getStu_num()) %></td>
				<td><%= rdb.getRes_time() %></td>
				<td><%= rdb.getRes_room() %>번 방</td>
				<td><INPUT type="button" value="삭제" onClick="location.href='deleteReservation.jsp?res_room=<%=rdb.getRes_room()%>&res_time=<%=rdb.getRes_time()%>&res_day=<%=rdb.getRes_day()%>'"></td>
			</tr>
		<%
			}
		}
		%>
	</table>
	<br><br>
	<h1>화요일</h1><br><br>
	<table  class="table table-striped table-hover ">
		<tr class="danger">
			<th width="200">스터디 이름</th>
			<th width="200">예약 시간</th>
			<th width="200">방 번호</th>
			<th width="200">삭제</th>
		</tr>
		<%
			for(int i =0 ; i<list.size(); i++){
				ReservationDataBean rdb = list.get(i);	
				if(rdb.getRes_day().equals("tuesday")){%>
			<tr >
				<td><%= manager.CheckStudy(rdb.getStu_num()) %></td>
				<td><%= rdb.getRes_time() %></td>
				<td><%= rdb.getRes_room() %>번 방</td>
				<td><INPUT type="button" value="삭제" onClick="location.href='deleteReservation.jsp?res_room=<%=rdb.getRes_room()%>&res_time=<%=rdb.getRes_time()%>&res_day=<%=rdb.getRes_day()%>'"></td>
			</tr>
		<%
			}
		}
		%>
	</table>
	<br><br>
	<h1>수요일</h1><br><br>
	<table  class="table table-striped table-hover ">
		<tr class="danger">
			<th width="200">스터디 이름</th>
			<th width="200">예약 시간</th>
			<th width="200">방 번호</th>
			<th width="200">삭제</th>
		</tr>
		<%
			for(int i =0 ; i<list.size(); i++){
				ReservationDataBean rdb = list.get(i);	
				if(rdb.getRes_day().equals("wednesday")){%>
			<tr >
				<td><%= manager.CheckStudy(rdb.getStu_num()) %></td>
				<td><%= rdb.getRes_time() %></td>
				<td><%= rdb.getRes_room() %>번 방</td>
				<td><INPUT type="button" value="삭제" onClick="location.href='deleteReservation.jsp?res_room=<%=rdb.getRes_room()%>&res_time=<%=rdb.getRes_time()%>&res_day=<%=rdb.getRes_day()%>'"></td>
			</tr>
		<%
			}
		}
		%>
	</table>
	<br><br>
	<h1>목요일</h1><br><br>
	<table  class="table table-striped table-hover ">
		<tr class="danger">
			<th width="200">스터디 이름</th>
			<th width="200">예약 시간</th>
			<th width="200">방 번호</th>
			<th width="200">삭제</th>
		</tr>
		<%
			for(int i =0 ; i<list.size(); i++){
				ReservationDataBean rdb = list.get(i);	
				if(rdb.getRes_day().equals("thursday")){%>
			<tr >
				<td><%= manager.CheckStudy(rdb.getStu_num()) %></td>
				<td><%= rdb.getRes_time() %></td>
				<td><%= rdb.getRes_room() %>번 방</td>
				<td><INPUT type="button" value="삭제" onClick="location.href='deleteReservation.jsp?res_room=<%=rdb.getRes_room()%>&res_time=<%=rdb.getRes_time()%>&res_day=<%=rdb.getRes_day()%>'"></td>
			</tr>
		<%
			}
		}
		%>
	</table>
	<br><br>
	<h1>금요일</h1><br><br>
	<table  class="table table-striped table-hover ">
		<tr class="danger">
			<th width="200">스터디 이름</th>
			<th width="200">예약 시간</th>
			<th width="200">방 번호</th>
			<th width="200">삭제</th>
		</tr>
		<%
			for(int i =0 ; i<list.size(); i++){
				ReservationDataBean rdb = list.get(i);	
				if(rdb.getRes_day().equals("friday")){%>
			<tr >
				<td><%= manager.CheckStudy(rdb.getStu_num()) %></td>
				<td><%= rdb.getRes_time() %></td>
				<td><%= rdb.getRes_room() %>번 방</td>
				<td><INPUT type="button" value="삭제" onClick="location.href='deleteReservation.jsp?res_room=<%=rdb.getRes_room()%>&res_time=<%=rdb.getRes_time()%>&res_day=<%=rdb.getRes_day()%>'"></td>
			</tr>
		<%
			}
		}
		%>
	</table>

</body>
</html>

