<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>SupporterS :: Write Form</title>
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

    <script>
        $(function() {

            $('#executeForm').on('click', function() {
                alert("ok")
                var a = $('#dueDate').val();
                alert(a)
                if ($('#dueDate').val() == null) {
                    alert("마감일을 입력해주세요.")
                    return
                }

                if ($('#questionTitle').val().length == 0 || $('#questionTitle').val() == "") {
                    alert("제목을 입력해주세요.")
                    return
                }

                if ($('#question').val().length == 0 || $('#question').val() == "") {
                    alert("질문을 입력해주세요.")
                    return
                }

                $('#goSurvey_list').submit();





            });
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

    <section class="hero-wrap hero-wrap-2" style="background-image: url('/cloud/resources/images/about_8.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-center">
                <div class="col-md-9 ftco-animate pb-5 text-center">
                    <h1 class="mb-3 bread">Blind Test</h1>
                    <p class="breadcrumbs"><span class="mr-2"><a href="home">Home <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a href="/cloud/survey/goSurvey_list">블라인드 테스트 <i class="ion-ios-arrow-forward"></i></a></span> <span>설문조사 작성 <i class="ion-ios-arrow-forward"></i></span></p>
                </div>
            </div>
        </div>
    </section>


    <section class="ftco-section" id="blog-section">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-5">
                <div class="col-md-10 heading-section text-center ftco-animate">
                    <span class="subheading"></span>
                    <h2 class="mb-4">설문조사 작성</h2>
                    <p>시장 출시 전 시제품에 대한 설문조사를 진행・참가할 수 있습니다.<br>
                        모든 결과는 익명으로 처리되며, 각 기록은 마이페이지에서 확인 가능합니다.
                    </p>

                </div>
            </div>

            <hr class="hr_purple">

            <div class="write_table">
                <form action="/cloud/survey/goSurvey_list" method="POST" id="goSurvey_list">
                    <input type="hidden" name="itemNum" value="${getOneItem.itemNum}">
                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>시작일</b></span></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="startDate" id="" value="${times}" readonly="readonly">

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-2 col-form-label"><span><b>마감일</b></span></label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" name="dueDate" id="dueDate" placeholder="">

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-2 col-form-label"><span><b>작성자</b></span></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="memberId" id="" value="${sessionScope.loginId}" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-2 col-form-label"><span><b>제목</b></span></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="questionTitle" id="questionTitle" placeholder="제목을 입력해주세요">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>시제품 설명</b></span></label>
                        <div class="col-sm-10">
                            <textarea rows="8" cols="112" class="form-control" name="itemContent" id="itemContent" readonly="readonly">${getOneItem.itemContent}</textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>부가설명</b></span></label>
                        <div class="col-sm-10">
                            <textarea rows="8" cols="112" class="form-control" name="description" id="description" placeholder="부가설명을 입력해주세요"></textarea>
                        </div>
                    </div>


                    <hr class="hr_navy">

                    <div class="survey_form">
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label"><span><b>설문목록</b></span></label>
                            <div class="col-sm-10">
                                <p class="form-control-readonly">평가받고자 하는 항목을 자유롭게 기술해주세요.</p>

                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 1) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="question" name="question" placeholder="질문을 입력해주세요">
                                &nbsp; &nbsp;
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 2) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="question" name="question" placeholder="질문을 입력해주세요">
                                &nbsp; &nbsp;
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 3) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="question" name="question" placeholder="질문을 입력해주세요">
                                &nbsp; &nbsp;
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 4) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="question" name="question" placeholder="질문을 입력해주세요">
                                &nbsp; &nbsp;
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 5) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="question" name="question" placeholder="질문을 입력해주세요">
                                &nbsp; &nbsp;
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 6) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="question" name="question" placeholder="질문을 입력해주세요">
                                &nbsp; &nbsp;
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 7) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="question" name="question" placeholder="질문을 입력해주세요">
                                &nbsp; &nbsp;
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 8) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="question" name="question" placeholder="질문을 입력해주세요">
                                &nbsp; &nbsp;
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 9) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="question" name="question" placeholder="질문을 입력해주세요">
                                &nbsp; &nbsp;
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label"><span><b>질문 10) </b></span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="question" name="question" placeholder="질문을 입력해주세요">
                                &nbsp; &nbsp;
                            </div>
                        </div>
                    </div>



                    <br><br>
                    <div class="form-group row">
                        <div class="col-sm-10">
                            <a href="#" class="btns btn-3" id="executeForm"><span class="white">&nbsp;&nbsp;작성하기&nbsp;&nbsp;</span></a> &nbsp;&nbsp; <a href="/cloud/survey/goSurvey_list" class="btns btn-3-red" style="margin-top: 0;"><span class="white">&nbsp;&nbsp;취소&nbsp;&nbsp;</span></a>
                            <a href="/cloud/survey/goSurvey_list" class="goSurvey_list">
                        </div>

                    </div>
                </form>


            </div>
        </div>
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
                        </ul>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">검색 및 특허 관련</h2>
                        <ul class="list-unstyled">
                            <li><a href="/cloud/member/searchGo"><span class="icon-long-arrow-right mr-2"> 특허 검색</span></a></li>
                            <li><a href="/cloud/item/searchItem"><span class="icon-long-arrow-right mr-2"> 제품 검색</span></a></li>
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

    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#6082cc" /></svg></div>


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

</body>

</html>
