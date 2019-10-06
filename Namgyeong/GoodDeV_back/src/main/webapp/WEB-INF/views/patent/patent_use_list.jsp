<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>SupporterS :: Patent Use List</title>
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
                    <li class="nav-item"><a href="/cloud/funding/gofunding" class="nav-link"><span>크라우드 펀딩</span></a></li>
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

    <section class="hero-wrap hero-wrap-2" style="background-image: url('/cloud/resources/images/about_10-1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-center">
                <div class="col-md-9 ftco-animate pb-5 text-center">
                    <h1 class="mb-3 bread">Check Patent</h1>
                    <p class="breadcrumbs">
                        <span class="mr-2"><a href="/cloud/home">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>특허
                            사용 신청 확인<i class="ion-ios-arrow-forward"></i>
                        </span>
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
                    <h2 class="mb-4">특허 사용 신청 확인</h2>
                    <p>
                        특허에 대한 사용 신청자 목록입니다.<br> 사용 허가를 원하실 경우 사용 신청서와 허가서를 첨부해주세요.<br>
                        각 회원님이 사용 신청서 및 사용 허가서를 소지한 시점부터 효력이 발휘됩니다.
                    </p>
                </div>
            </div>

            <hr class="hr_navy">

            <div class="search-result" id="search-result">
                <table class="table">
                    <thead class="navy">
                        <tr>
                            <th scope="col">No.</th>
                            <th scope="col">분류</th>
                            <th scope="col">특허명</th>
                            <!--<th scope="col"></th>-->
                            <th scope="col">사용 신청자</th>
                            <th scope="col">신청날짜</th>
                            <th colspan="2" scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- 게시글이 없는 경우 -->
                        <c:if test="${empty list}">
                            <tr>
                                <td colspan="5" align="center">데이터가 없습니다.</td>
                            </tr>
                        </c:if>
                        <!-- 게시글이 있는 경우 -->
                        <c:if test="${not empty list }">
                            <c:forEach var="Patent" items="${list}" varStatus="stat">
                                <tr>
                                    <th scope="row" name=patentNum>${stat.count + navi.startRecord}</th>
                                    <td>${Patent.patenttype}</td>
                                    <td class="patentName">${Patent.patentName}</td>
                                    <td>${Patent.patentHolderName}</td>
                                    <td>${Patent.patentAppDate}</td>
                                    <td name="">
                                        <button type="button" class="btn btn-primary" data-id="${sessionScope.loginId}" data-toggle="modal" data-target="#exampleModal"> 상세보기</button></td>
                                </tr>
                            </c:forEach>
                        </c:if>
                    </tbody>

                </table>
                <!--페이징 & 검색-->
                <div class="page-center">

                    <nav>
                        <ul class="pagination justify-content-center">
                            <li class="page-item">
                                <a class="page-link" aria-label="Previous" href="patentlistForm?currentPage=${navi.currentPage-navi.pagePerGroup}&searchItem=${searchItem}&searchWord=${searchWord}">
                                    <span aria-hidden="true">&laquo;</span>
                                    <span class="sr-only">Previous</span>
                                </a>
                            </li>
                            <c:forEach var="page" begin="${navi.startPageGroup}" end="${navi.endPageGroup }">
                                <li class="page-item"><a href="patentlistForm?currentPage=${page}&searchItem=${searchItem}&searchWord=${searchWord}" class="page-link">${page}</a>
                            </c:forEach>
                            <li class="page-item">
                                <a class="page-link" aria-label="Next" href="patentlistForm?currentPage=${navi.currentPage+navi.pagePerGroup}&searchItem=${searchItem}&searchWord=${searchWord}">
                                    <span aria-hidden="true">&raquo;</span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <hr class="hr_navy">
        </div>
    </section>
    <form action="/cloud/board/boardListForm" method="get" class="search-form" id="searchForm">
        <select style="visibility: hidden;" name="searchItem" class="searchItem">
            <option value="all">전체</option>
        </select>
        <input type="hidden" name="searchWord" value="${searchWord}" class="searchWord" placeholder="Search">
    </form>


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


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="exampleModalLabel">특허 사용 허가 신청서</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" method="post" id="">
                        <div class="form-group">
                            <label for="appointment_date" class="text-black"><b>신청일</b></label>
                            <input type="text" class="form-control" name="contractDate" id="appointment_date" placeholder="2019-09-19 (목)" readonly="readonly">
                        </div>
                        <div class="form-group">
                            <label for="appointment_name" class="text-black"><b>신청인</b></label>
                            <input type="text" class="form-control" name="memberId" id="appointment_name" placeholder="(select 된)memberId" readonly="readonly">
                        </div>
                        <div class="form-group">
                            <label for="appointment_patentnum" class="text-black"><b>특허번호</b></label>
                            <input type="text" class="form-control" name="patentName" id="appointment_patentnum" placeholder="(select 된)KR000000000" readonly="readonly">
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <a href="#" class="a_document"> ▶ [신청자] 특허 사용 신청서</a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <a href="#" class="a_document"> ▶ [신청자] 특허 사용 허가서</a>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="appointment_file" class="text-black"><b>[보유자]특허 사용 신청서 / 허가서</b></label>
                            <input type="file" class="form-control" name="documentFilename" id="appointment_file" multiple>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-info">승인하기</button>
                    <button type="button" class="btn btn-outline-success" data-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>

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
