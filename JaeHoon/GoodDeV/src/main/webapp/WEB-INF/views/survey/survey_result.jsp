<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
  <head>
    <title>Survey :: Survey Result</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
    <link rel="stylesheet" href="/cloud/resources/css/survey.css">
</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">


    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="home">MainLogo</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	          <li class="nav-item"><a href="home" class="nav-link"><span>Home</span></a></li>
	           <li class="nav-item"><a href="search_menu" class="nav-link"><span>검색</span></a></li>
	          <li class="nav-item"><a href="home#FAQ-section" class="nav-link"><span>특허 FAQ</span></a></li>
	          <li class="nav-item"><a href="survey_list" class="nav-link"><span>블라인드 테스트</span></a></li>
	          <li class="nav-item"><a href="funding_list" class="nav-link"><span>크라우드 펀딩</span></a></li>
	          <li class="nav-item"><a href="index#contact-section" class="nav-link"><span>공식 연락처</span></a></li>
	       <li style="margin-left: 20px;" class="nav-item cta"><a href="login_form.html" class="nav-link" >로그인</a></li>
	       <li style="margin-left: 20px;" class="nav-item cta"><a href="register_form.html" class="nav-link" >회원가입</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>

    <section class="hero-wrap hero-wrap-2" style="background-image: url('/cloud/resources/images/about_8.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-center">
                <div class="col-md-9 ftco-animate pb-5 text-center">
                    <h1 class="mb-3 bread">Blind Test</h1>
                    <p class="breadcrumbs"><span class="mr-2"><a href="index">Home <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a href="blog.html">블라인드 테스트 <i class="ion-ios-arrow-forward"></i></a></span> <span>설문조사 결과 확인 <i class="ion-ios-arrow-forward"></i></span></p>
                </div>
            </div>
        </div>
    </section>


    <section class="ftco-section" id="blog-section">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-5">
                <div class="col-md-10 heading-section text-center ftco-animate">
                    <span class="subheading"></span>
                    <h2 class="mb-4">설문조사 결과</h2>
                    <p>시제품에 대해 실시한 설문조사 결과입니다.<br>
                        모든 설문자의 정보는 익명으로 처리되며, 문항별 점수는 평균점입니다.
                    </p>
                </div>
            </div>

            <hr class="hr_purple">

            <div class="write_table">
           
                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>시작일</b></span></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="startDate" id="" placeholder="2019 - 09 - 04 (목)" readonly="readonly">

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-2 col-form-label"><span><b>마감일</b></span></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="dueDate" id="" placeholder="2019 - 09 - 14 (토)">

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-2 col-form-label"><span><b>제목</b></span></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="" id="" placeholder="@@@을 이용한 ### 제품에 대한 설문조사" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label"><span><b>시제품 설명</b></span></label>
                <div class="col-sm-10">
                    <textarea rows="8" cols="112" class="form-control" name="itemContent" placeholder=""></textarea>
                </div>
            	</div>
            	<div class="form-group row">
                <label for="" class="col-sm-2 col-form-label"><span><b>부가설명</b></span></label>
                <div class="col-sm-10">
                    <textarea rows="8" cols="112" class="form-control" name="description" placeholder=""></textarea>
                </div>
           		</div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>첨부파일</b></span></label>
                        <div class="col-sm-10">
                            <input type="file" class="form-control" name="saveItemImage" id="" placeholder="">
                        </div>
                    </div>

                    <hr class="hr_navy">

                    <div class="survey_form">
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label"><span><b>설문목록</b></span></label>
                            <div class="col-sm-10">
                                <p class="form-control-readonly">질문과 각 질문에 대한 평균 점수입니다.</p>

                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 1) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="question" id="" placeholder="1번 질문,,,"><br>
                                <p name="qValuable">avr(${survey.qValuable})</p> &nbsp; &nbsp;
                                &nbsp; &nbsp; 
                            </div>
                        </div>
                       <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 2) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="question" id="" placeholder="2번 질문,,,"><br>
                                <p name="qValuable">avr(${survey.qValuable})</p> &nbsp; &nbsp;
                                &nbsp; &nbsp; 
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 3) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="question" id="" placeholder="3번 질문,,,"><br>
                                <p name="qValuable">avr(${survey.qValuable})</p> &nbsp; &nbsp;
                                &nbsp; &nbsp; 
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 4) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="question" id="" placeholder="4번 질문,,,"><br>
                                <p name="qValuable">avr(${survey.qValuable})</p> &nbsp; &nbsp;
                                &nbsp; &nbsp; 
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 5) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="question" id="" placeholder="5번 질문,,,"><br>
                                <p name="qValuable">avr(${survey.qValuable})</p> &nbsp; &nbsp;
                                &nbsp; &nbsp; 
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 6) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="question" id="" placeholder="6번 질문,,,"><br>
                                <p name="qValuable">avr(${survey.qValuable})</p> &nbsp; &nbsp;
                                &nbsp; &nbsp; 
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 7) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="question" id="" placeholder="7번 질문,,,"><br>
                                <p name="qValuable">avr(${survey.qValuable})</p> &nbsp; &nbsp;
                                &nbsp; &nbsp; 
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 8) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="question" id="" placeholder="8번 질문,,,"><br>
                                <p name="qValuable">avr(${survey.qValuable})</p> &nbsp; &nbsp;
                                &nbsp; &nbsp; 
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 9) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="question" id="" placeholder="9번 질문,,,"><br>
                                <p name="qValuable">avr(${survey.qValuable})</p> &nbsp; &nbsp;
                                &nbsp; &nbsp; 
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 10) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="question" id="" placeholder="10번 질문,,,"><br>
                                <p name="qValuable">avr(${survey.qValuable})</p> &nbsp; &nbsp;
                                &nbsp; &nbsp; 
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>기타의견</b></span></label>
                        <div class="col-sm-10">
                            <textarea rows="4" cols="112" class="form-control" name="etc" placeholder=""></textarea>
                        </div>
                    </div>
                    <br><br>
                    <div class="form-group row">
                        <div class="col-sm-10">
                            <a href="#" class="btns btn-3"><span class="white">&nbsp;&nbsp;돌아가기&nbsp;&nbsp;</span></a> &nbsp;&nbsp;

                    </div>
            </div>
        </div>
        </div>
    </section>
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
</body>


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
    
    </html>