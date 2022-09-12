<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Freelancer - Start Bootstrap Theme</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="/resources/assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/./resources/css/styles.css" rel="stylesheet" />
<title>게시글 작성 페이지</title>
<%@ include file="../include/header.jsp"%>
<%@ include file="../include/sessionCheck.jsp"%>
<link href="/./resources/css/board.css" rel="stylesheet" />
<link href="/./resources/css/write.css" rel="stylesheet" />
<script>
	$(document).ready(function() {
		$("#btnSave").click(function() {
			const title = $("#title").val();
			const content = $("#content").val();

			if (title === "") {
				alert("제목을 입력하십시오.");
				document.write_form.title.focus();
				return;
			}
			if (content === "") {
				alert("내용을 입력하십시오.");
				document.write_form.content.focus();
				return;
			}
			document.write_form.submit();
		})
	})
</script>
</head>
<body>
	<%@ include file="../include/nav.jsp"%>
	<div class="board_wrap">
		<div class="board_title">
			<strong>공지사항</strong>
			<p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
		</div>
		<form name="write_form" method="post" action="${path}/board/write.do">
			<div class="board_write_wrap">
				<div class="board_write">
					<div class="title">
						<dl>
							<dt>제목</dt>
							<dd>
								<input type="text" name="title" id="title" placeholder="제목 입력">
							</dd>
						</dl>
					</div>
					<div class="info">
						<dl>
							<dt>글쓴이</dt>
							<dd>
								<input type="text" placeholder="글쓴이 입력">
							</dd>
						</dl>
						<dl>
							<dt>비밀번호</dt>
							<dd>
								<input type="password" placeholder="비밀번호 입력">
							</dd>
						</dl>
					</div>
					<div class="cont">
						<textarea name="content" id="content" placeholder="내용 입력"></textarea>
					</div>
				</div>
			</div>
		</form>
		<div class="bt_wrap">
			<button type="button" class="on" id="btnSave">확인</button>
			<button type="reset">취소</button>
		</div>
	</div>
	</div>
</body>
</html>