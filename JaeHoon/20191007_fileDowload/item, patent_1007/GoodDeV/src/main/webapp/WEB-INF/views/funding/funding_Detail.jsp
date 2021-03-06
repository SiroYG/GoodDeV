<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<title>Funding ::</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<!-- <link href="/cloud/resources/css/bootstrap.min.css" rel="stylesheet">-->
<!-- Material Design Bootstrap -->
<link href="/cloud/resources/css/mdb.min.css" rel="stylesheet">
<!-- Your custom styles (optional) -->
<link href="/cloud/resources/css/style.min.css" rel="stylesheet">

<link rel="stylesheet"
	href="/cloud/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="/cloud/resources/css/animate.css">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

<link rel="stylesheet" href="/cloud/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="/cloud/resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/cloud/resources/css/magnific-popup.css">
<link rel="stylesheet" href="/cloud/resources/css/aos.css">
<link rel="stylesheet" href="/cloud/resources/css/ionicons.min.css">
<link rel="stylesheet" href="/cloud/resources/css/flaticon.css">
<link rel="stylesheet" href="/cloud/resources/css/icomoon.css">
<link rel="stylesheet" href="/cloud/resources/css/style.css">
<link rel="stylesheet" href="/cloud/resources/css/funding.css">
<link rel="stylesheet" href="/cloud/resources/css/chat.css">


<script>
$(function() {
    /*채팅 div랑 채팅 내용 input값 초기화*/
    var chat = '';
    var msg = '';
    
    /*채팅창 팝업 띄우기*/
    $('#popup').on('click', function() {
    	var crowdfundingNum=$('#crowdfundingNum').val();
    	alert(crowdfundingNum);
        window.open("/cloud/funding/fundingChat?crowdfundingNum="+crowdfundingNum, "PopupWin", "width=800,height=700");
    });
    
    /*채팅방 선택 css 애니메이션(?)*/
    $('.chat_people').on('click', function() {
        $(this).parent().css("background-color", "#ebebeb");
        $('mesgs').attr('disabled', 'disabled');
        $('.chat_people').not(this).parent().css("background-color", "#f8f8f8");
    });
    
    /*채팅(하는 것처럼 보이는) ajax*/
    $('#msg_send_btn').on('click', function() {
        msg = $('#write_msg').val();

        chat += '<div class = "outgoing_msg" >';
        chat += '<div class = "sent_msg" >';
        chat += '<p>' + msg + '</p>';
        chat += '<span class = "time_date" >' + '18: 47 | 09 / 26' + '</span>';
        chat += '</div> </div>';
        
        //$('#msg_history').append(chat);
        $(chat).appendTo('#msg_history');
        
        /*채팅 div랑 채팅 내용 input값 초기화2*/
        chat = '';
        msg = '';

    });

});

 function btn(){
	 var popup= document.getElementById("popup");
	 
	 window.location.href="/cloud/funding/fundingChat";
 }
</script>

</head>

