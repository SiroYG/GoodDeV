<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
	<head>
    <meta charset="utf-8">
    <title>My Page :: </title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
    <script src="/cloud/resources/js/jquery-ui.min.js"></script>

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
    <link rel="stylesheet" href="/cloud/resources/css/Header.css">
    <link rel="stylesheet" href="/cloud/resources/css/Board.css">
    <link rel="stylesheet" href="/cloud/resources/css/demo.css">
<!--     <link rel="stylesheet" href="/cloud/resources/css/font-awesome.min.css"> -->
    <link rel="stylesheet" href="/cloud/resources/css/ef-tabs.css">
    <link rel="stylesheet" href="/cloud/resources/css/ef-tabs-light-blue.css">
    
    <style>
    div.tri-btn{
    vertical-align: middle;
    text-align: center;
    margin: 0 auto;
    justify-content : center;
    }
    
    .btn-primary{
    margin-left :10px;
    margin-right:10px;
    }
    </style>
	<script src="/cloud/resources/js/list.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
    <script src="/cloud/resources/js/jquery.transit.js"></script>
    <script src="/cloud/resources/js/ef-tabs.js"></script>
 	
    <script>
   	$(function(){
   		
   	  $('#patentList').on('click',function(){
   			patent();
   		})
		   	
   	  $('#itemList').on('click',function(){
   			item();
   		})	
   		
  	  $('#fundList').on('click',function(){
 			fund();
 		})	
 		
   		
   	});
    </script>

</head>
<header class="header">
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="/cloud/home" style="text-decoration: none;">MainLogo</a>
            <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span> Menu
            </button>
            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav nav ml-auto">
                    <li class="nav-item"><a href="/cloud/home" class="nav-link"><span>Home</span></a></li>
                    <li class="nav-item"><a href="/cloud/board/boardListForm" class="nav-link"><span>Q & A게시판</span></a></li>
                    <li class="nav-item"><a href="/cloud/survey/main" class="nav-link"><span>블라인드 테스트</span></a></li>
                    <li class="nav-item"><a href="/cloud/funding/fundingListForm" class="nav-link"><span>크라우드 펀딩</span></a></li>
                    <c:if test="${sessionScope.loginId!=null}">
					<li style="margin-left: 20px;" class="nav-item cta"><a class="nav-link">${sessionScope.loginName} ${sessionScope.loginType}님 </a></li>
			  		<li style="margin-left: 20px;" class="nav-item cta"><a href="/cloud/member/logout" class="nav-link">로그아웃</a></li>
			  		</c:if>
                	<c:if test="${sessionScope.loginId==null}">
	          		<li style="margin-left: 20px; " class="nav-item cta"><a href="gologin" class="nav-link" data-toggle="modal" data-target="#modalAppointment" style="text-decoration: none;">로그인</a></li>
              		<li style="margin-left: 20px;" class="nav-item cta"><a href="gosignin" class="nav-link" data-toggle="modal" data-target="#modalAppointment" style="text-decoration: none;">회원가입</a></li>
	       			</c:if>	
                </ul>
            </div>
        </div>
    </nav>
</header>

