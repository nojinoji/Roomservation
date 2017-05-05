<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript">
$(function(){
    $('#check').click(function(){
        $.ajax({
            type:"POST",
            url:"confirmId.jsp",
            data:{
                "user_number": $('#user_number').val()
            },
            success:function(data){
                if($.trim(data) == "YES"){
                    alert('사용가능');
                    //$('#idchk').html('<b style="font-size:18px;color:blue">사용가능.</b>');
                }else{
                    alert('사용불가');
                    //$('#idchk').html('<b style="font-size:18px;color:red">사용불가.</b>');
                }
            }
        });    
    });
});

</script>

<title>Roomservation</title>
</head>
<body>
	

		<div class="ui-body">
			<h1>회원가입</h1>
		</div>

		<div data-role="fieldcontain">
			<form name="joinform" action="joinPro.jsp" method="post">
				<label for="name-c">아이디:</label> 
				<input id="mem_id" name="mem_id" type="text" /> 
				<input type="button" value="중복확인" id= "check"> 
				<br>
				<label for="name-c">비밀번호:</label> 
				<input id="mem_pwd" name="mem_pwd" type="password" />
				 <br> 
				<label for="name-c">비밀번호 재확인:</label>
				<input id="repwd" name="repwd" type="password" /> 
				<br> 
				<label for="name-c">이름:</label>
				<input id="mem_name" name="mem_name" type="text" />
				<br> 
				<label for="name-c">학번:</label>
				<input id="mem_snum" name="mem_snum" type="text" />
				<br> 
				<label for="name-c">생년월일:</label> 
				<input id="mem_bir" name="mem_bir" type="text" />
				<br>
				<label for="name-c">핸드폰 번호:</label>
				<input id="mem_phone" name="mem_phone" type="text" />
				<br>
				 <br> <br>
				<button id="process">회원가입</button>
				<button id="cancle">취소</button>
			</form>
		</div>
		
</body>
</html>