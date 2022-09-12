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
        <link href="/./resources/css/board.css" rel="stylesheet" />
		
		<title>게시글 목록</title>
		<%@ include file="../include/header.jsp" %>
		<script>
			$(document).ready(function() {
				$("#btnWrite").click(function() {
					location.href = "${path}/board/write_view.do";
				});
			});
			function list(page) {
				location.href = "${path}/board/list.do?curPage=" + page + "&searchOption=${map.searchOption}&keyword=${map.keyword}";
			}
		</script>
	</head>
	<body>
		<%@ include file="../include/nav.jsp" %>
		<section class="notice">
  <div class="page-title">
        <div class="container">
            <h3>공지사항</h3>
        </div>
    </div>
    
    <!-- board seach area -->
    <div id="board-search">
        <div class="container">
            <div class="search-window">
                <form action="">
                    <div class="search-wrap">
                        <label for="search" class="blind">공지사항 내용 검색</label>
                        
                       
                        
                        <input id="search" type="search" name="keyword" placeholder="검색어를 입력해주세요." value="${map.keyword}">
                        
                        <button type="submit" class="btn btn-dark">검색</button>
                        
                        
                   
                    </div>
                    
                </form>
            </div>
            
        </div>
    </div>
    
    <!-- board list area -->
    <div id="board-list">
        <div class="container">
            <table class="board-table">
                <thead>
                <tr>
                    <th scope="col" class="th-num">번호</th>
                    <th scope="col" class="th-title">제목</th>
                    <th scope="col" class="th-writer">작성자</th>
                    <th scope="col" class="th-date">등록일</th>
                    <th scope="col" class="th-views">조회수</th>
                </tr>
                </thead>
                <tbody>
               <c:forEach var="row" items="${map.list}">
			<tr>
				<td>${row.getBoardId()}</td>
				<td>
					<!-- 검색조건, 검색 키워드, 현재 페이지를 유지하기 위해 -->
					<a href="${path}/board/detail.do?boardId=${row.getBoardId()}&curPage=${map.boardPager.getCurPage()}&searchOption=${map.searchOption}&keyword=${map.keyword}">
						${row.getTitle()}
					</a>
				</td>
				<td>${row.getWriter()}</td>
				<td>
					<fmt:formatDate value="${row.getRegDate()}" pattern="yyyy-MM-dd HH:mm:ss" />
				</td>
				<td>${row.getViews()}</td>
			</tr>
			</c:forEach>
			<tr>
				<td colspan="5">
					<c:if test="${map.boardPager.getCurPage() > 1}">
						<a href="javascript:list('1')">[처음]</a>
					</c:if>
					<c:if test="${map.boardPager.getCurBlock() > 1}">
						<a href="javascript:list('${map.boardPager.getPrevPage()}')">[이전]</a>
					</c:if>
					
					<c:forEach var="num" begin="${map.boardPager.getBlockBegin()}" end="${map.boardPager.getBlockEnd()}">
						<!-- 현재 페이지면 하이퍼링크 제거 -->
						<c:choose>
							<c:when test="${num == map.boardPager.getCurPage()}">
								<span style="color: red;">${num}</span>&nbsp;
							</c:when>
							<c:otherwise>
								<a href="javascript:list('${num}')">${num}</a>&nbsp;
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
					<c:if test="${map.boardPager.getCurBlock() <= map.boardPager.getTotBlock()}">
						<a href="javascript:list('${map.boardPager.getNextPage()}')">[다음]</a>
					</c:if>
					<c:if test="${map.boardPager.getCurPage() < map.boardPager.getTotPage()}">
						<a href="javascript:list('${map.boardPager.getTotPage()}')">[끝]</a>
					</c:if>
				</td>
			</tr>
			
			
                </tbody>
                
                
            </table>
            <c:if test="${sessionScope.userId != null}">
				<button type="button" id="btnWrite"  class="btn btn-dark" style="float: right;" >글쓰기</button>
			</c:if>
            
            
            
        </div>
    </div>


		</section>
	</body>
</html>