<body class="bg-black">
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
                        <li>
                            <a href="#section-shape-all">
                                <svg viewBox="0 0 80 60" preserveAspectRatio="none">
                                    <use xlink:href="#tabshape"></use>
                                </svg>
                                <span><b>My Page</b></span>
                            </a>
                        </li>
                        <li>
                            <a id="patentList" href="#section-shape-patent">
                                <svg viewBox="0 0 80 60" preserveAspectRatio="none">
                                    <use xlink:href="#tabshape"></use>
                                </svg>
                                <svg viewBox="0 0 80 60" preserveAspectRatio="none">
                                    <use xlink:href="#tabshape"></use>
                                </svg>
                                <span><b>특허 보유/사용 현황</b></span>
                            </a>
                        </li>
                        <li>
                            <a id="itemList" href="#section-shape-item">
                                <svg viewBox="0 0 80 60" preserveAspectRatio="none">
                                    <use xlink:href="#tabshape"></use>
                                </svg>
                                <svg viewBox="0 0 80 60" preserveAspectRatio="none">
                                    <use xlink:href="#tabshape"></use>
                                </svg>
                                <span><b>시제품, 출시품 등록 현황</b></span>
                            </a>
                        </li>
                        <li>
                            <a href="#section-shape-survey">
                                <svg viewBox="0 0 80 60" preserveAspectRatio="none">
                                    <use xlink:href="#tabshape"></use>
                                </svg>
                                <svg viewBox="0 0 80 60" preserveAspectRatio="none">
                                    <use xlink:href="#tabshape"></use>
                                </svg>
                                <span><b>블라인드 테스트 현황</b></span>
                            </a>
                        </li>
                        <li>
                            <a id="fundList" href="#section-shape-funding">
                                <svg viewBox="0 0 80 60" preserveAspectRatio="none">
                                    <use xlink:href="#tabshape"></use>
                                </svg>
                                <span><b>크라우드 펀딩 현황</b></span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="content-wrap">
                    <section id="section-bar-all">
                        <h2><b>회원 마이 페이지</b></h2>

                        <h3>회원 정보 수정</h3><br>
                        <a href="/cloud/member/goupdate" class="btn btn--radius btn--green">바로가기</a>

						<!-- 0909 창업자/일반회원 구분 >> 회원유형에 따라 메뉴 구성 다르게 할 것 -->
                        <p><!--${sessionScope.loginId}-->@@@님은 현재 '창업자/창업희망자'입니다. 
                        <br>현재 특허 및 제품 현황 조회,
                        <br>블라인드 테스트 결과 및 크라우드 펀딩 현황을 조회할 수 있습니다. <br></p>
                        
                        <p><!--${sessionScope.loginId}-->@@@님은 현재 '일반회원'입니다. 
                        <br>현재 블라인드 테스트 결과 및 크라우드 펀딩 현황을 조회할 수 있습니다. </p>
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Modal - 상세보기 테스트</button>
                    </section>

                    <section id="section-bar-patent">
                    	
                          <%--  <table class="patentTable">
                             <caption class="table_title"><b>보유 및 사용 중인 특허 목록</b></caption>
                            <thead class="navy">
                                <tr>
                                    <th scope="col">특허 번호</th>
                                    <th scope="col">분류</th>
                                    <th scope="col">특허명</th>
                                    <th scope="col">사용구분</th>
                                    <th scope="col">등록날짜</th>
                                    <th scope="col">서식파일 보기</th>
                                </tr>
                            </thead> 
                            <tbody>
                                <tr>
                                    <th scope="row" name="patentNum">123-455-78890</th>
                                    <td name="qCategory">[서비스]</td>
                                    <td name="title">
                                    <a href="#" class="nav-link" data-toggle="modal" data-target="#modalAppointment">Request a quote
                                    aaaaaaaaaaaaaaaa</a></td>
                                    <td name="boardDate">[권한 위임]</td>
                                    <td name="boardDate">2019-05-10</td>
                                    <td name="document">
                                    
                                    </td>
                                </tr>
                            
                            </tbody>
                        </table> --%>
                        
                    </section>

                    <section id="section-bar-item">
                          <%--  <table class="table">
                            <caption class="table_title"><b>시제품 및 출시품 목록</b></caption>
                            <thead class="navy">
                                <tr>
                                    <th scope="col">Item No.</th>
                                    <th scope="col">분류</th>
                                    <th scope="col">제품명</th>
                                    <th scope="col">테스트 여부</th>
                                    <th scope="col">펀딩 여부</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row" name="boardNum">1</th>
                                    <td name="qCategory">[시제품]</td>
                                    <td name="itemName"><a href="#" class="mypage-link" onclick="myFunction();" id="iteminfo" data-itemnum="${itemNum}">aaaaaaaaa</td>
                                    <td name="boardDate">[진행중]</td>
                                    <td name="boardDate">[미정]</td>
                                </tr>
                               

                            </tbody>
                        </table> --%>
                    </section>

                    <section id="section-bar-survey">
                        <table class="table">
                            <caption class="table_title"><b>테스트 목록</b></caption>
                            <thead class="navy">
                                <tr>
                                	
                                    <th scope="col">No.</th>
                                    <th scope="col">분류</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">시작일</th>
                                    <th scope="col">마김일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row" name="boardNum">1</th>
                                    <td name="qCategory">[일반]</td>
                                    <td name="title">aaaaaaaaaaaaaaaaaa</a></td>
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
                    </section>

                    <section id="section-bar-funding">
                   <%--        <table class="table">
                            <caption class="table_title"><b>크라우드 펀딩 실시/투자 목록</b></caption>
                            <thead class="navy">
                                <tr>
                                    <th scope="col">No.</th>
                                    <th scope="col">분류</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">시작일</th>
                                    <th scope="col">마감일</th>
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
                        </table> --%>
                    </section>
                </div><!-- /content -->
            </div><!-- /tabs -->
        </section>
    </div>

</body>

 <!-- Modal -->
   <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>


 <!--<script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>-->
  <script src="/cloud/resources/js/popper.min.js"></script>
  <script src="/cloud/resources/js/bootstrap.min.js"></script>

</html>
