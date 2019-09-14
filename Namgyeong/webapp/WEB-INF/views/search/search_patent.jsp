<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
  <head>
    <title>Search :: Search Patents</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
    <link rel="stylesheet" href="/cloud/resources/css/search.css">
    
    <script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
    <script src="/cloud/resources/js/jquery-ui.min.js"></script>
    
    <script></script>
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
	  
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index">Mainlogo</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	          <li class="nav-item"><a href="home" class="nav-link"><span>Home</span></a></li>
	          <li class="nav-item"><a href="gosearchmenu" class="nav-link"><span>검색</span></a></li>
	          <li class="nav-item"><a href="goBoardlist" class="nav-link"><span>Q & A 게시판</span></a></li>
	          <li class="nav-item"><a href="gosurveylist" class="nav-link"><span>블라인드 테스트</span></a></li>
	          <li class="nav-item"><a href="gofundinglist" class="nav-link"><span>크라우드 펀딩</span></a></li>
	          <li class="nav-item"><a href="gomyPage" class="nav-link"><span>마이페이지</span></a></li>
	          <li style="margin-left: 20px; " class="nav-item cta"><a href="gologin" class="nav-link" data-toggle="modal" data-target="#modalAppointment" style="text-decoration: none;">로그인</a></li>
              <li style="margin-left: 20px;" class="nav-item cta"><a href="gosignin" class="nav-link" data-toggle="modal" data-target="#modalAppointment" style="text-decoration: none;">회원가입</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>

	  <section class="hero-wrap hero-wrap-2" style="background-image: url('images/about_5-1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5 text-center">
            <h1 class="mb-3 bread">Search Patent</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index">Home <i class="ion-ios-arrow-forward"></i></a></span> <!--<span class="mr-2"><a href="blog.html">Q & A 게시판 <i class="ion-ios-arrow-forward"></i></a></span>--> <span>특허 검색 <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
		

<section class="ftco-section" id="blog-section">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-10 heading-section text-center ftco-animate">
            <span class="subheading"></span>
            <h2 class="mb-4">특허 검색</h2>
            <p>산업분야 검색, 단어 검색 등을 지원합니다.</p>
            <hr class="hr_navy">
          </div>
        </div>
          <div class="main_table">
   <div class="search-container">
  <form action="" method="get" id="">
      <label for="patent-type" class="col-sm-2 col-form-label">특허 산업분야</label>
      <select id="patent-type" name="patenttype">
          <option value="" selected>산업분야1</option>
          <option value="" >산업분야2</option>
          <option value="" >산업분야3</option>
          <option value="" >여</option>
          <option value="" >기</option>
          <option value="" >는</option>
          <option value="" >그</option>
          <option value="" >냥</option>
          <option value="" >샘</option>
          <option value="" >플</option>
      </select>
      <label for="patent-option" class="col-sm-2 col-form-label">특허 검색옵션</label>
      <select id="patent-option" name="searchItem">
          <option value="none" selected>구분</option>
          <option value="" >특허명</option>
          <option value="" >특허설명</option>
          <option value="" >특허 보유자명(개인/기업)</option>
          <option value="" >여</option>
          <option value="" >기</option>
          <option value="" >도</option>
          <option value="" >그</option>
          <option value="" >냥</option>
          <option value="" >...</option>
      </select><br><br>
      <label for="patent-word" class="col-sm-2 col-form-label">검색</label>
      <input type="text" class="patent-word" id="patent-word">&nbsp;&nbsp;&nbsp;
      <button type="button" class="btn btn-outline-primary btn-rounded waves-effect">검색하기</button>
  </form>
   </div>
    <!--검색 결과는 검색하기 버튼 누르고 난 후에 떠야 합니다,,,(with.Ajax) 이 테이블은 그저 예시일 뿐-->
        <div class="search-result" id="search-result">
             <table class="table">
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
    <tr>
      <th scope="row" name="boardNum">1</th>
      <td name="qCategory">[일반]</td>
      <td name="title">aaaaaaaaaaaaaaaaaaa</td>
      <td name="id">ididid</td>
      <td name="boardDate">2019-09-09</td>
    </tr>
   <tr>
      <th scope="row" name="boardNum">2</th>
      <td name="qCategory">[특허]</td>
      <td name="title">bbbbbbbbbbb</td>
      <td name="id">ottotto</td>
      <td name="boardDate">2019-09-07</td>
    </tr>
     <tr>
      <th scope="row" name="boardNum">3</th>
      <td name="qCategory">Mark</td>
      <td name="title">aaaa</td>
      <td name="id">Otto</td>
      <td name="boardDate">@mdo</td>
    </tr>
     <tr>
      <th scope="row" name="boardNum">4</th>
      <td name="qCategory">Mark</td>
      <td name="title">aaaa</td>
      <td name="id">Otto</td>
      <td name="boardDate">@mdo</td>
    </tr>
     <tr>
      <th scope="row" name="boardNum">5</th>
      <td name="qCategory">Mark</td>
      <td name="title">aaaa</td>
      <td name="id">Otto</td>
      <td name="boardDate">@mdo</td>
    </tr>
     <tr>
      <th scope="row" name="boardNum">6</th>
      <td name="qCategory">Mark</td>
      <td name="title">aaaa</td>
      <td name="id">Otto</td>
      <td name="boardDate">@mdo</td>
    </tr>
     <tr>
      <th scope="row" name="boardNum">7</th>
      <td name="qCategory">Mark</td>
      <td name="title">aaaa</td>
      <td name="id">Otto</td>
      <td name="boardDate">@mdo</td>
    </tr>
     <tr>
      <th scope="row" name="boardNum">8</th>
      <td name="qCategory">Mark</td>
      <td name="title">aaaa</td>
      <td name="id">Otto</td>
      <td name="boardDate">@mdo</td>
    </tr>
     <tr>
      <th scope="row" name="boardNum">9</th>
      <td name="qCategory">Mark</td>
      <td name="title">aaaa</td>
      <td name="id">Otto</td>
      <td name="boardDate">@mdo</td>
    </tr>
     <tr>
      <th scope="row" name="boardNum">10</th>
      <td name="qCategory">Mark</td>
      <td name="title">aaaa</td>
      <td name="id">Otto</td>
      <td name="boardDate">@mdo</td>
    </tr>
  </tbody>
  
</table>
        </div>
         <hr class="hr_navy">
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
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
  <script src="/cloud/resources/js/scrollax.min.js"></script>
  
  <script src="js/main.js"></script>
    
  </body>
</html>