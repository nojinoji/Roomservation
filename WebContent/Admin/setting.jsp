<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form class="form-horizontal" action ="settingPro.jsp">
		<fieldset>
 
			<center>
			
			<h2>���� ���� ���� ����</h2>
			<br>
			
			<input type="checkBOX" name="day" value="monday"> ������ &nbsp &nbsp
			<input type="checkBOX" name="day" value="tuesday"> ȭ���� &nbsp &nbsp
			<input type="checkBOX" name="day" value="wednesday"> ������ &nbsp &nbsp
			<input type="checkBOX" name="day" value="thursday"> ����� &nbsp &nbsp
			<input type="checkBOX" name="day" value="friday"> �ݿ��� &nbsp&nbsp
			<br><br>
			<button type="submit" class="btn btn-primary">Submit</button>
			<button type="button" onclick="location.href='settingOut.jsp'" class="btn btn-primary">cancel</button>
			</center>
			
			
		</fieldset>
	</form>


</body>
</html>