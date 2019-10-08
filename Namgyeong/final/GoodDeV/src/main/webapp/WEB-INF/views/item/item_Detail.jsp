<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>Item :: </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="/cloud/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/animate.css">

    <link rel="stylesheet" href="/cloud/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="/cloud/resources/css/aos.css">
    <link rel="stylesheet" href="/cloud/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="/cloud/resources/css/flaticon.css">
    <link rel="stylesheet" href="/cloud/resources/css/icomoon.css">
    <link rel="stylesheet" href="/cloud/resources/css/style.css">
    <link rel="stylesheet" href="/cloud/resources/css/item.css">
    
    <script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
	<script src="/cloud/resources/js/jquery-ui.min.js"></script>
    <script>
    var document_nm='';
    var itemNum='';
    $(function(){
    	
    	
    	$('#saveDocumentFilename').on('click',function(){
    		 document_nm=$('#saveDocumentFilename').val();
    		 itemNum=$('#getItemNum').val();
    		alert(document_nm);
    		alert(itemNum);

    		fn_downfile(document_nm);
    		
    	})
    
    })
    
    
    
    function fn_downfile(document_nm){ 
        location.href="/cloud/item/fileDownload?document_nm=" + document_nm+"&itemNum="+itemNum;
      }
    
    
    </script>
   
</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
<input type="hidden" id="getItemNum" value="${ it.itemNum }">

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

    <section class="hero-wrap hero-wrap-2" style="background-image: url('/cloud/resources/images/about_5-1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-center">
                <div class="col-md-9 ftco-animate pb-5 text-center">
                    <h1 class="mb-3 bread">Create Items</h1>
                    <p class="breadcrumbs"><span class="mr-2"><a href="home">Home <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a href="#">특허 및 제품 등록 <i class="ion-ios-arrow-forward"></i></a></span> <span>제품 및 서비스 조회 <i class="ion-ios-arrow-forward"></i></span></p>
                </div>
            </div>
        </div>
    </section>


    <section class="ftco-section" id="blog-section">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-5">
                <div class="col-md-10 heading-section text-center ftco-animate">
                    <span class="subheading"></span>
                    <h2 class="mb-4">제품 및 서비스 조회</h2>
                    <p>등록한 제품 및 서비스를 조회할 수 있습니다.</p><br>
                    <hr class="hr_navy">
                </div>
            </div>
            <div class="main_table">
                <form action="" method="POST" id="">
                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>작성일</b></span></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="ideaDate" id="ideaDate" value="${it.ideaDate}" placeholder="${it.ideaDate}" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>수정일</b></span></label>
                        <div class="col-sm-10">
                           <!--최초 작성시 아이디어날짜는 기존 ideaDate 고정, 등록 날짜는 최근 업데이트 날짜 갱신-->
                            <input type="text" class="form-control" name="itemRegDate" id="itemRegDate" value="${time}" placeholder="${tiem}"  readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>제품/서비스명</b></span></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="itemName" id="itemName"  value="${it.itemName}" placeholder="${it.itemName}" readonly="readonly">
                        </div>
                    </div>
                     <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>출시 희망 가격</b></span></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="price" id="price" value="${it.price}" placeholder="${it.price}" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-2 col-form-label"><span><b>제품/서비스 요약</b></span></label>
                        <div class="col-sm-10">
                            <textarea rows="8" cols="112" class="form-control" name="itemContent" value="${it.itemContent}" readonly="readonly">${it.itemContent}</textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>이미지 파일</b></span></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="itemImagename" value="${tt}" readonly="readonly" id="itemImagename">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>관련 특허 서식 파일</b></span></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="documentFilename" value="${yy}" readonly="readonly" id="saveDocumentFilename">
                        </div>
                    </div><br>
                    <hr class="hr_navy"><br><br>
                     <a href="/cloud/member/goMypage" class="btns btn-3"><span class="white">돌아가기</span></a> &nbsp;&nbsp; 
                     <a href="/cloud/item/goItemUpdate?itemNum=${ it.itemNum }" class="btns btn-3-green"><span class="white">수정하기</span></a> &nbsp;&nbsp; 
                     <a href="/cloud/item/goItemDelete?itemNum=${ it.itemNum }" class="btns btn-3-red"><span class="white">삭제</span></a> 
                </form>
            </div>

        </div>
    </section>


    <footer class="ftco-footer ftco-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">About <span>Neutral</span></h2>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4 ml-md-4">
                        <h2 class="ftco-heading-2">Links</h2>
                        <ul class="list-unstyled">
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Home</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>About</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Practice Areas</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Attorneys</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Blog</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">Practice Areas</h2>
                        <ul class="list-unstyled">
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Family Law</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Business Law</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Insurance Law</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Criminal Law</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Drug Offenses</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Property Law</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Employment Law</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">Have a Questions?</h2>
                        <div class="block-23 mb-0">
                            <ul>
                                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
                                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
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
    <script src="//netdna.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="/cloud/resources/js/jquery.easing.1.3.js"></script>
    <script src="/cloud/resources/js/jquery.waypoints.min.js"></script>
    <script src="/cloud/resources/js/jquery.stellar.min.js"></script>
    <script src="/cloud/resources/js/owl.carousel.min.js"></script>
    <script src="/cloud/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="/cloud/resources/js/aos.js"></script>
    <script src="/cloud/resources/js/jquery.animateNumber.min.js"></script>
    <script src="/cloud/resources/js/scrollax.min.js"></script>

    <script src="/cloud/resources/js/main.js"></script>

</body></html>