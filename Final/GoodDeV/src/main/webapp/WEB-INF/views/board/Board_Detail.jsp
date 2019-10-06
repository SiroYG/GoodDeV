<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>SupporterS :: Board Read</title>
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
    <link rel="stylesheet" href="/cloud/resources/css/Board.css">
    <link rel="stylesheet" href="/cloud/resources/css/new-comment.css">
    
    <script>
    $(function(){
    	
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

    <section class="hero-wrap hero-wrap-2" style="background-image: url('/cloud/resources/images/about_6.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-center">
                <div class="col-md-9 ftco-animate pb-5 text-center">
                    <h1 class="mb-3 bread">Q & A Board</h1>
                    <p class="breadcrumbs"><span class="mr-2"><a href="home">Home <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a href="/cloud/board/boardListForm">Q & A 게시판 <i class="ion-ios-arrow-forward"></i></a></span> <span>게시글 상세보기 <i class="ion-ios-arrow-forward"></i></span></p>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section" id="blog-section">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-5">
                <div class="col-md-10 heading-section text-center ftco-animate">
                    <span class="subheading"></span>
                    <h2 class="mb-4">Q & A 게시판</h2>
                    <p>궁금한 것을 자유롭게 묻고 답할 수 있습니다.</p>
                </div>
            </div>
            <div class="Detail_table ftco-animate">
                <form action="update?" method="post" id="">
                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>작성 날짜</b></span></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="boardDate" id="" placeholder="${board.boardDate}" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>작성자</b></span></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="memberId" id="" placeholder="${board.id}" readonly="readonly">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>질문
                                    분류</b></span></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="qCategory" id="" placeholder="${board.qCategory}" readonly="readonly">
                            <!-- <input type="email" class="form-control" id="inputEmail3" placeholder="Email">-->
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>제목</b></span></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="title" id="" placeholder="${board.title}" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>내용</b></span></label>
                        <div class="col-sm-10">
                            <textarea rows="8" cols="112" readonly="readonly" name="content" class="form-control" placeholder="${board.content}"></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><span><b>첨부파일</b></span></label>
                        <div class="col-sm-10">
                            <input type="file" class="form-control" name="saveFilename" id="saveFilename">
                        </div>
                    </div>
                    </form>
                    
                    <div class="form-group row">
                <div class="col-sm-10">
                    <div style="margin-top: 40px;">
                        <a href="/cloud/board/boardListForm" class="btns btn-3"><span class="white">돌아가기</span></a>
                        &nbsp;&nbsp;
                        <%-- 					<c:if test="${sessionScope.loginId}==${board.id}"> --%>
                        <a href="/cloud/board/goupdate?boardNum=${board.boardNum}" class="btns btn-3-green"><span class="white">수정</span></a>
                        &nbsp;&nbsp;
                        <a href="/cloud/board/godelete?boardNum=${board.boardNum}" class="btns btn-3-red"><span class="white">삭제</span></a>
                        <%-- 					</c:if> --%>
                    </div>
                </div>
            </div>
                    
                       <hr class="hr_purple">
					<form>
					<input type="hidden" id="boardNum" value="${board.boardNum}">
					<input type="hidden" id="memberid" value="${sessionScope.loginId}">
	                    <div class="container" id="chat-container">
	                        <!-- <h2 class="page-header">Comments</h2> -->
	                        <div class="comment-list"  id="replybody">
	 
	                            <!-- other Comment -->
	                            
	                        </div>
	                        <div class="search-form">
	                            <input type="text" id="replys" class="searchWord" placeholder=" 댓글을 입력하세요">
	                            <button type="button" onclick="Regist()" style="margin-left:10px; font-size:12px;" class="btn btn-outline-primary btn-rounded waves-effect">입력하기</button>
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
   <script>
    window.onload = function (){
		init();
	}
    
	function init(){
		var boardNum = document.getElementById("boardNum");
		var memberid = document.getElementById("memberid");
		
		$.ajax({
			"url" :"/cloud/board/ReplyselectAll",
			"method" : "get",
			"data":{
				"boardNum": boardNum.value
			},
			"success":function(result){
				alert(result);
				var replybody = document.getElementById("replybody");
				replybody.innerHTML="<article class='row'>"
				$(result).each(function(index,item){
					replybody.innerHTML
						+="<div class='col-md-10 col-sm-10'> <div class='panel panel-default'>"
		           	 	+"<div class='panel-body'> <header class='text-left'>"
						+"<div class='comment-user'> <i class='fa fa-user'></i> "+item.memberid+" </div>"
						+"<time class='comment-date' datetime=''> <i class='fa fa-clock-o'></i> "+item.replyDate+" </time>"
						+"</header>"
						+"<div class='comment-post'> <p>"+item.reply+"</p></div>"
						+"</div>  <hr> </div> </div> </article>"
				})		
					console.log(result);
			}
		});
	}
   $(document).ready(function(){
	   var replybody = document.getElementById("replybody");
	   replybody.scrollTop = replybody.scrollHeight;
	  $("#replybody").scrollTop($("#replybody")[0].scrollHeight) 
   });
    function Regist() {
		var replys = document.getElementById("replys");
		var boardNum = document.getElementById("boardNum");
		var memberid = document.getElementById("memberid");
		$.ajax({
			"url" : "/cloud/board/Replyinsert",
			"method" : "post",
			"data" : {
				"boardNum": boardNum.value,
				"reply" : replys.value,
				"memberid": memberid.value
			},
			"success" : function(result) {
		    	alert(result);
				var replybody = document.getElementById("replybody");
				init();
				console.log(result);
			}
		});
	}
    </script>	           

<script src="/cloud/resources/js/jquery.min.js"></script>
<script src="/cloud/resources/js/jquery-migrate-3.0.1.min.js"></script>
<script src="/cloud/resources/js/popper.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
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