<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

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


	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('/cloud/resources/images/about_7.jpg');"
		data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate pb-5 text-center">
				<h1 class="mb-3 bread">Crowd Funding</h1>
				<p class="breadcrumbs">
					<span class="mr-2"><a href="home">Home <i
							class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a
						href="#">크라우드 펀딩 <i class="ion-ios-arrow-forward"></i></a></span> <span>펀딩
						상세페이지 <i class="ion-ios-arrow-forward"></i>
					</span>
				</p>
			</div>
		</div>
	</div>
	</section>
	
	
   <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
             <div class="modal-content">
                 <div class="modal-header">
                     <h4 class="modal-title" id="exampleModalLabel">결제 확인</h4>
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                         <span aria-hidden="true">&times;</span>
                     </button>
                 </div>
                 <div class="modal-body">
                     <div class="card-body p-5">
                         <ul class="nav bg-light nav-pills rounded nav-fill mb-3" role="tablist">
                             <li class="nav-item">
                                 <a class="nav-link active" data-toggle="pill" href="#nav-tab-card">
                                     <i class="fa fa-credit-card"></i> Credit Card</a></li>
                             <li class="nav-item">
                                 <a class="nav-link" data-toggle="pill" href="#nav-tab-bank">
                                     <i class="fa fa-university"></i> Bank Transfer</a></li>
                         </ul>

                         <div class="tab-content">
                             <div class="tab-pane fade show active" id="nav-tab-card">
                                 <p class="alert alert-success">결제 완료</p>
                                 <p class="alert alert-danger">결제 정보를 다시 한번 확인해주세요.</p>     
                                 <form action="" method="post" name="pay" role="form" class="needs-validation">
                                 	<input type="hidden" name="crowdfundingNum" value="${fund.crowdfundingNum}">
                                 	<input type="hidden" name="itemname" value="${fund.fundingTitle}">
                                 	<input type="hidden" name="memberId" value="${fund.memberId}">
                                     <div class="form-group">
                                         <label for="username"> 투자금액 </label>
                                        <!--  <input type="hidden" name="memId" value="" /> -->
                                         <input type="text" class="form-control" oninput="amountcheck()" name="amount" id="amount" placeholder="투자금액을 입력해주세요" required>
                                     </div> 
                                     
                                     <div class="form-group">
                                         <label for="cardNumber"> 결제확인 email </label>
                                         <div class="input-group">
                                            <input type="email" class="form-control" id="email" name="email" placeholder="email을 입력해주세요." required>
                                             <div class="input-group-append">
                                                 <div class="invalid-feedback">
                                                      			결제 이메일을 입력해주세요
                                                 </div>
                                             </div>
                                         </div>
                                     </div> 

                                     <div class="row">
                                         <div class="col-sm-8">
                                             <div class="form-group">
                                                 <label><span class="hidden-xs">핸드폰번호</span> </label>
                                                 <div class="input-group">
                                                     <input type="text" class="form-control" id="tel" placeholder="'-'자 없이 입력해주세요" name="tel" required>
                                                 </div>
                                             </div>
                                         </div>
                                         <div class="col-sm-8">
                                             <div class="form-group">
                                                 <label data-toggle="tooltip" title=""> 주소 </label>
                                                 <input type="text" class="form-control" id="addr" name = "addr" required>
                                             </div> 
                                         </div>
                                     </div>
                                     <button onClick="paycheck()" type="submit" class="subscribe btn btn-submit btn-block"> 결제하기 </button>
                                 </form>
                             </div> 
                             <div class="tab-pane fade" id="nav-tab-bank">
                                 <p>무통장입금을 원하실 경우 다음 계좌를 참고하세요.<br></p>
                                 <dl class="param">
                                        <dd>은행 : <b>신한은행</b></dd>
                                 </dl>
                                 <dl class="param">
                                      <dd>계좌번호 : <b>110-391-432959</b></dd>
                                 </dl>
                                 <dl class="param">
                                    <dd>예금주 : <b>銀行</b></dd>
                                 </dl>
                             </div> 
                         </div> 

                     </div>  
                 </div>
                 <div class="modal-footer">
                     <button type="button" onclick="" class="btn btn-outline-info">결제하기</button>
                     <button type="button" class="btn btn-outline-success" data-dismiss="modal">닫기</button>
                 </div>
             </div>
         </div>
     </div>
	
	<section class="ftco-section" id="blog-section">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-5">
			<div class="col-md-10 heading-section text-center ftco-animate">
				<span class="subheading"></span>
				<h2 class="mb-4">${fund.fundingTitle}</h2>
				<!--Main layout-->
				
				<main class="mt-5 pt-4">
				<div class="container dark-grey-text mt-5">

					<!--Grid row-->
					<div class="row wow fadeIn">

						<!--Grid column-->
						<div class="col-md-6 mb-4">

							<img
								src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/14.jpg"
								class="img-fluid" alt="">

						</div>
						<!--Grid column-->

						<!--Grid column-->
						<div class="col-md-6 mb-4">

							<!--Content-->
							<div class="p-4">

								<div class="mb-3">
									<a href=""> <span class="badge purple mr-1">finish</span>
									</a> <a href=""> <span class="badge blue mr-1">best</span>
									</a> <a href=""> <span class="badge red mr-1">hot</span>
									</a>
								</div>

								<!--<p class="lead">
                                           <span>가격 : (price)</span>
                                        </p>-->

								<p class="lead font-weight-bold">펀딩 진행 기간 :
									${fund.fundingStartDate} ~ ${fund.fundingDueDate}</p>
								<p class="lead font-weight-bold">
									<span>펀딩 목표 금액 : ${fund.itemGoalPrice}</span>
								</p>
								<input type="hidden" id="crowdfundingNum" name="crowdfundingNum" value="${fund.crowdfundingNum}">
								<br>
								<div class="ftco-animate">
									<p class="lead font-weight-bold">
										현재 달성률 : <strong class="number" data-number="${percent}"></strong>%
										/ 100 %
									</p>
								</div>
								<div class="progress2 progress-moved">
									<div class="progress-bar2"></div>
								</div>
								<br>
								<!-- <p class="lead">현재 진행 금액 : (itemCurrencyPrice)</p>-->

								<form class="d-block justify-content-left">
									<!-- Default input -->
									
									<br>
									
									<!--<label for="">구매 가격 : <span name="price">(옵션 해당 가격)</span></label>-->
									<br>
								</form>
								<hr>
								<button type="button" class="btns btn-3-green" data-toggle="modal" data-target="#exampleModal">결제하기</button>
								&nbsp; &nbsp;
								<button type="button"  value="" class="btns btn-3-green" id="popup" >1 : 1 채팅</button>
							</div>
							<!--Content-->
						</div>
						<!--Grid column-->
					</div>
					<!--Grid row-->
					<hr>
					<!--Grid row-->
					<div class="row d-flex justify-content-center wow fadeIn">
						<!--Grid column-->
						<div class="col-md-6 text-center">
							<h4 class="my-4 h4">${fund.fundingTitle}</h4>
							<p>${fund.fundingContents}</p>
						</div>
						<!--Grid column-->
					</div>
					<!--Grid row-->
					<!--Grid row-->
					<div class="row wow fadeIn">
						<!--Grid column-->
						<div class="col-lg-4 col-md-12 mb-4">
							<img
								src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/11.jpg"
								class="img-fluid" alt="">
						</div>
						<!--Grid column-->
						<!--Grid column-->
						<div class="col-lg-4 col-md-6 mb-4">
							<img
								src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/12.jpg"
								class="img-fluid" alt="">
						</div>
						<!--Grid column-->
						<!--Grid column-->
						<div class="col-lg-4 col-md-6 mb-4">
							<img
								src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/13.jpg"
								class="img-fluid" alt="">
						</div>
						<!--Grid column-->
					</div>
					<!--Grid row-->
				</div>

				<hr>

				

				</main>
			</div>
		</div>
	</div>
	</section>

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
		<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke="#eeeeee" />
		<circle class="path" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
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
	<!--  <script src="/cloud/resources/js/bootstrap-datepicker.js"></script>
  <script src="/cloud/resources/js/jquery.timepicker.min.js"></script>-->
	<script src="/cloud/resources/js/scrollax.min.js"></script>

	<script src="/cloud/resources/js/main.js"></script>

	<!-- SCRIPTS -->
	<!-- JQuery -->
	<script type="text/javascript"
		src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="/cloud/resources/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript"
		src="/cloud/resources/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="/cloud/resources/js/mdb.min.js"></script>
	<!-- Initializations -->
	<!--<script type="text/javascript">
    // Animations initialization
    new WOW().init();

  </script>-->

