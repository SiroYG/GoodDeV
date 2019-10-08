<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>SupporterS :: Main</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
    <script src="/cloud/resources/js/jquery-ui.min.js"></script>

    <!-- <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
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
    <!-- <link rel="stylesheet" href="/cloud/resources/css/chat_index.css"> -->
    <link rel="stylesheet" href="/cloud/resources/css/new-comment.css">

    <script>
    window.onload = function (){
		init();
	}
    
	function init(){
		$.ajax({
			"url" :"/cloud/chat/selectAll",
			"method" : "get",
			"data":{

			},
			"success":function(result){
				var panelbody = document.getElementById("panelbody");
				panelbody.innerHTML=" <header class='text-left'>"
				$(result).each(function(index,item){
					panelbody.innerHTML
						+="<article class='row'><div class='col-md-10 col-sm-10'> <div class='panel panel-default'>"
		           	 	+"<div class='panel-body' >"
						+"<time class='comment-date' datetime=''><i class='fa fa-clock-o'></i> "+item.regdate+ "</time>"
						+"</header>"
						+"<div class='comment-post'> <p>"+item.memo+"</p>	</div></article></div>"
				})		
				panelbody.innerHTML+="<div class='search-form'>"
					+"<input type='text' class='searchWord' id='memo' placeholder='메시지를 입력하세요'>"
					+"<button onclick='Regist()'  type='button' style='margin-left:10px; font-size:12px;' class='btn btn-outline-primary btn-rounded waves-effect'>입력하기</button>"
			   		+"   </div> </div> </div> "
				console.log(result);
			}
		});
	}
	           	 	
	          
    
   $(document).ready(function(){
	   var panelbody = document.getElementById("panelbody");
	   panelbody.scrollTop = panelbody.scrollHeight;
	  $("#panelbody").scrollTop($("#panelbody")[0].scrollHeight) 
   });
    function Regist() {
		var memo = document.getElementById("memo");
		$.ajax({
			"url" : "/cloud/chat/insert",
			"method" : "post",
			"data" : {
				"memo" : memo.value
			},
			"success" : function(result) {
				var panelbody = document.getElementById("panelbody");
				init();
				console.log(result);
			}
		});
	}

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

    <section class="hero-wrap js-fullheight" style="background-image: url('/cloud/resources/images/about_2.jpg');" data-section="home">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-end" data-scrollax-parent="true">
                <div class="col-md-6 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                    <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Of the CEO, <br>By the CEO, <br>For the CEO.</h1>
                    <p class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">창업자들을 위한 모든 지원이 여기 있습니다.<br>지금 바로 검색해보세요!</p>
                    <p><a href="/cloud/member/searchGo" class="btn btn-primary py-3 px-4" style="font-size: 1em;"><span class="span_hover">특허 / 제품 검색하기</span></a>
                    </p>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-counter ftco-no-pt ftco-no-pb img" id="section-counter">
        <div class="container">
            <div class="row d-md-flex align-items-center justify-content-end">
                <div class="col-lg-12">
                    <div class="ftco-counter-wrap">
                        <div class="row no-gutters d-md-flex align-items-center align-items-stretch">
                            <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18">
                                    <div class="text">
                                        <img src="/cloud/resources/images/certifications.png" alt="" class="main_icon">
                                        <strong class="number" data-number="158">0</strong>
                                        <span>실제 창업 성공 건수</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18">
                                    <div class="text">
                                        <img src="/cloud/resources/images/handshakes.png" alt="" class="main_icon">
                                        <strong class="number" data-number="1087">0</strong>
                                        <span>특허 출원 및 <br>사용 허가 합의 건수</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18">
                                    <div class="text">
                                        <img src="/cloud/resources/images/ranks.png" alt="" class="main_icon">
                                        <strong class="number" data-number="564">0</strong>
                                        <span>특허 보유 회원 수</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18">
                                    <div class="text">
                                        <img src="/cloud/resources/images/quality-assurances.png" alt="" class="main_icon">
                                        <strong class="number" data-number="500">0</strong>
                                        <span>실제 출시 된 상품 건수
                                            <!--&amp;--></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-no-pb ftco-services" id="FAQ-section">
        <div class="container">
            <div class="row justify-content-center pb-5">
                <div class="col-md-10 heading-section text-center ftco-animate">
                    <span class="subheading">남녀노소 누구나</span>
                    <h2 class="mb-4">특허에 대한 A to Z</h2>
                    <p>초보자도 쉽게 이해할 수 있는 특허 관련 FAQ를 모았습니다.</p>
                </div>
            </div>
            <div class="row no-gutters">
                <div class="col-md-5 col-lg-3 ftco-animate py-4 nav-link-wrap">
                    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link px-4 py-1 active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true"><span class="mr-3 flaticon-ideas"></span> 특허 검색</a>

                        <a class="nav-link px-4 py-1" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false"><span class="mr-3 flaticon-web-design"></span> 특허의 종류</a>

                        <a class="nav-link px-4 py-1" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false"><span class="mr-3 flaticon-flasks"></span> 특허 등록</a>

                        <a class="nav-link px-4 py-1" id="v-pills-4-tab" data-toggle="pill" href="#v-pills-4" role="tab" aria-controls="v-pills-4" aria-selected="false"><span class="mr-3 flaticon-analysis"></span> 특허 사용 허가</a>

                        <a class="nav-link px-4 py-1" id="v-pills-5-tab" data-toggle="pill" href="#v-pills-5" role="tab" aria-controls="v-pills-5" aria-selected="false"><span class="mr-3 flaticon-flasks"></span> 필요 서류 관련</a>

                        <a class="nav-link px-4 py-1" id="v-pills-6-tab" data-toggle="pill" href="#v-pills-6" role="tab" aria-controls="v-pills-6" aria-selected="false"><span class="mr-3 flaticon-ux-design"></span> 기타 FAQ</a>
                    </div>
                </div>
                <div class="col-md-7 col-lg-9 ftco-animate p-4 p-md-5 d-flex align-items-center">

                    <div class="tab-content pl-lg-4" id="v-pills-tabContent">

                        <div class="tab-pane fade show active py-0 py-lg-5" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-1-tab">
                            <div class="d-lg-flex">
                                <div class="icon-law mr-md-4 mr-lg-5">
                                <span class="icon mb-3 d-block flaticon-search"></span>
                                </div>
                                <div class="text">
                                    <h2 class="mb-4">특허 검색은 어떻게 하나요?</h2>
                                    <p>처음 접하는 회원을 위한 초보자 검색, <br>상세한 정보를 찾을 수 있는 일반 검색 기능을 지원합니다.</p>
                                    <p>초보자 검색은 특허 종류부터 분야, 특정 단어 포함 여부 등을 포함해 간단한 절차로 많은 결과를 포함합니다.
                                    <br>일반 검색은 특허 설명에 포함되어 있는 문장을 포함해 검색할 수 있으며, 특정 전문 기술이 포함된 특허도 검색하실 수 있습니다.
                                    </p>
                                    <p><a href="/cloud/member/searchGo" class="btn btn-primary px-4 py-3" style="background-color: #6e5773 !important; border:none !important;">검색하기&nbsp;<span class="ion-ios-arrow-round-forward"></span></a></p>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade py-0 py-lg-5" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-3-tab">
                            <div class="d-lg-flex">
                                <div class="icon-law mr-md-4 mr-lg-5">
                                <span class="icon mb-3 d-block flaticon-diploma"></span>
                                </div>
                                <div class="text">
                                    <h2 class="mb-4">특허 등록</h2>
                                    <p>우선 '출원'신청을 합니다. 이에 대해 특허 등록을 하고자 하는 것에 대한 명세서, 선언서, 제품 설명서 등을 첨부하게 됩니다.</p>
                                    <p><b>출원후 특허청에서 '등록' 승인이 된 시점부터 특허권은 효력을 발휘합니다.</b>
                                    <br>출원이 완료됐다 해서 정식으로 특허권을 가지게 된 것은 아닙니다.
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade py-0 py-lg-5" id="v-pills-4" role="tabpanel" aria-labelledby="v-pills-4-tab">
                            <div class="d-lg-flex">
                                <div class="icon-law mr-md-4 mr-lg-5">
                                <span class="icon mb-3 d-block flaticon-handshake"></span>
                                </div>
                                <div class="text">
                                    <h2 class="mb-4">특허 사용 허가</h2>
                                    <p><b>우선 운영진은 특허 사용허가 절차 과정에 대해 어떤 관여도 할 수 없음을 밝힙니다.</b></p>
                                    <p>우선 가계약 형식으로 신청을 진행합니다. 이후 특허 보유자가 긍정적 의사를 표했을 경우 사용허가서를 작성한 후, 사용 계약서와 사용 허가서를 양측에 1장씩 총 2장을 보유하게 되면 정식으로 특허권을 사용할 수 있습니다.</p>

                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade py-0 py-lg-5" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-2-tab">
                            <div class="d-lg-flex">
                                <div class="icon-law mr-md-4 mr-lg-5">
                                <span class="icon mb-3 d-block flaticon-data"></span>
                                </div>
                                <div class="text">
                                    <h2 class="mb-4">특허의 종류</h2>
                                    <p>특허는 크게 발명에 대한 특허, 실용신안권, 디자인권, 상표권 등으로 나뉩니다.</p>
                                    <p>특허란 '어떠한 발명에 대하여 개인이나 단체가 독점적인 권리를 만드는 것'을 의미합니다. 특허의 범위는 물질적인 여부를 가리지 않고 '발명'에 대한 모든 것이 포함될 수 있습니다. 
                                    <br>제품에 대한 특허, 방법 및 기술에 대한 특허, 디자인 및 상표에 대한 특허 모두가 포함됩니다.
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade py-0 py-lg-5" id="v-pills-5" role="tabpanel" aria-labelledby="v-pills-5-tab">
                            <div class="d-lg-flex">
                                <div class="icon-law mr-md-4 mr-lg-5">
                                <span class="icon mb-3 d-block flaticon-contract"></span>
                                </div>
                                <div class="text">
                                    <h2 class="mb-4">필요 서류 관련</h2>
                                    <p>특허 출원 신청 및 등록 절차에 필요한 서류와<br>특허 사용허가에 대한 서류가 상이하오니 사전 확인은 필수입니다.</p>
                                    <p>특허 사용허가는 특허 보유자와 사용 신청인 간에 절차가 진행되므로, 관련 서류를 꼼꼼히 확인할 필요가 있습니다.</p>
                                    <p><a href="#" class="btn btn-primary px-4 py-3" style="background-color: #6e5773 !important; border:none !important;">서식 파일 다운로드&nbsp;<span class="ion-ios-arrow-round-forward"></span></a></p>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade py-0 py-lg-5" id="v-pills-6" role="tabpanel" aria-labelledby="v-pills-6-tab">
                            <div class="d-lg-flex">
                                <div class="icon-law mr-md-4 mr-lg-5">
                                <span class="icon mb-3 d-block flaticon-question"></span>
                                </div>
                                <div class="text">
                                    <h2 class="mb-4">기타 FAQ</h2>
                                    <p>기타 궁금한 사항이나 특정 분야에 대한 질문은 Q & A 게시판에서 자유롭게 받고 있습니다. <br>운영진 및 회원간의 자유로운 질답도 가능하오니 무엇이든 물어보세요.</p>
                                    <p><a href="/cloud/board/boardListForm" class="btn btn-primary px-4 py-3" style="background-color: #6e5773 !important; border:none !important;">질문하러 가기&nbsp;<span class="ion-ios-arrow-round-forward"></span></a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="ftco-section" id="blog-section">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-5">
                <div class="col-md-10 heading-section text-center ftco-animate">
                    <h2 class="mb-4">실시간 채팅</h2>
                </div>
            </div>

            <!--chat start-->
            <div class="row" style="vertical-align: middle; margin: 0 auto; justify-content: center;">
                <div class="container" id="chat-container">
                    <!-- <h2 class="page-header">Comments</h2> -->
                    <div class="comment-lists" id="panelbody">
                    
                      <div class='search-form'>
						<input type='text' class='searchWord' id='memo' placeholder='메시지를 입력하세요'>
						<button onclick='Regist()'  type='button' style='margin-left:10px; font-size:12px;' class='btn btn-outline-primary btn-rounded waves-effect'>입력하기</button>
				   		 </div>
                    </div>
                </div>
              </div>
            </div>
    </section>

    <section class="ftco-section contact-section ftco-no-pb bg-light" id="contact-section">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-3">
                <div class="col-md-10 heading-section text-center ftco-animate">
                    <span class="subheading">본사 주소 및 연락처</span>
                    <h2 class="mb-4">공식 연락처</h2>
                    <p>특허 출원 및 사용 허가 관련 최종 절차는 모두 본사에서 진행됩니다.</p>
                </div>
            </div>
            <div class="row d-flex contact-info mb-5">
                <div class="col-md-6 col-lg-3 d-flex ftco-animate">
                    <div class="align-self-stretch box p-4 text-center">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="icon-map-signs"></span>
                        </div>
                        <h3 class="mb-4">찾아오는 길</h3>
                        <p>4th floor, 513, Yeongdong-daero, Gangnam-gu, Seoul, Republic of Korea</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 d-flex ftco-animate">
                    <div class="align-self-stretch box p-4 text-center">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="icon-phone2"></span>
                        </div>
                        <h3 class="mb-4">대표 전화번호</h3>
                        <p><a href="tel://1234567920">+82 02 6000 0114</a></p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 d-flex ftco-animate">
                    <div class="align-self-stretch box p-4 text-center">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="icon-paper-plane"></span>
                        </div>
                        <h3 class="mb-4">대표 이메일</h3>
                        <p><a href="mailto:info@yoursite.com">info@yoursite.com</a></p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 d-flex ftco-animate">
                    <div class="align-self-stretch box p-4 text-center">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="icon-globe"></span>
                        </div>
                        <h3 class="mb-4">공식 사이트</h3>
                        <p><a href="#">index.com</a></p>
                    </div>
                </div>
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
    <script src="//netdna.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
