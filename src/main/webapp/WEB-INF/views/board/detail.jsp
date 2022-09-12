<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
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
		<title>${dto.getTitle()}</title>
		<%@ include file="../include/header.jsp" %>
		<link href="/./resources/css/write.css" rel="stylesheet" />
		<script>
			$(document).ready(function() {
				$("#btnUpdate").click(function() {
					location.href = "${path}/board/update_view.do?boardId=${dto.getBoardId()}";
				})
				
				$("#btnDelete").click(function() {
					if(confirm("정말로 삭제하시겠습니까?")) {
						location.href = "${path}/board/delete.do?boardId=${dto.getBoardId()}";
					}
				})
				
				$("#btnList").click(function() {
					// 현재 페이지, 검색 옵션, 검색 키워드를 유지한채 목록으로 이동
					location.href = "${path}/board/list.do?curPage=${param.curPage}&searchOption=${param.searchOption}&keyword=${param.keyword}";
				})
			})
		</script>
		
	</head>
	<body>
	<%@ include file="../include/nav.jsp" %>

<div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    ${dto.getTitle()}
                </div>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>${dto.getBoardId()}</dd>
                    </dl>
                    <dl>
                        <dt>작성자</dt>
                        <dd>${dto.getWriter()}</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd><fmt:formatDate value="${dto.getRegDate()}" pattern="yyyy-MM-dd HH:mm:ss" /></dd>
                    </dl>
                    <dl>
                        <dt>조회</dt>
                        <dd>${dto.getViews()}</dd>
                    </dl>
                </div>
                <div class="cont">
                    ${dto.getContent()}
                </div>
            </div>
            <div class="bt_wrap">
                <c:if test="${sessionScope.userId == dto.getWriter()}">
        <button id="btnUpdate">수정</button>
        <button id="btnDelete">삭제</button>
    </c:if>
    <button id="btnList">목록</button>
            </div>
        </div>
    </div>
    	</body>
</html>