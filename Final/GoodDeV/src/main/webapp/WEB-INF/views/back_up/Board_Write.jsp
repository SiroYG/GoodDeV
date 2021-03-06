<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Board :: Board Write</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
<script src="/cloud/resources/js/jquery-ui.min.js"></script>

<link rel="stylesheet"
	href="/cloud/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="/cloud/resources/css/animate.css">

<link rel="stylesheet" href="/cloud/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="/cloud/resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/cloud/resources/css/magnific-popup.css">

<link rel="stylesheet" href="/cloud/resources/css/aos.css">
<link rel="stylesheet" href="/cloud/resources/css/ionicons.min.css">

<link rel="stylesheet" href="/cloud/resources/css/flaticon.css">
<link rel="stylesheet" href="/cloud/resources/css/icomoon.css">
<link rel="stylesheet" href="/cloud/resources/css/style.css">
<link rel="stylesheet" href="/cloud/resources/css/Board.css">

<script>
	function boardWrite() {
		var writeform = document.getElementById("writeform");
		$('#writeform').submit();
	}
</script>

</head>

<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="/cloud/home">SupporterS</a>
			<button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle"
				type="button" data-toggle="collapse" data-target="#ftco-nav"
				aria-controls="ftco-nav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav nav ml-auto">
					<li class="nav-item"><a href="/cloud/home" class="nav-link"><span>Home</span></a></li>
					<li class="nav-item"><a href="/cloud/member/goPatent"
						class="nav-link"><span>특허 / 검색</span></a></li>
					<li class="nav-item"><a href="/cloud/board/boardListForm"
						class="nav-link"><span>Q & A 게시판</span></a></li>
					<li class="nav-item"><a href="/cloud/survey/surveyListForm"
						class="nav-link"><span>블라인드 테스트</span></a></li>
					<li class="nav-item"><a href="/cloud/funding/gofunding"
						class="nav-link"><span>크라우드 펀딩</span></a></li>
					<li class="nav-item"><a href="/cloud/member/Mypage"
						class="nav-link"><span>마이페이지</span></a></li>
					<c:if test="${sessionScope.loginId==null}">
						<li style="margin-left: 20px;" class="nav-item cta"><a
							href="/cloud/member/gologin" class="nav-link">로그인</a></li>
						<li style="margin-left: 20px;" class="nav-item cta"><a
							href="/cloud/member/gosign" class="nav-link">회원가입</a></li>
					</c:if>
					<c:if test="${sessionScope.loginId!=null}">
						<li style="margin-left: 20px;" class="nav-item cta"><a
							class="nav-link">${sessionScope.loginName}
								${sessionScope.loginType}님, 로그아웃 </a></li>
						<!-- <li style="margin-left: 20px;" class="nav-item cta"><a
						href="/cloud/member/logout" class="nav-link">로그아웃</a></li> -->
					</c:if>
				</ul>
			</div>
		</div>
	</nav>

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('/cloud/resources/images/about_6.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate pb-5 text-center">
					<h1 class="mb-3 bread">Q & A Board</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a
							href="blog.html">Q & A 게시판 <i class="ion-ios-arrow-forward"></i></a></span>
						<span>전체 글 목록 <i class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section" id="blog-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-5">
				<div class="col-md-10 heading-section text-center ftco-animate">
					<span class="subheading"></span>
					<h2 class="mb-4">Q & A 게시판</h2>
					<p>궁금한 것을 자유롭게 묻고 답할 수 있습니다.</p>
				</div>
			</div>

			<div class="table">
				<hr class="hr_purple">
				<form action="/cloud/board/boardWrite" method="POST" id="writeform"
					enctype="multipart/form-data">

					<div class="form-group row">
						<label for="" class="col-sm-2 col-form-label"><span><b>작성
									날짜</b></span></label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="boardDate"
								value="19년 09월 15일">
						</div>
					</div>
					<div class="form-group row">
						<label for="" class="col-sm-2 col-form-label"><span><b>작성자</b></span></label>
						<div class="col-sm-10">
							<c:if test="${sessionScope.loginId!=null}">
								<input type="text" class="form-control" name="id"
									value="${sessionScope.loginId}" readonly="readonly">
							</c:if>
							<c:if test="${sessionScope.loginId==null}">
								<input type="text" class="form-control" name="id" value=""
									readonly="readonly">
							</c:if>
						</div>
					</div>

					<div class="form-group row">
						<label for="" class="col-sm-2 col-form-label"><span><b>질문
									분류</b></span></label>
						<div class="col-sm-10">
							<select name="qCategory">
								<option value="etc" selected>일반</option>
								<option value="patent">특허</option>
								<option value="survey">블라인드 테스트</option>
								<option value="funding">크라우드 펀딩</option>
							</select>
							<!-- <input type="email" class="form-control" id="inputEmail3" placeholder="Email">-->
						</div>
					</div>
					<fieldset class="form-group">
						<div class="row">
							<legend class="col-form-label col-sm-2 pt-0">
								<span><b>공개여부</b></span>
							</legend>
							<div class="col-sm-10">
								<div class="form-check">
									<input class="form-check-input" type="radio" name="qType"
										id="gridRadios1" value="public" checked> <label
										class="form-check-label" for="gridRadios1"> 공개 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="qType"
										id="gridRadios2" value="private"> <label
										class="form-check-label" for="gridRadios2"> 비공개 </label><br>
									<label class="form-check-label" for="gridRadios2"> *
										비공개로 설정 시 해당 게시글은 운영자만 확인할 수 있습니다. </label>
								</div>
							</div>
						</div>
					</fieldset>
					<div class="form-group row">
						<label for="" class="col-sm-2 col-form-label"><span><b>제목</b></span></label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="title" id="title"
								placeholder="">
						</div>
					</div>
					<div class="form-group row">
						<label for="" class="col-sm-2 col-form-label"><span><b>내용</b></span></label>
						<div class="col-sm-10">
							<textarea rows="8" cols="112" id="contents" class="form-control"
								name="content"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="" class="col-sm-2 col-form-label"><span><b>파일
									업로드</b></span></label>
						<div class="col-sm-10">
							<input type="file" class="form-control" id="upload" name="upload">
						</div>
					</div>
					<hr class="hr_purple">
					<div class="form-group row">
						<div class="col-sm-10">
							<a onclick="boardWrite()" class="btns btn-3"
								style="cursor: pointer;"><span class="white">작성하기</span></a>
							&nbsp;&nbsp; <a href="/cloud/board/boardListForm"
								class="btns btn-3-red"><span class="white">취소</span></a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>

</body>

<footer class="ftco-footer ftco-section">
	<div class="container">
		<div class="row mb-5">
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">
						About <span>SupporterS</span>
					</h2>
					<p>
						창업자가 궁금해하는 것, <br>필요로 하는 것, <br>필요로 할 것들을 최대한 지원하기 위해 만든
						사이트입니다.
					</p>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4 ml-md-4">
					<h2 class="ftco-heading-2">바로가기</h2>
					<ul class="list-unstyled">
						<li><a href="/cloud/home"><span
								class="icon-long-arrow-right mr-2"></span>Home</a></li>
						<li><a href="/cloud/member/goPatent"><span
								class="icon-long-arrow-right mr-2"></span>검색 및 특허 관련</a></li>
						<li><a href="/cloud/board/boardListForm"><span
								class="icon-long-arrow-right mr-2"></span>Q & A 게시판</a></li>
						<li><a href="/cloud/survey/surveyListForm"><span
								class="icon-long-arrow-right mr-2"></span>블라인드 테스트</a></li>
						<li><a href="/cloud/funding/fundingListForm"><span
								class="icon-long-arrow-right mr-2"></span>크라우드 펀딩</a></li>
						<li><a href="/cloud/home#contact-section"><span
								class="icon-long-arrow-right mr-2"></span>공식 연락처</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">검색 및 특허 관련</h2>
					<ul class="list-unstyled">
						<li><a href="/cloud/member/searchGo"><span
								class="icon-long-arrow-right mr-2"> 특허 검색</span></a></li>
						<li><a href="/cloud/member/"><span
								class="icon-long-arrow-right mr-2"> 제품 검색</span></a></li>
						<li><a href="/cloud/member/goPatent"><span
								class="icon-long-arrow-right mr-2"> 특허 출원 신청</span></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">찾아오는 길</h2>
					<div class="block-23 mb-0">
						<ul>
							<li><span class="icon icon-map-marker"></span><span
								class="text">4th floor, 513, Yeongdong-daero, Gangnam-gu,
									Seoul, Republic of Korea</span></li>
							<li><a href="#"><span class="icon icon-phone"></span><span
									class="text">+82 02 6000 0114</span></a></li>
							<li><a href="#"><span class="icon icon-envelope"></span><span
									class="text">info@yourdomain.com</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
</html>