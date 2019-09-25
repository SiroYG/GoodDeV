<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<jsp:useBean id="toDay" class="java.util.Date" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
  <head>
    <title>Funding :: Create Funding</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="/cloud/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/animate.css">

    <link rel="stylesheet" href="/cloud/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/owl.theme.default.min.css">

    <link rel="stylesheet" href="/cloud/resources/css/aos.css">
    <link rel="stylesheet" href="/cloud/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="/cloud/resources/css/flaticon.css">
    <link rel="stylesheet" href="/cloud/resources/css/icomoon.css">
    <link rel="stylesheet" href="/cloud/resources/css/style.css">
    <link rel="stylesheet" href="/cloud/resources/css/funding.css">
     	<script>
		function Write(){
			var writeform =document.getElementById("writeform");
			$('#writeform').submit();
		}
	</script>
</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">


    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="/cloud/home">MainLogo</a>
            <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span> Menu
            </button>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav nav ml-auto">
                    <li class="nav-item"><a href="/cloud/home" class="nav-link"><span>Home</span></a></li>
                    <li class="nav-item"><a href="search_menu" class="nav-link"><span>검색</span></a></li>
                    <li class="nav-item"><a href="/cloud/board/boardListForm" class="nav-link"><span>특허 FAQ</span></a></li>
                    <li class="nav-item"><a href="/cloud/survey/surveyListForm" class="nav-link"><span>블라인드 테스트</span></a></li>
                    <li class="nav-item"><a href="/cloud/funding/fundingListForm" class="nav-link"><span>크라우드 펀딩</span></a></li>
                    <li class="nav-item"><a href="#contact-section" class="nav-link"><span>공식 연락처</span></a></li>
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

    <section class="hero-wrap hero-wrap-2" style="background-image: url('/cloud/resources/images/about_7.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-center">
                <div class="col-md-9 ftco-animate pb-5 text-center">
                    <h1 class="mb-3 bread">Crowd Funding</h1>
                    <p class="breadcrumbs"><span class="mr-2"><a href="home">Home <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a href="#">크라우드 펀딩 <i class="ion-ios-arrow-forward"></i></a></span> <span>펀딩 진행하기 <i class="ion-ios-arrow-forward"></i></span></p>
                </div>
            </div>
        </div>
    </section>


    <section class="ftco-section" id="blog-section">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-5">
                <div class="col-md-10 heading-section text-center ftco-animate">
                    <h2 class="mb-4">크라우드 펀딩</h2>
                    <p>소비자와 함께 사업을 시작할 수 있습니다.</p>
                </div>
            </div>
        </div>
        <form action="/cloud/funding/fundingWrite" method="post" id="writeform" enctype="multipart/form-data">
            <div class="write_table">
                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label"><span><b>작성자</b></span></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="" name="memberId" placeholder="${sessionScope.loginId}" readonly="readonly">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label"><span><b>진행 시작 날짜</b></span></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="fundingStartDate" id="" placeholder="<fmt:formatDate value="${toDay}" pattern="yyyy.MM.dd" />" readonly="readonly">
                    </div>

                </div>

                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label"><span><b>진행 마감 날짜</b></span></label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" name="fundingDueDate" id="" placeholder="<fmt:formatDate value="${toDay}" pattern="yyyy.MM.dd" />">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label"><span><b>제목</b></span></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="fundingTitle" id="" placeholder="펀딩 타이틀">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label"><span><b>세부내용</b></span></label>
                    <div class="col-sm-10">
                        <textarea rows="8" cols="112" name="fundingContent" class="form-control"></textarea>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label"><span><b>파일 업로드</b></span></label>
                    <div class="col-sm-10">
                    
                        <input type="file" class="form-control" name="upload" id="" placeholder="" multiple>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label"><span><b>펀딩 목표금액</b></span></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="itemGoalPrice" id="" placeholder="0,000,000">
                    </div>
                </div>
                <fieldset class="form-group">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="appointment_date" class="text-black"><b>구매 옵션명 입력</b></label>
                                <input type="text" class="form-control" name="optionType" id="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="appointment_time" class="text-black">가격</label>
                                <input type="text" class="form-control" name="optionPrice" id="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="appointment_date" class="text-black"><b>구매 옵션명 입력</b></label>
                                <input type="text" class="form-control" name="optionType" id="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="appointment_time" class="text-black">가격</label>
                                <input type="text" class="form-control" name="optionPrice" id="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="appointment_date" class="text-black"><b>구매 옵션명 입력</b></label>
                                <input type="text" class="form-control" name="optionType" id="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="appointment_time" class="text-black">가격</label>
                                <input type="text" class="form-control" name="optionPrice" id="">
                            </div>
                        </div>
                    </div>
                    <br>
                </fieldset>
                <a onclick="Write()"  class="btnss btn-3"><span class="white">등록하기</span></a> 
                &nbsp;&nbsp; <a href="/cloud/funding/fundingListForm" class="btnss btn-3-red"><span class="white">취소</span></a>

            </div>
        </form>
    </section>


    <footer class="ftco-footer ftco-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">About <span></span></h2>
                        <p>창업자가 궁금해하는 것, <br>필요로 하는 것, <br>필요로 할 것들을 최대한 지원하기 위해 만든 사이트입니다.</p>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4 ml-md-4">
                        <h2 class="ftco-heading-2">바로가기</h2>
                        <ul class="list-unstyled">
                            <li><a href="home"><span class="icon-long-arrow-right mr-2"></span>Home</a></li>
                            <li><a href="search_menu.html"><span class="icon-long-arrow-right mr-2"></span>특허 & 제품 검색</a></li>
                            <li><a href="#FAQ-section"><span class="icon-long-arrow-right mr-2"></span>특허 FAQ</a></li>
                            <!--<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Attorneys</a></li>-->
                            <li><a href="survey_list.html"><span class="icon-long-arrow-right mr-2"></span>블라인드 테스트</a></li>
                            <li><a href="funding_list.html"><span class="icon-long-arrow-right mr-2"></span>크라우드 펀딩</a></li>
                            <li><a href="#contact-section"><span class="icon-long-arrow-right mr-2"></span>공식 연락처</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">특허 관련 FAQ</h2>
                        <ul class="list-unstyled">
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"> 특허 검색</span></a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"> 특허의 종류</span></a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"> 특허 등록</span></a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"> 특허 사용 허가</span></a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"> 필요 서류 관련</span></a></li>
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
        </div>
    </footer>



    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg></div>

    <script src="/cloud/resources/js/jquery.min.js"></script>
    <script src="/cloud/resources/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="/cloud/resources/js/popper.min.js"></script>
    <script src="/cloud/resources/js/bootstrap.min.js"></script>
    <script src="/cloud/resources/js/jquery.easing.1.3.js"></script>
    <script src="/cloud/resources/js/jquery.waypoints.min.js"></script>
    <script src="/cloud/resources/js/jquery.stellar.min.js"></script>
    <script src="/cloud/resources/js/owl.carousel.min.js"></script>
    <script src="/cloud/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="/cloud/resources/js/aos.js"></script>
    <script src="/cloud/resources/js/jquery.animateNumber.min.js"></script>
    <script src="/cloud/resources/js/bootstrap-datepicker.js"></script>
    <script src="/cloud/resources/js/jquery.timepicker.min.js"></script>
    <script src="/cloud/resources/js/scrollax.min.js"></script>

    <script src="/cloud/resources/js/main.js"></script>

</body></html>
