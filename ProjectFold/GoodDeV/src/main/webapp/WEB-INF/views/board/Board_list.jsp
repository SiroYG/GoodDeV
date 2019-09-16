<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <title>Board List :: </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900" rel="stylesheet">
<script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
    <script src="/cloud/resources/js/jquery-ui.min.js"></script>
   
    <link rel="stylesheet" href="/cloud/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/animate.css">
    
    <link rel="stylesheet" href="/cloud/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="/cloud/resources/css/aos.css">

    <link rel="stylesheet" href="/cloud/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="/cloud/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/cloud/resources/css/jquery.timepicker.css">
    
    <link rel="stylesheet" href="/cloud/resources/css/flaticon.css">
    <link rel="stylesheet" href="/cloud/resources/css/icomoon.css">
    <link rel="stylesheet" href="/cloud/resources/css/style.css">
    <link rel="stylesheet" href="/cloud/resources/css/Header.css">
<!--     <link rel="stylesheet" href="/cloud/resources/css/Board.css"> -->
    
    <script type="text/javascript">
		function submit() {
			$("#searchForm").submit();
		}
	</script>	
  </head>
<header class="header">
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="/cloud/home">MainLogo</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	          <li class="nav-item"><a href="/cloud/home" class="nav-link"><span>Home</span></a></li>
	          <li class="nav-item"><a href="/cloud/board/boardListForm" class="nav-link"><span>Q & A게시판</span></a></li>
	          <li class="nav-item"><a href="#" class="nav-link"><span>블라인드 테스트</span></a></li>
	          <li class="nav-item"><a href="#" class="nav-link"><span>크라우드 펀딩</span></a></li>
	         <li class="nav-item"><a href="#" class="nav-link"><span>마이페이지</span></a></li>		
	         	<c:if test="${sessionScope.loginId==null}">
					<li style="margin-left: 20px;" class="nav-item cta"><a
						href="/cloud/member/gologin" class="nav-link">로그인</a></li>
					<li style="margin-left: 20px;" class="nav-item cta"><a
						href="/cloud/member/gosign" class="nav-link">회원가입</a></li>
				</c:if>
				<c:if test="${sessionScope.loginId!=null}">
					<li style="margin-left: 20px;" class="nav-item cta"><a
							 class="nav-link">${sessionScope.loginName} ${sessionScope.loginType}님 </a></li>
					<li style="margin-left: 20px;" class="nav-item cta"><a
						href="/cloud/member/logout" class="nav-link">로그아웃</a></li>
				</c:if>
	        </ul>
	      </div>
	    </div>
	  </nav>
	  </header>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  
  <div class="first">
<h1 style="margin-top: 5%;">Q & A 게시판</h1>
 <p class="sub_title"><br>창업 및 특허 관련 사항들을<br>
 자유롭게 묻고 답할 수 있습니다.</p>
  </div>
  
  <div class="main_table">
   
   <table class="table">
   <caption>
 <a href="/cloud/board/gowrite" class="btns btn-3">글쓰기</a></caption>
  <thead class="navy">
    <tr>
      <th scope="col">No.</th>
      <th scope="col">분류</th>
      <th scope="col">제목</th>
      <th scope="col">작성자</th>
      <th scope="col">작성날짜</th>
    </tr>
  </thead>
  <tbody>
    	<!-- 게시글이 없는 경우 -->
			<c:if test="${empty list}">
				<tr>
					<td colspan="5" align="center">데이터가 없습니다.</td>
				</tr>
			</c:if>
			<!-- 게시글이 있는 경우 -->
			<c:if test="${not empty list }">
				<c:forEach var="board" items="${list}" varStatus="stat">
					<tr> 
						<th scope="row" name="boardNum">${stat.count + navi.startRecord}</th>
						<td>${board.qCategory}</td>
						<td class="board_title"><a href="boardDetail?boardNum=${board.boardNum}">${board.title}</a></td>
						<td>${board.id}</td>
						<td>${board.boardDate}</td>
					</tr>
				</c:forEach>
			</c:if>
  </tbody>
</table>

  <!--페이징 & 검색-->
  <div class="page-center">
  <nav class="paging">
  <ul class="pagination justify-content-center">
    <li class="page-item">
      <a class="page-link" aria-label="Previous" href="boardListForm?currentPage=${navi.currentPage-navi.pagePerGroup}&searchItem=${searchItem}&searchWord=${searchWord}">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
<!--     <li class="page-item active"><a class="page-link">1</a></li> -->
	<c:forEach var="page" begin="${navi.startPageGroup}" end="${navi.endPageGroup }">
		    <li class="page-item"><a href="boardListForm?currentPage=${page}&searchItem=${searchItem}&searchWord=${searchWord}"class="page-link">${page}</a>
	</c:forEach>
    <li class="page-item">
      <a class="page-link" aria-label="Next" href="boardListForm?currentPage=${navi.currentPage-1}&searchItem=${searchItem}&searchWord=${searchWord}">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
  </ul>
</nav>
      </div>
<form action="/cloud/board/boardListForm" method="get" class="search-form" id="searchForm">
<!--Blue select-->
<select name="searchItem" class="searchItem">
 <option value="all">전체</option>
  <option value="title" ${searchItem =='title'?'selected' :''}>제목</option>
  <option value="content" ${searchItem =='content'? 'selected' :'' }>내용</option>
  <option value="id" ${searchItem =='userid'?'selected' :'' }>작성자</option>
</select>
<input type="text" name="searchWord" value="${searchWord}" class="searchWord" placeholder="Search">
<button type="submit" class="btn btn-outline-primary btn-rounded waves-effect">검색하기</button>
</form>
  </div>   
    </body>
    <footer class="ftco-footer ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">About <span>Neutral</span></h2>
              <p>창업자가 궁금해하는 것, <br>필요로 하는 것, <br>필요로 할 것들을 최대한 지원하기 위해 만든 사이트입니다.</p>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">바로가기</h2>
              <ul class="list-unstyled">
                <li><a href="#home-section"><span class="icon-long-arrow-right mr-2"></span>Home</a></li>
                <li><a href="#about-section"><span class="icon-long-arrow-right mr-2"></span>소개글</a></li>
                <li><a href="#practice-section"><span class="icon-long-arrow-right mr-2"></span>특허 FAQ</a></li>
                <!--<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Attorneys</a></li>-->
                <li><a href="#blog-section"><span class="icon-long-arrow-right mr-2"></span>설문조사</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>공식 연락처</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">특허 관련 FAQ</h2>
              <ul class="list-unstyled">
                 <li><a href="#"><span class="icon-long-arrow-right mr-2">특허 검색</span></a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2">특허 출원</span></a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2">특허 사용 허가</span></a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2">특허의 종류</span></a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2">필요 서류 관련</span></a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2">특허 절차 관련 수수료</span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">찾아오는 길</h2>
            	<div class="block-23 mb-0">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">Class B, 4th floor, 513, Yeongdong-daero, Gangnam-gu, Seoul, Republic of Korea</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+82 02 6000 0114</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
	            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-4">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>

</html>