<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>My Page ::</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

    <!-- jquery 우선 실행 -->
    <script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
    <script src="/cloud/resources/js/jquery-ui.min.js"></script>

    <!-- Tap 기능 jquery 실행 -->
    <script src="/cloud/resources/js/ef-tabs.js"></script>
    <script src="/cloud/resources/js/jquery.transit.js"></script>

    <!-- bootstrap 포함 css 순차 실행 -->
    <link rel="stylesheet" href="/cloud/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/animate.css">

    <link rel="stylesheet" href="/cloud/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="/cloud/resources/css/aos.css">
    <link rel="stylesheet" href="/cloud/resources/css/ionicons.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/flaticon.css">
    <link rel="stylesheet" href="/cloud/resources/css/icomoon.css">

    <!-- Tap + Personal CSS/JS -->
    <script src="/cloud/resources/js/list.js"></script>
    <link rel="stylesheet" href="/cloud/resources/css/style.css">
    <link rel="stylesheet" href="/cloud/resources/css/Board.css">
    <link rel="stylesheet" href="/cloud/resources/css/demo.css">
    <link rel="stylesheet" href="/cloud/resources/css/ef-tabs.css">
    <link rel="stylesheet" href="/cloud/resources/css/ef-tabs-light-blue.css">

    <script>
        var pageSu;
        $(function() {

            $.ajax({
                url: '/cloud/board/',
                type: 'get',
                success: outputBoard

            })

            $('#patentList').on('click', function() {
                alert("hi");
                pageSu = 9;
                patentTable(pageSu)
            });

            $('#itemList').on('click', function() {
                item();
            })


            $('#shape-survey').on('click', function() {

                $.ajax({
                    url: '/cloud/survey/getSurveyListById',
                    type: 'get',
                    success: outputServey
                })
            })

            $('#shape-qna').on('click', function() {

                $.ajax({
                    url: '/cloud/board/',
                    type: 'get',
                    success: outputBoard
                })
            })

            $('#shape-funding').on('click', function() {

                $.ajax({
                    url: '/cloud/funding/',
                    type: 'get',
                    success: outputFunding
                })
            })
        });

        jQuery(document).on('click', '#rightBtn', function() {
            pageSu += 10;a
            $.ajax({
                url: 'patentSu',
                type: 'get',
                success: function(res) {
                    if (pageSu < res) {
                        patentTable(pageSu);
                    } else {
                        pageSu = 9;
                        patentTable(pageSu);
                        //ex) 172개 일때, 170개는 보여지지만 2개는 아직 안보임;;
                    }
                }
            })

        });

        jQuery(document).on('click', '#leftBtn', function() {

            pageSu -= 10;

            if (pageSu > 0) {
                patentTable(pageSu);
            } else {
                pageSu = 9;
                alert('응 첫페이지..');
                patentTable(pageSu);
            }

        });

        /*
        		참고용
        		jQuery(document).on('click', '#searchBtn', function(){
        	var searchWord  =$('#').val();
        	$.ajax({
        		url : '' ,
        		type : 'get',
        		data : {
        			
        		}
        	}) 
        });*/

        function patentTable(pageSu) {
            /* var searchWord =$().val()	
            	  var patentDetail =$().val()
            	  var patentType  =$().val()
             */
            $.ajax({
                url: 'patentTable',
                type: 'get',
                data: {
                    pageSu: pageSu
                    //	,searchWord : searchWord
                    //	,patentDetail : patentDetail
                    //	,patentType : patentType
                },
                success: output
            })
        }

        function output(res) {
            var tag = '';
            var patentNum = item.patentNum;
            var patenttype = item.patenttype;
            var patentName = item.patentName;
            var patentContent = item.patentContent;

            tag += '<table class="pTable">'
            tag += '<caption class="table_title"><b>보유 및 사용 중인 특허 목록</b></caption>'
            tag += '<thead class="navy">'
            tag += '<tr>'
            tag += '<th scope="col">특허 번호</th>'
            tag += '<th scope="col">분류</th>'
            tag += '<th scope="col">특허명</th>'
            tag += '<th scope="col">사용구분</th>'
            tag += '<th scope="col">등록날짜</th>'
            tag += '<th scope="col">서식파일 보기</th>'
            tag += '</tr>'
            tag += '</thead>'
            tag += '<tbody>'
            $.each(res, function(i, item) {
                tag += '<tr>'
                if (patentNum.length >= 10) {
                    //patentNum = patentNum.split("-",2)+"...";
                    patentNum = patentNum.substr(0, 10) + "...";
                    tag += '<th scope="row" name="특허번호">' + patentNum + '</th>'
                }
                if (patenttype.length >= 8) {
                    //patenttype = patenttype.substr(0,7)+"...";
                    tag += '<td name="분류" >' + patenttype + '</td>'
                }
                if (patentName.length >= 15) {
                    patentName = patentName.substr(0, 24) + "...";
                    tag += '<td name="특허명"><b>' + patentName.split("(", 1) + '</b></td>'
                }
                tag += '<td name="사용구분"></td>'
                if (item.patentRegDate != null) {
                    tag += '<td name="등록날짜">' + item.patentRegDate + '</td>'
                } else {
                    tag += '<td>특허등록 진행중입니다.</td>'
                }
                tag += '<td name="서식파일보기"></td>'
                tag += '</tr>'
            })

            tag += '</tbody>'
            tag += '</table>'
            tag += '<div class="tri-btn">'
            tag += '<button id="leftBtn" class="btn btn-primary">◀</button>'
            tag += '<button id="rightBtn" class="btn btn-primary">▶</button>'
            tag += '</div>'
            $('#section-bar-patent').html(tag);
        }

        function outputServey(res) {

            var tag = '';
            $.each(res, function(i, item) {
                i += 1;
                tag += '<tr>'
                tag += '<th scope="row" >' + i + '</th>'
                tag += '<td name="questionTitle"><a href="/cloud/survey/gosurvey_result?questionTimeNum=' + item.questionTimeNum + '">' + item.questionTitle + '</a></td>'
                tag += '<td name="startDate"><a href="/cloud/survey/gosurvey_result?questionTimeNum=' + item.questionTimeNum + '">' + item.startDate + '</td>';
                tag += '<td name="dueDate"><a href="/cloud/survey/gosurvey_result?questionTimeNum=' + item.questionTimeNum + '">' + item.dueDate + '</td>';
                tag += '</tr>';

                $('.surveyTbody').append(tag);
            })
        }

        function outputBoard(res) {

            var tag = '';
            $.each(res, function(i, board) {
                alert("board_upload");
                i += 1;
                tag += '<tr>';
                tag += '<th scope="row" name="boardNum">' + i + '</th>'
                tag += '<td name="title"><a href="/cloud/board/boardDetail?boardNum=' + board.boardNum + '">' + board.title + '</td>';
                tag += '<td name="boardDate"><a href="/cloud/board/boardDetail?boardNum=' + board.boardNum + '">' + board.boardDate + '</a></td>';
                tag += '<td name="qType"><a href="/cloud/board/boardDetail?boardNum=' + board.boardNum + '">' + board.qType + '</td>';
                tag += '</tr>';
                tag += '<div class="tri-btn">';
                tag += '<button id="leftBtn" class="btn btn-primary">◀</button>';
                tag += '<button id="rightBtn" class="btn btn-primary">▶</button>';
                tag += '</div>';

                $('.boardTbody').append(tag);
            })

        }

        /* function outputFunding(res) {

            var tag = '';
            $.each(res, function(i, fund) {
                i += 1;
                tag += '<tr>'
                tag += '<td scope="row" >' + i + '</th>'
                tag += '<td name=""><a href="/cloud/funding/fundingDetail?crowdfundingNum=' + fund.questionTimeNum + '">' + fund.questionTitle + '</a></td>'
                tag += '<td name="fundingStartDate"><a href="/cloud/funding/fundingDetail?crowdfundingNum=' + fund.questionTimeNum + '">' + fund.fundingStartDate + '</td>';
                tag += '<td name="fundingDueDate"><a href="/cloud/funding/fundingDetail?crowdfundingNum=' + fund.questionTimeNum + '">' + fund.fundingDueDate + '</td>';
                tag += '</tr>';

                $('.FundingTbody').append(tag);
            })

        } */

    </script>
