<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<jsp:useBean id="toDay" class="java.util.Date" />

<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>SupporterS :: Create Funding</title>
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
    
    <script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
    <script src="/cloud/resources/js/jquery-ui.min.js"></script>
    
     	<script>
     	 $(function(){
     		
     		$('#fundBtn').on('click',function(){
     			var fundingTitle = $('#fundingTitle').val();
     			var fundingContents = $('#fundingContents').val();
     			var upload = $('#upload').val();
     			var itemGoalPrice = $('#itemGoalPrice').val();
     			if(fundingTitle.length== 0||fundingTitle==''){
     					alert('제목을 반드시 입력하시오!');
     					return false;
     			}
     			if(fundingContents.length== 0||fundingContents==''){
 					alert('내용을 반드시  입력하시오!');
 					return false;
 				}	
     			if(upload.length== 0||upload==''){
 					alert('파일을 반드시 첨부하시오!');
 					return false;
 				}	
     			if(itemGoalPrice.length== 0||itemGoalPrice==''){
 					alert('목표금액을  반드시 입력하시오!');
 					return false;
 				}	
     			if(isNaN(itemGoalPrice)){
     				alert('반드시 숫자로 입력하시오!');
 					return false;
     			}
     			$('#writeform').submit();
     		})
     		
     	});
 
	</script>
