<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
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
		<meta charset="UTF-8">
		<title>로그인 페이지</title>
		<%@ include file="../include/header.jsp" %>
		<script>
			$(document).ready(function() {
				$("#btnLogin").click(function() {
					const userId = $("#userId").val();
					const userPw = $("#userPw").val();
					
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
					document.login_form.action = "${path}/member/login.do";
					document.login_form.submit();
				})
			})
		</script>
	</head>
	<body>
    <%@ include file="../include/nav.jsp" %>
    
    <c:if test="${msg == 'signupSuccess'}">
        <div style="color: blue;">
            성공적으로 가입하셨습니다. 로그인을 하십시오.
        </div>
    </c:if>
    <form name="login_form" method="post" class="joinForm">

        <h2>로그인</h2>
        <div class="textForm">
        <label for="userId">아이디</label>
        <input name="userId" id="userId"  class="id" />
        </div>

        <div class="textForm">
        <label for="userPw">비밀번호</label>
        <input name="userPw" id="userPw" class="pw" type="password" />
        </div>
        
        <button type="button" id="btnLogin" class="btn" >로그인</button>
        <c:if test="${msg == 'loginFailure'}">
            <div style="color: red;">
                아이디 또는 비밀번호가 일치하지 않습니다
            </div>
        </c:if>
    </form>
</body>
</html>