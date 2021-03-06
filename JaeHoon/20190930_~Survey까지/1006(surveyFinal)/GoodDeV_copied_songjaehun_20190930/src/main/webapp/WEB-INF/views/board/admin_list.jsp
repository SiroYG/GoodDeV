<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
  <head>
    <title>Neutral - Free Bootstrap 4 Template by Colorlib</title>
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
    <link rel="stylesheet" href="/cloud/resources/css/survey.css">
    
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

	  <section class="hero-wrap hero-wrap-2" style="background-image: url('images/about_6.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5 text-center">
            <h1 class="mb-3 bread">Q & A Board :: Admin</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="home">Home <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a href="blog.html">운영자 페이지 <i class="ion-ios-arrow-forward"></i></a></span> <span>Q & A 전체 글 목록 <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
		

<section class="ftco-section" id="">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-10 heading-section text-center ftco-animate">
            <span class="subheading"></span>
            <h2 class="mb-4">운영자 전용 Q & A 게시판</h2>
            <p>공개 여부와 관계없이 모든 게시글을 조회할 수 있습니다.<br>
            운영진은 게시글에 대한 답변 글만 작성 가능합니다.
            </p>
            <!-- 운영자 게시글은 글의 공개/비공개 여부와 상관없이 모두 출력 가능해야해서 구분해놨습니다..! -->
          </div>
        </div>
          <div class="main_table">
   
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
     <br><br> 
       <!--페이징 & 검색-->
  <div class="page-center">
  
  <nav>
  <ul class="pagination justify-content-center">
    <li class="page-item">
      <a class="page-link" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
    <li class="page-item active"><a class="page-link">1</a></li>
    <li class="page-item"><a class="page-link">2</a></li>
    <li class="page-item"><a class="page-link">3</a></li>
    <li class="page-item"><a class="page-link">4</a></li>
    <li class="page-item"><a class="page-link">5</a></li>
    <li class="page-item">
      <a class="page-link" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
  </ul>
</nav>
      </div>
<form action="" method="post" class="search-form" id="search-form">
<!--Blue select-->
<select name="searchItem" class="searchItem">
 <option value="all" selected>분류</option>
  <option value="title" selected>제목</option>
  <option value="content">내용</option>
  <option value="id">작성자</option>
</select>

<input type="text" name="searchWord" class="searchWord" placeholder="  Search">
<button type="button" class="btn btn-outline-primary btn-rounded waves-effect">검색하기</button>
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
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
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
  <script src="/cloud/resources/js/bootstrap-datepicker.js"></script>
  <script src="/cloud/resources/js/jquery.timepicker.min.js"></script>
  <script src="/cloud/resources/js/scrollax.min.js"></script>
  
  <script src="/cloud/resources/js/main.js"></script>
    
  </body>
</html>