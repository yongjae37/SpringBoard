<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 페이지</title>
		<%@ include file="../include/header.jsp" %>
		<meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Freelancer - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/./resources/css/styles.css" rel="stylesheet" />
        <link href="/./resources/css/signup.css" rel="stylesheet" />
		<script>
			$(document).ready(function() {
				$("#btnSignup").click(function() {
					const userId = $("#userId").val();
					const userPw = $("#userPw").val();
					const confirmPw = $("#confirmPw").val();
					const userName = $("#userName").val();
					const userEmail = $("#userEmail").val();
					
					if(userId == "") {
						alert("아이디를 입력하십시오");
						$("#userId").focus();
						return;
					}
					if(userPw == "") {
						alert("비밀번호를 입력하십시오");
						$("#userPw").focus();
						return;
					}
					if(confirmPw == "") {
						alert("비밀번호 확인을 입력하십시오");
						$("#confirmPw").focus();
						return;
					}
					if(userName == "") {
						alert("이름을 입력하십시오");
						$("#userName").focus();
						return;
					}
					if(userEmail == "") {
						alert("이메일을 입력하십시오");
						$("#userEmail").focus();
						return;
					}
					document.signup_form.action = "${path}/member/signup.do";
					document.signup_form.submit();
				})
			})
		</script>
	</head>
	<body>
		<%@ include file="../include/nav.jsp" %>
		
		<form name="signup_form" method="post" class="joinForm">
			

            <h2>회원가입</h2>
			
			<div class="textForm">
			<label for="userId">아이디</label>
			<input name="userId" id="userId" class="id" />
		<br />   
      </div>
      <div class="textForm">
			<label for="userPw">비밀번호</label>
			<input name="userPw" id="userPw" class="pw" type="password" />
			<br />
      </div>
      <div class="textForm">
			<label for="confirmPw">비밀번호 확인</label>
			<input name="confirmPw" id="confirmPw"  class="pw" type="password" />
			<br />
      </div>
			
      <div class="textForm">
			<label for="userName">이름</label>
			<input name="userName" id="userName" class="name" />
			<br />
      </div>
      <div class="textForm">
			<label for="userEmail">이메일</label>
			<input name="userEmail" id="userEmail"  class="email" type="email" />
			<br />
      </div>
      
			<button type="button" class="btn" id="btnSignup">회원가입</button>
			<c:if test="${msg == 'idError'}">
				<div style="color: red;">
					아이디가 이미 존재합니다
				</div>
			</c:if>
			<c:if test="${msg == 'pwError'}">
				<div style="color: red;">
					비밀번호가 일치하지 않습니다
				</div>
			</c:if>
     
		</form>
	</body>
</html>