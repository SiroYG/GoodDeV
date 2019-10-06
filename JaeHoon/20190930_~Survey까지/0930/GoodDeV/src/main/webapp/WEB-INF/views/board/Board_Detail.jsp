<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <title>Board Read :: </title>
    
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
    <script src="/cloud/resources/js/jquery-ui.min.js"></script>
  
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
    <link rel="stylesheet" href="/cloud/resources/css/Header.css">
    <link rel="stylesheet" href="/cloud/resources/css/Board.css">
    
    
  </head>
<header class="header">
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index">MainLogo</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	          <li class="nav-item"><a href="#home-section" class="nav-link"><span>Home</span></a></li>
	          <li class="nav-item"><a href="goboard" class="nav-link"><span>Q & A게시판</span></a></li>
	          <li class="nav-item"><a href="#" class="nav-link"><span>블라인드 테스트</span></a></li>
	          <li class="nav-item"><a href="index#blog-section" class="nav-link"><span>크라우드 펀딩</span></a></li>
	         <li class="nav-item"><a href="#" class="nav-link"><span>마이페이지</span></a></li>
	       <li style="margin-left: 20px; " class="nav-item cta"><a href="login_form.html" class="nav-link" data-toggle="modal" data-target="#modalAppointment">로그인</a></li>
	       <li style="margin-left: 20px;" class="nav-item cta"><a href="register_form.html" class="nav-link" data-toggle="modal" data-target="#modalAppointment">회원가입</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
	  </header>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  
  <div class="first">
<h1 style="margin-top: 10%;">Q & A 게시글</h1>
 <p class="sub_title"><br>질문에 대한 답변을 달고<br>
 자유롭게 얘기해보세요. </p> 
  </div>
  <hr class="hr_purple"> 
  <div class="Detail_table">
     <form action="" method="post" id="">
     <div class="form-group row">
    <label for="" class="col-sm-2 col-form-label"><span><b>작성 날짜</b></span></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="boardDate" id="" placeholder="2019-09-04 (목)" readonly="readonly">
    </div>
    
    <div class="form-group row">
    <label for="" class="col-sm-2 col-form-label"><span><b>작성자</b></span></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="" name="memberId" placeholder="ididid" readonly="readonly">
    </div>
  </div>
    
  </div>
  <div class="form-group row">
    <label for="" class="col-sm-2 col-form-label"><span><b>질문 분류</b></span></label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="qCtegory" id="" placeholder="(예시)일반" readonly="readonly">
     <!-- <input type="email" class="form-control" id="inputEmail3" placeholder="Email">-->
    </div>
  </div>
  
  <div class="form-group row">
    <label for="" class="col-sm-2 col-form-label"><span><b>제목</b></span></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="title" id="" placeholder="border 값 none으로 구분해야 하는데.." readonly="readonly">
    </div>
  </div>
  <div class="form-group row">
    <label for="" class="col-sm-2 col-form-label"><span><b>내용</b></span></label>
    <div class="col-sm-10">
     <textarea rows="8" cols="112" readonly="readonly" name="content" class="form-control"></textarea>
    </div>
  </div>
   <div class="form-group row">
    <label for="" class="col-sm-2 col-form-label"><span><b>첨부파일</b></span></label>
    <div class="col-sm-10">
      <input type="file" class="form-control" name="saveFilename" id="" >
    </div>
  </div>
  <%-- <hr class="hr_purple">
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-2 col-form-label"><span><b>아이디</b></span></label>
                        <div class="col-sm-10">
                            <!--<input type="text" class="form-control" name="id" id="" placeholder="@@@1234">-->
                            <p name="memberId" class="qna-id">memberId</p>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-2 col-form-label"><span><b>Comments</b></span></label>
                        <div class="col-sm-10">
                            
                             <textarea rows="2" cols="112" name="reply" class="input-comment" placeholder="@@@@@@@@@@@@@@@@@@@@" readonly="readonly"></textarea><br>
                            <input type="text" name="repDate" class="input-comment" placeholder="2019-09-21 13:24">
                            <a href="#" class="btns btn-3-green"><span class="white">수정</span></a>&nbsp;&nbsp;<a href="#" class="btns btn-3-red"><span class="white">삭제</span></a>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-2 col-form-label"><span><b>댓글</b></span></label>
                        <div class="col-sm-10">
                            <textarea rows="5" cols="112" name="reply" class="form-control"></textarea><br>
                            <input type="hidden" name="id" value="${sessionScope.loginId}">
                            <a href="Board_update.html" class="btns btn-3-comments"><span class="white">댓글 작성</span></a>

                        </div>
                    </div>
                    <hr class="hr_purple"> --%>
   <div class="form-group row">
    <div class="col-sm-10">
    <div style="margin-top: 40px;">
     <a href="goboard" class="btns btn-3"><span class="white">돌아가기</span></a> &nbsp;&nbsp;  <a href="goupdate" class="btns btn-3-green"><span class="white">수정</span></a> &nbsp;&nbsp;  <a href="godelete" class="btns btn-3-red"><span class="white">삭제</span></a>
     </div>
    </div>
    
  </div>
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