</head>

<body class="bg-black">

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

    <div class="body">

        <section>
            <div class="ef-tabs ef-tabs-style-shape" data-effect="fade_slide_from_bottom">
                <svg class="hidden">
                    <defs>
                        <path id="tabshape" d="M80,60C34,53.5,64.417,0,0,0v60H80z" />
                    </defs>
                </svg>
                <nav>
                    <ul>
                        <li><a href="#section-shape-qna" id="shape-qna"> <svg viewBox="0 0 80 60" preserveAspectRatio="none">
                                    <use xlink:href="#tabshape"></use>
                                </svg> <span><b>내 게시글 목록</b></span>
                            </a></li>
                        <li><a id="patentList" href="#section-shape-patent"> <svg viewBox="0 0 80 60" preserveAspectRatio="none">
                                    <use xlink:href="#tabshape"></use>
                                </svg> <svg viewBox="0 0 80 60" preserveAspectRatio="none">
                                    <use xlink:href="#tabshape"></use>
                                </svg> <span><b>특허 보유/사용 현황</b></span>
                            </a></li>
                        <li><a id="itemList" href="#section-shape-item"> <svg viewBox="0 0 80 60" preserveAspectRatio="none">
                                    <use xlink:href="#tabshape"></use>
                                </svg> <svg viewBox="0 0 80 60" preserveAspectRatio="none">
                                    <use xlink:href="#tabshape"></use>
                                </svg> <span><b>시제품, 출시품 등록 현황</b></span>
                            </a></li>
                        <li><a href="#section-shape-survey" id="shape-survey"> <svg viewBox="0 0 80 60" preserveAspectRatio="none">
                                    <use xlink:href="#tabshape"></use>
                                </svg> <svg viewBox="0 0 80 60" preserveAspectRatio="none">
                                    <use xlink:href="#tabshape"></use>
                                </svg> <span><b>블라인드 테스트 현황</b></span>
                            </a></li>
                        <li><a href="#section-shape-funding" id="shape-funding"> <svg viewBox="0 0 80 60" preserveAspectRatio="none">
                                    <use xlink:href="#tabshape"></use>
                                </svg> <span><b>크라우드 펀딩 현황</b></span>
                            </a></li>
                    </ul>
                </nav>
                <div class="content-wrap">
                    <section id="section-bar-qna">
                        <table class="table">
                            <thead class="navy">
                                <tr>
                                    <th scope="col">No.</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">작성일</th>
                                    <th scope="col">공개 여부</th>
                                </tr>
                            </thead>
                            <tbody class="boardTbody">

                            </tbody>
                        </table>
                    </section>

                    <section id="section-bar-patent"> </section>

                    <section id="section-bar-item"> </section>

                    <section id="section-bar-survey">
                        <table class="table">
                            <caption class="table_title">
                                <b>테스트 목록</b>
                            </caption>
                            <thead class="navy">
                                <tr>
                                    <th scope="col">No.</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">시작일</th>
                                    <th scope="col">마감일</th>
                                </tr>
                            </thead>
                            <tbody class="surveyTbody">

                            </tbody>
                        </table>
                    </section>

                    <section id="section-bar-funding">
                        <table class="table">
                            <caption class="table_title">
                                <b>크라우드 펀딩 실시/투자 목록</b>
                            </caption>
                            <thead class="navy">
                                <tr>
                                    <th scope="col">No.</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">시작일</th>
                                    <th scope="col">마김일</th>
                                </tr>
                            </thead>
                            <tbody class="FundingTbody">
                                <tr>
                                    <th scope="row" name="boardNum">1</th>
                                    <td name="title">aaaaaaaaaaaaaaaaaaa</td>
                                    <td name="id">ididid</td>
                                    <td name="boardDate">2019-09-09</td>
                                </tr>
                                <tr>
                                    <th scope="row" name="boardNum">10</th>
                                    <td name="title">aaaa</td>
                                    <td name="id">Otto</td>
                                    <td name="boardDate">@mdo</td>
                                </tr>

                            </tbody>
                        </table>
                    </section>
                </div>
                <!-- /content -->
            </div>
            <!-- /tabs -->
        </section>
    </div>

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

    <!-- <script src="/cloud/resources/js/bootstrap.min.js"></script> -->
    <!-- <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->

</body>

</html>