</body>


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
                <li><a href="/cloud/home#contact-section"><span class="icon-long-arrow-right mr-2"></span>공식 연락처</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">검색 및 특허 관련</h2>
              <ul class="list-unstyled">
                <li><a href="/cloud/member/searchGo"><span class="icon-long-arrow-right mr-2"> 특허 검색</span></a></li>
                <li><a href="/cloud/member/"><span class="icon-long-arrow-right mr-2"> 제품 검색</span></a></li>
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
  <script>
     var amount = document.getElementById("amount");
     var eamil = document.getElementById("email");
     var tel = document.getElementById("tel");
     var addr = document.getElementById("addr");
     
     function amountcheck(){
     	  if (!isNaN(amount.value)===false) {
     			alert("금액을 입력해주세요.");
     			amount.value="";
     			return;
     		}
     }
     function paycheck(){
     	 if (!isNaN(amount.value)===false) {
  			alert("금액에는 숫자만 입력해주세요.");
  			return ;
  		}
     	 if (amount.value.length==0	|| amount.value=="") {
 			alert("금액이 입력되지 않았습니다.");
 			return ;
 		}	 if (email.value.length==0	|| amount.value=="") {
 			alert("이메일이 입력되지 않았습니다.");
 			return ;
 		}	 if (tel.value.length==0	|| amount.value=="") {
 			alert("전화번호가 입력되지 않았습니다.");
 			return ;
 		}
 		 if (addr.value.length==0	|| addr.value=="") {
 				alert("전화번호가 입력되지 않았습니다.");
 				return ;
 			}
     	var paywin = window.open('about:blank', 'payment', 'location=no, directories=no, resizable=no, status=no, toolbar=no, menubar=no, scrollbars=no, width=800, height=600');
     	var pay =document.pay;
     	pay.action = '/cloud/funding/paymentform';
     	pay.target='payment';
     	pay.method='GET';
     	pay.submit();
     	
     	
     }
      
     </script>
</html>
