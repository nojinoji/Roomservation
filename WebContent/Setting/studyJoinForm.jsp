<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>


		<div data-role="fieldcontain">
			<form name="studyjoinform" action="studyJoinPro.jsp" method="post">
			<label for="select-choice-c" class="select">스터디 종류</label>
			<select name="study" id="study">
            <option value="Freshman Study">Freshman Study </option>
            <option value="A++ Study">A++ Study</option>
            <option value="Jump Study">Jump Study</option>
            <option value="All A Project">All A Project</option>
          </select>
          <br><br><br><br> 
					<label for="name-c">스터디 이름:</label><br>
					<input id="stu_name" name="stu_name" type="text" />
					<br><br><br>
					<label for="name-c">스터디 멤버 1:</label>
					<input id="stu_mem1" name="stu_mem1" type="text" />
					<br><br><br>
					<label for="name-c">스터디 멤버 2:</label>
					<input id="stu_mem2" name="stu_mem2" type="text" />
					<br><br><br>
					<label for="name-c">스터디 멤버 3:</label>
					<input id="stu_mem3" name="stu_mem3" type="text" />
					<br><br><br>		
					<label for="name-c">스터디 멤버 4:</label>
					<input id="stu_mem4" name="stu_mem4" type="text" />
					<br><br><br>
					<label for="name-c">스터디 멤버 5:</label>
					<input id="stu_mem5" name="stu_mem5" type="text" />
					<br><br><br>
					<label for="name-c">스터디 멤버 6:</label>
					<input id="stu_mem6" name="stu_mem6" type="text" />
			        <br><br><br>	
			        <!-- 중복 입력 값 방지 -->
				<button id="process">스터디 가입</button>
				<button id="cancle">취소</button>
			</form>
		</div>
		
</body>
</html>