</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="/cloud/home">SupporterS</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	          <li class="nav-item"><a href="/cloud/home" class="nav-link"><span>Home</span></a></li>
                    <li class="nav-item"><a href="/cloud/member/goPatent" class="nav-link"><span>특허 / 검색</span></a></li>
                    <li class="nav-item"><a href="/cloud/board/boardListForm" class="nav-link"><span>Q & A 게시판</span></a></li>
                    <li class="nav-item"><a href="/cloud/survey/goSurvey_list" class="nav-link"><span>블라인드 테스트</span></a></li>
                    <li class="nav-item"><a href="/cloud/funding/fundingListForm" class="nav-link"><span>크라우드 펀딩</span></a></li>
	  			 <c:if test="${sessionScope.loginId==null}">
	  			 <li style="margin-left: 20px;" class="nav-item cta">
                    <div class="dropdown show">
                        <a class="btn btn-primary py-3 px-4" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="member-btn">로그인/회원가입</span>
                        </a>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="/cloud/member/gologin"><span class="member-btn">로그인</span></a>
                            <a class="dropdown-item" href="/cloud/member/gosign"><span class="member-btn">회원가입</span></a>
                            <a class="dropdown-item" href="/cloud/member/gofindid"><span class="member-btn">아이디/비밀번호 찾기</span></a>
                        </div>
                    </div>
                    </li>
				</c:if>
				
				<c:if test="${sessionScope.loginId!=null}">
				<li style="margin-left: 20px;" class="nav-item cta">
				<div class="dropdown show">
                        <a class="btn btn-primary py-3 px-4" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="member-btn">${sessionScope.loginName} ${sessionScope.loginType}님</span>
                        </a>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="/cloud/member/goMypage">마이페이지</a>
                            <a class="dropdown-item" href="/cloud/member/goupdate">회원 정보 수정</a>
                            <a class="dropdown-item" href="/cloud/member/logout">로그아웃</a>
                        </div>
                    </div>
				</li>
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
        <form action="/cloud/funding/fundingWrite" method="post" id="writeform" enctype="multipart/form-data" >
            <div class="write_table">
                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label"><span><b>작성자</b></span></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="" value="${sessionScope.loginId}" name="memberId" placeholder="${sessionScope.loginId}" readonly="readonly">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label"><span><b>진행 시작 날짜</b></span></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="fundingStartDate" id="startdate" value="<fmt:formatDate value="${toDay}" pattern="yyyy-MM-dd" />" readonly="readonly" onchange="call()">
                    </div>

                </div>

                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label"><span><b>진행 마감 날짜</b></span></label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" name="fundingDueDate" id="enddate" value="<fmt:formatDate value="${toDay}" pattern="yyyy-MM-dd" />" oninput="call()" onchange="call()" >
                    </div>
                </div>
					<input type="hidden" id="days" size="6">
                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label"><span><b>제목</b></span></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="fundingTitle" id="fundingTitle" placeholder="펀딩 타이틀">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label"><span><b>세부내용</b></span></label>
                    <div class="col-sm-10">
                        <textarea rows="8" cols="112" name="fundingContents" id="fundingContents" class="form-control"></textarea>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label"><span><b>파일 업로드</b></span></label>
                    <div class="col-sm-10">
                    
                        <input type="file" class="form-control" name="upload" id="upload" placeholder="" multiple>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label"><span><b>펀딩 목표금액</b></span></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="itemGoalPrice" id="itemGoalPrice" placeholder="0,000,000">
                    </div>
                </div>
               
                <a id="fundBtn" class="btns btn-3"><span class="white">등록하기</span></a> 
                &nbsp;&nbsp; <a href="/cloud/funding/fundingListForm" class="btns btn-3-red"><span class="white">취소</span></a>

            </div>
        </form>
    </section>


    <footer class="ftco-footer ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">About <span>SupporterS</span></h2>
              <p>창업자가 궁금해하는 것, <br>필요로 하는 것, <br>필요로 할 것들을 최대한 지원하기 위해 만든 사이트입니다.</p>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">바로가기</h2>
              <ul class="list-unstyled">
                <li><a href="/cloud/home"><span class="icon-long-arrow-right mr-2"></span>Home</a></li>
                <li><a href="/cloud/member/goPatent"><span class="icon-long-arrow-right mr-2"></span>검색 및 특허 관련</a></li>
                <li><a href="/cloud/board/boardListForm"><span class="icon-long-arrow-right mr-2"></span>Q & A 게시판</a></li>
                <li><a href="/cloud/survey/surveyListForm"><span class="icon-long-arrow-right mr-2"></span>블라인드 테스트</a></li>
                <li><a href="/cloud/funding/fundingListForm"><span class="icon-long-arrow-right mr-2"></span>크라우드 펀딩</a></li>
                <li><a href="/cloud/home#contact-section"><span class="icon-long-arrow-right mr-2"></span>공식 연락처</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">검색 및 특허 관련</h2>
              <ul class="list-unstyled">
                <li><a href="/cloud/member/searchGo"><span class="icon-long-arrow-right mr-2"> 특허 검색</span></a></li>
                <li><a href="/cloud/member/"><span class="icon-long-arrow-right mr-2"> 제품 검색</span></a></li>
                 <li><a href="/cloud/member/goPatent"><span class="icon-long-arrow-right mr-2"> 특허 출원 신청</span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">찾아오는 길</h2>
            	<div class="block-23 mb-0">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">4th floor, 513, Yeongdong-daero, Gangnam-gu, Seoul, Republic of Korea</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+82 02 6000 0114</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
<script>
function call(){
	    var sdd = document.getElementById("startdate").value;
	    var edd = document.getElementById("enddate").value;
	    var ar1 = sdd.split('-');
	    var ar2 = edd.split('-');
	    var da1 = new Date(ar1[0], ar1[1], ar1[2]);
	    var da2 = new Date(ar2[0], ar2[1], ar2[2]);
	    var dif = da2 - da1;
	    var cDay = 24 * 60 * 60 * 1000;// 시 * 분 * 초 * 밀리세컨
	    var cMonth = cDay * 30;// 월 만듬
	    var cYear = cMonth * 12; // 년 만듬
	 if(sdd && edd){

	    document.getElementById('days').value = parseInt(dif/cDay);
	    var days =document.getElementById('days');
	    var edd = document.getElementById("enddate").value;
	    if(days.value<0){
	  	  alert("종료일은 시작일보다 늦어야합니다.");
	  	  $('#enddate').val('');
	  	  return
	    }
	 }
	}

</script>
     <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#6082cc"/></svg></div>

    <script src="/cloud/resources/js/jquery.min.js"></script>
    <script src="/cloud/resources/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="/cloud/resources/js/popper.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
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
