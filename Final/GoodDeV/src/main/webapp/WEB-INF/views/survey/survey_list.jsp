<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>SupporterS :: Survey list</title>
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
    <!-- <link rel="stylesheet" href="/cloud/resources/css/icomoon.css"> -->
    <link rel="stylesheet" href="/cloud/resources/css/style.css">
    <link rel="stylesheet" href="/cloud/resources/css/survey.css">

    <script>
        $(function() {
            var searchItem = $("#searchItem").val();
            var searchWord = $("#searchWord").val();
            var type = '';
            var str = "";
            $.ajax({

                method: 'GET',
                url: 'searchSurvey',
                data: {
                    'searchItem': searchItem,
                    'searchWord': searchWord
                },
                success: function(res) {

                    $(".tbody").remove();
                    $.each(res, function(i, item) {

                        i += 1;
                        str += '<tr>';
                        str += '<th scope="row">';
                        str += '<a href="gosurvey_Detail?questionTimeNum=' + item.questionTimeNum + '">';
                        str += ' <span>' + i + ' </span> </a></th>';
                        /* if(item.itemType == 'prototype'){
     					 str+='<td ><a href="gosurvey_Detail?questionTimeNum='+item.questionTimeNum+'">';
        				 str+='<span>'+[시제품]+'</span> </a></th>';
     				  } else {
     					 str+='<td ><a href="gosurvey_Detail?questionTimeNum='+item.questionTimeNum+'">';
        				 str+='<span>'+[출시품]+'</span> </a></th>';
     				  } */
                        str += '<td ><a href="gosurvey_Detail?questionTimeNum=' + item.questionTimeNum + '">';
                        str += '<span>' + item.itemType + '</span> </a></th>';
                        str += '<td ><a href="gosurvey_Detail?questionTimeNum=' + item.questionTimeNum + '">';
                        str += '<span>' + item.questionTitle + '</span> </a></th>';
                        str += '<td ><a href="gosurvey_Detail?questionTimeNum=' + item.questionTimeNum + '">';
                        str += '<span>' + item.memberId + '</span> </a></th>';
                        str += '<td ><a href="gosurvey_Detail?questionTimeNum=' + item.questionTimeNum + '">';
                        str += '<span>' + item.startDate + '</span> </a></th>';
                        str += '<td ><a href="gosurvey_Detail?questionTimeNum=' + item.questionTimeNum + '">';
                        str += '<span>' + item.dueDate + '</span> </a></th>';
                    });
                    $('.tbodyAjax').html(str);


                }


            });
            $(document).on('click', '#search', function() {
                var searchItem = $("#searchItem").val();
                var searchWord = $("#searchWord").val();
                var str = "";

                $.ajax({

                    method: 'GET',
                    url: 'searchSurvey',
                    data: {
                        'searchItem': searchItem,
                        'searchWord': searchWord
                    },
                    success: function(res) {

                        $(".tbody").remove();
                        $.each(res, function(i, item) {

                            i += 1;
                            str += '<tr>';
                            str += '<th scope="row">';
                            str += '<a href="gosurvey_Detail?questionTimeNum=' + item.questionTimeNum + '">';
                            str += ' <span>' + i + ' </span> </a></th>';
                            str += '<td ><a href="gosurvey_Detail?questionTimeNum=' + item.questionTimeNum + '">';
                            str += '<span>' + item.itemType + '</span> </a></th>';
                            str += '<td ><a href="gosurvey_Detail?questionTimeNum=' + item.questionTimeNum + '">';
                            str += '<span>' + item.questionTitle + '</span> </a></th>';
                            str += '<td ><a href="gosurvey_Detail?questionTimeNum=' + item.questionTimeNum + '">';
                            str += '<span>' + item.memberId + '</span> </a></th>';
                            str += '<td ><a href="gosurvey_Detail?questionTimeNum=' + item.questionTimeNum + '">';
                            str += '<span>' + item.startDate + '</span> </a></th>';
                            str += '<td ><a href="gosurvey_Detail?questionTimeNum=' + item.questionTimeNum + '">';
                            str += '<span>' + item.dueDate + '</span> </a></th>';
                        });
                        $('.tbodyAjax').html(str);


                    }


                });


            });

            //var status = $('#listbox-taskStatus option').attr('status');

            $(document).on('click', '#goSurvey_form_button', function() {
                var itemNum = $('#item-option option:selected').attr("data-value");

                if (itemNum == 'none') {
                    alert("아이템을 선택해주세요.");
                    return;
                }


                var itemNum = $('#item-option option:selected').attr("data-value");
                alert(itemNum);
                $('#itemNum').html('<input type="hidden" name="itemNum" value=' + itemNum + '>');
                $('#goSurvey_form').submit();
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
                    <p class="breadcrumbs"><span class="mr-2"><a href="home">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>진행중인 테스트 목록 <i class="ion-ios-arrow-forward"></i></span></p>
                </div>
            </div>
        </div>
    </section>


    <section class="ftco-section" id="">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-5">
                <div class="col-md-10 heading-section text-center ftco-animate">
                    <span class="subheading"></span>
                    <h2 class="mb-4">블라인드 테스트</h2>
                    <p>시장 출시 전 시제품에 대한 설문조사를 진행・참가할 수 있습니다.<br>
                        모든 결과는 익명으로 처리되며, 각 기록은 마이페이지에서 확인 가능합니다.
                    </p>

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
                            <th scope="col">마감날짜</th>
                        </tr>
                    </thead>

                    <tbody class="tbodyAjax">

                    </tbody>

                    <tbody class="tbody">
                        <c:forEach var="qTotal" items="${qTotalList}" varStatus="status">
                            <tr>
                                <th scope="row"> <a href="gosurvey_Detail?questionTimeNum=${qTotal.questionTimeNum }"> <span>${status.count} </span> </a></th>
                                <td><a href="gosurvey_Detail?questionTimeNum=${qTotal.questionTimeNum }"> <span>
                                            <c:out value="${qTotal.itemType}" /></span> </a></td>
                                <td><a href="gosurvey_Detail?questionTimeNum=${qTotal.questionTimeNum }"> <span>
                                            <c:out value="${qTotal.questionTitle}" /></span> </a></td>
                                <td><a href="gosurvey_Detail?questionTimeNum=${qTotal.questionTimeNum }"> <span>
                                            <c:out value="${qTotal.memberId}" /></span> </a></td>
                                <td><a href="gosurvey_Detail?questionTimeNum=${qTotal.questionTimeNum }"> <span>
                                            <c:out value="${qTotal.startDate}" /></span> </a></td>
                                <td><a href="gosurvey_Detail?questionTimeNum=${qTotal.questionTimeNum }"> <span>
                                            <c:out value="${qTotal.dueDate}" /></span> </a></td>
                            </tr>
                        </c:forEach>

                    </tbody>


                </table>

                <button type="button" class="btns btn-3" data-toggle="modal" data-target="#exampleModal">진행하기</button>


                <!--페이징 & 검색-->
                <div class="page-center">
                    <br>
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

                    <select class="browser-default custom-select" name="searchItem">
                        <option value="all" selected>분류</option>
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                        <option value="id">작성자</option>
                    </select>

                    <input type="text" name="searchWord" class="searchWord" placeholder="  Search" id="searchWord">
                    <button type="button" class="btn btn-outline-primary btn-rounded waves-effect" id="search">검색하기</button>
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

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="exampleModalLabel">블라인드 테스트 아이템 선택</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="goSurvey_form" method="get" id="goSurvey_form">
                        <label for="item-option" class="text-black">제품 선택</label><br>
                        <select id="item-option" name="searchItem">
                            <option data-value="none" selected>테스트 진행을 위한 제품을 선택해주세요</option>

                            <c:forEach var="item" items="${iList }" varStatus="status">
                                <option class="temp" data-value="${item.itemNum}">${status.count }. ${item.itemName }</option>
                            </c:forEach>

                        </select><br><br>
                        <div id="itemNum">

                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-info" onclick="pp()" id="goSurvey_form_button">진행하기</button>
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
