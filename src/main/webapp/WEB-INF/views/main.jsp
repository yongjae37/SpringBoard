<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Home</title>
		<%@ include file="./include/header.jsp" %>
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
	</head>
	<body>
		<%@ include file="./include/nav.jsp" %>
	
		<img class="masthead-avatar mb-5" src="/resources/assets/img/main2.jpg" alt="..." />
		<c:if test="${msg == 'loginSuccess'}">
			<h3>${sessionScope.userName}(${sessionScope.userId})님 환영합니다.</h3>
		</c:if>
		<%@ include file="./include/footer.jsp" %>
	</body>
</html>