<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
  <head>
    <title>Search :: Search Menus</title>
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
    <link rel="stylesheet" href="/cloud/resources/css/search.css">
    
    <script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
    <script src="/cloud/resources/js/jquery-ui.min.js"></script>
    
    <script></script>
    
  </head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">


    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="index.html">MainLogo</a>
            <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span> Menu
            </button>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav nav ml-auto">
                    <li class="nav-item"><a href="home" class="nav-link"><span>Home</span></a></li>
                    <li class="nav-item"><a href="search_menu" class="nav-link"><span>검색 메뉴</span></a></li>
                    <li class="nav-item"><a href="#FAQ-section" class="nav-link"><span>특허 FAQ</span></a></li>
                    <li class="nav-item"><a href="survey_list" class="nav-link"><span>블라인드 테스트</span></a></li>
                    <li class="nav-item"><a href="funding_list" class="nav-link"><span>크라우드 펀딩</span></a></li>
                    <li class="nav-item"><a href="#contact-section" class="nav-link"><span>공식 연락처</span></a></li>
                    <li style="margin-left: 20px;" class="nav-item cta"><a href="login_form.html" class="nav-link">로그인</a></li>
                    <li style="margin-left: 20px;" class="nav-item cta"><a href="register_form.html" class="nav-link">회원가입</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <section class="hero-wrap hero-wrap-2" style="background-image: url('/cloud/resources/images/about_10-1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-center">
                <div class="col-md-9 ftco-animate pb-5 text-center">
                    <h1 class="mb-3 bread">Search Menu</h1>
                    <p class="breadcrumbs"><span class="mr-2"><a href="index">Home <i class="ion-ios-arrow-forward"></i></a></span>
                        <!--<span class="mr-2"><a href="blog.html">Q & A 게시판 <i class="ion-ios-arrow-forward"></i></a></span>--> <span>검색 분류 <i class="ion-ios-arrow-forward"></i></span></p>
                </div>
            </div>
        </div>
    </section>


    <section class="ftco-section" id="blog-section">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-5">
                <div class="col-md-10 heading-section text-center ftco-animate">
                    <span class="subheading"></span>
                    <h2 class="mb-4">검색 메뉴</h2>
                    <p>산업분야 검색, 단어 검색 등을 지원하는 특허 검색,<br>
                        실제 출시 중인 상품들을 검색할 수 있는 제품 검색을 지원합니다.
                    </p>
                </div>
                <div class="boxes-head">
                    <h4>특허 관련 절차에 필요한 파일을 다운받은 후 양식에 맞는 서류를 작성해야 합니다.</h4>
                    <a href="#" class="down-documents">특허 관련 서식 파일 모음</a><br><br>
                </div>
                <div class="boxes">

                    <a class="box" href="search_patent.html">
                        <h3>특허 검색하기</h3>
                        <img src="/cloud/resources/images/search.png" alt="" class="icons">
                        <p>특정 단어, 산업분야 등 여러 검색 옵션이 있습니다.</p>
                    </a>
                    <a class="box2" href="#">
                        <h3>제품 검색하기</h3>
                        <img src="/cloud/resources/images/branding.png" alt="" class="icons">
                        <p>실제 판매중인 제품군들을 비교할 수 있습니다.</p>
                    </a>

                </div>
                <div class="boxes">
                    <a class="box" href="#" data-toggle="modal" data-target="#exampleModal">
                        <h3>특허 출원 신청하기</h3>
                        <img src="/cloud/resources/images/resume.png" alt="" class="icons">
                        <p>출원 절차를 밟아 정식으로 특허를 등록할 수 있습니다.</p>
                    </a>

                    <a class="box2" href="patent_use_list">
                        <h3>특허 출원/사용 확인하기</h3>
                        <img src="/cloud/resources/images/menu.png" alt="" class="icons">
                        <p>출원 및 사용 허가 여부를 확인할 수 있습니다.</p>
                    </a>
                </div>
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

    <script src="/cloud/resources/js/main.js"></script>

    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg></div>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="exampleModalLabel">특허 출원 신청서</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" method="post" id="">
                        <div class="form-group">
                            <label for="appointment_message" class="text-black">특허 신청 이용 약관</label>
                            <textarea name="" id="appointment_message" class="form-control" cols="30" rows="10" readonly="readonly" style="overflow-y:scroll;">

                            </textarea>
                            <p><input type="checkbox">이용 약관에 동의합니다.</p>
                        </div>
                        <div class="form-group">
                            <label for="appointment_name" class="text-black">신청인</label>
                            <input type="text" class="form-control" id="appointment_name" placeholder="이름을 입력해주세요">
                        </div>
                        <!--  <div class="form-group">
                            <label for="appointment_patentnum" class="text-black">특허번호</label>
                            <input type="text" class="form-control" id="appointment_patentnum" placeholder="KR000000000" readonly="readonly">
                        </div>-->
                        <div class="form-group">
                            <label for="appointment_file2" class="text-black">특허 출원 신청서</label>
                            <input type="file" class="form-control" id="appointment_file2" multiple>
                        </div>
                        <div class="form-group">
                            <p> ▶ [출원 신청자] 특허 신청서를 첨부해주세요.</p>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-info">신청하기</button>
                    <button type="button" class="btn btn-outline-success" data-dismiss="modal">닫기</button>
                </div>
            </div>


        </div>
    </div>



</body></html>