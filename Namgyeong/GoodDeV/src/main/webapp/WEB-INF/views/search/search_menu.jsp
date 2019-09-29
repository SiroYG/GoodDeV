<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
    
    <script>
    $(function(){
    	
    	$('#request').on('click',function(){
    		var check = $('#check').is(':checked');
    		var memName = $('#memName').val();
    		var formData = new FormData($('#patinsertForm')[0]);
    		var upload =$('#upload').val();
    		if(!check){
        		alert('이용약관 반드시 체크하세요!');
        		return false;
        	}  
    		if(memName==''||memName.length==0){
    			alert('이름을 입력하세요!');
        		return false;
    		}
        	if(upload==''||upload.length==0){
	    			alert('파일을 반드시 첨부하세요!')
	    			return false;
	    		}
    		$.ajax({
    				url : 'patinsertForm',
	    			type : 'post',
	    			enctype : 'multipart/form-data',
	    			processData : false,
	    			contentType : false,
	    			data : formData,
    				success : function(res){
    					if(res=='success'){
    						alert('성공')
    						$('#exampleModal').modal('hide');
    					}else{
    						alert('실패')
    					}
    				}
    		})
    		
    	});
    
    	
    });
    
    function loginGo(){
    	window.location.href="/cloud/member/gologin";
    }
    function signGo(){
    	window.location.href="/cloud/member/gosign";
    }
    function searchGO(){
    	window.location.href="/cloud/member/searchGo";
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
	          <li class="nav-item"><a href="/cloud/survey/surveyListForm" class="nav-link"><span>블라인드 테스트</span></a></li>
	          <li class="nav-item"><a href="/cloud/funding/gofunding" class="nav-link"><span>크라우드 펀딩</span></a></li>
	          <li class="nav-item"><a href="/cloud/member/Mypage" class="nav-link"><span>마이페이지</span></a></li>
	  			 <c:if test="${sessionScope.loginId==null}">
					<li style="margin-left: 20px;" class="nav-item cta"><a
						href="/cloud/member/gologin" class="nav-link">로그인</a></li>
					<li style="margin-left: 20px;" class="nav-item cta"><a
						href="/cloud/member/gosign" class="nav-link">회원가입</a></li>
				</c:if>
				<c:if test="${sessionScope.loginId!=null}">
					<li style="margin-left: 20px;" class="nav-item cta"><a
							 class="nav-link">${sessionScope.loginName} ${sessionScope.loginType}님, 로그아웃 </a></li>
					<!-- <li style="margin-left: 20px;" class="nav-item cta"><a
						href="/cloud/member/logout" class="nav-link">로그아웃</a></li> -->
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
            <h1 class="mb-3 bread">Search Menu</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="home">Home <i class="ion-ios-arrow-forward"></i></a></span> <!--<span class="mr-2"><a href="blog.html">Q & A 게시판 <i class="ion-ios-arrow-forward"></i></a></span>--> <span>검색 분류 <i class="ion-ios-arrow-forward"></i></span></p>
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
           <div class="alert alert-primary ftco-animate" role="alert">
                    특허 출원/사용 절차를 진행할 때는 지정된 서식을 사용해야 합니다. <a href="#" class="alert-link">서식 파일 다운로드</a>
                </div>
          
         <div class="boxes">
  <a class="box" onclick="searchGO()" >
    <h3>특허 검색하기</h3>
   <img src="/cloud/resources/images/search.png" alt="" class="icons">
    <p>특정 단어, 산업분야 등 여러 검색 옵션이 있습니다.</p>
  </a>
<div class="hr_div"></div>
  <a class="box2" href="#">
    <h3>제품 검색하기</h3>
    <img src="/cloud/resources/images/branding.png" alt="" class="icons">
    <p>실제 판매중인 제품군들을 비교할 수 있습니다.</p>
  </a>
  </div>
    <div class="boxes">
                    <a class="box3" href="#" data-toggle="modal" data-target="#exampleModal">
                        <h3>특허 출원 신청하기</h3>
                        <img src="/cloud/resources/images/resume.png" alt="" class="icons">
                        <p>출원 절차를 밟아 정식으로 특허를 등록할 수 있습니다.</p>
                    </a>

                    <a class="box4" href="/cloud/patent/patentlist">
                        <h3>특허 출원/사용 확인하기</h3>
                        <img src="/cloud/resources/images/menu.png" alt="" class="icons">
                        <p>출원 및 사용 허가 여부를 확인할 수 있습니다.</p>
                    </a>
                </div>
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
    
   <script src="/cloud/resources/js/bootstrap.min.js"></script>
  <script src="/cloud/resources/js/jquery.min.js"></script>
  <script src="/cloud/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/cloud/resources/js/popper.min.js"></script>
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
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
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
                    <form action="#" method="post" id="patinsertForm">
                        <div class="form-group">
                            <label for="appointment_message" class="text-black">특허 신청 이용 약관</label>
                            <textarea name="" id="appointment_message" class="form-control" cols="30" rows="10" readonly="readonly" style="overflow-y:scroll;">제 1 조 (목적)
본 약관은 한국발명진흥회 (이하 "진흥회"라 한다)가 제공하는 특허분석평가시스템 (이하 "분석평가시스템"이라 한다) 이용에 관한 제반 절차 및 진흥회와 서비스 이용자 (이하"이용자"라 한다)의 권리, 의무 및 책임사항을 규정함을 목적으로 한다.

제 2 조 (정 의)
①이 약관에서 이용하는 용어의 정의는 다음과 같다.
1."이용자"란 이 약관에 따라 진흥회에서 제공하는 서비스를 받는 회원 및 비회원을 말한다.
2."회원"이라 함은 진흥회에 개인정보를 제공하여 회원등록을 한 자로 유료회원 및 무료회원을 말한다.
3."유료회원"이란 공지된 비용(이하 "이용요금"이라 한다)을 지불하고 진흥회의 서비스를 이용하는 자를 말하며, 특별한 경우가 아닌 경우 아래 약관 내용에서 회원이라 함은 유료회원을 지칭한다.
4."연간회원"이라 함은 이용요금 중 연간요금을 지불하고 진흥회에 이용자 및 기업/기관정보를 제공하여 회원등록을 한 자로 유료회원을 말한다.
5."무료회원"이란 진흥회에 개인정보를 제공하여 회원등록을 한 자로 이용요금의 지불없이 진흥회가 허여한 제한된 서비스 범위내에서 이용하는 자를 말한다. 다만, 무료회원에 대한 서비스의 제공 여부는 진흥회가 정하는 운영정책에 따른다.
6."이용자ID(이하"ID"라 한다)"라 함은 회원의 식별 및 서비스 이용을 위하여 회원이 선정하고 진흥회가 부여하는 고유한 문자와 숫자의 조합을 말한다.
7."비밀번호"라 함은 ID로 식별되는 회원의 본인 여부를 검증하기 위하여 회원이 설정하여 진흥회에 등록한 고유의 문자와 숫자의 조합을 말한다.

② 이 약관에서 이용하는 용어 중 제 ①항에서 정하지 아니한 것은 관계법령 및 서비스별 안내에서 정하는 바에 따르며, 그 외에는 일반 관례에 따른다.
제 3 조 (약관의 개정)
①진흥회는 약관을 개정할 경우 개정내용에 대해서 그 내용을 서비스 화면에 게시하거나, 또는 회원이 제공한 전자우편 주소를 이용하여 그 사실을 적용일자 7일전에 알려야 한다. 다만, 서비스 사이트에 게시된 개정 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있다.
②회원은 정기적으로 진흥회에서 제공하는 서비스에 접속하여 약관의 변경사항을 확인하여야 한다. 다만, 회원이 등록한 전자우편 주소의 부정확성, 서비스 미 방문 등의 사유로 인해 변경된 약관에 대한 정보를 알지 못해 발생하는 회원의 피해는 진흥회에서 책임지지 않는다.
③회원은 변경된 약관에 동의하지 않을 경우 회원 해지를 요청할 수 있으며, 변경된 약관의 효력발생일로부터 7일 이후에도 서비스를 계속 이용할 경우 약관의 변경 사항에 동의한 것으로 간주한다.
④이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 관련법령 및 일반적인 전자상거래 관행에 따른다.
제 4 조 (약관 외 준칙)
진흥회는 필요한 경우 이용자와 별도 계약을 맺을 수 있으며, 본 약관과 별도 계약의 내용이 상충하는 경우에는 별도 계약의 내용을 우선하여 적용한다.



제 2 장 이용계약 체결
제 5 조 (이용계약의 성립)
①이용계약은 이용자의 이용계약 내용에 대한 동의와 이용신청에 대하여 진흥회가 승낙함으로써 성립한다.
②이용계약의 성립은 이용요금이 진흥회에 결제 완료된 시점으로 한다.
제 6 조 (회원가입 및 이용신청)
①서비스를 이용하고자 하는 자는 이 약관에 대한 동의표시 및 진흥회가 요청하는 제반정보에 대해 회원가입 양식에 따라 개인정보 또는 기업정보를 제공하여야 한다. 단, 진흥회가 전화 또는 전자우편 주소 등을 통해서 이용신청이 가능하도록 한 경우에는 이를 통해서 이용 신청을 할 수 있다.
②회원 가입은 반드시 실명으로만 가입할 수 있으며, 진흥회는 실명확인조치를 할 수 있다. 회원은 진흥회의 확인조치에 대해서 적극 협력하여야 하며, 만일 이를 준수하지 아니할 경우 진흥회는 회원이 등록한 정보가 부정한 것으로 처리할 수 있다.
③회원의 진정한 정보를 등록하지 않은 회원은 서비스 이용과 관련하여 아무런 권리를 주장할 수 없으며, 타인의 명의를 도용하여 이용신청을 한 경우 회원의 모든 정보는 삭제되며, 관계법령에 따라 처벌을 받을 수 있다.
제 7 조 (이용신청의 승낙과 제한)
①진흥회는 제5조, 제6조의 이용신청 절차에 위배되지 않고 업무수행상 또는 기술상 지장이 없는 경우 이용신청에 대해 이용요금의 입금이 확인된 후 서비스 이용을 승낙한다.
②진흥회는 아래사항에 해당하는 이용신청에 대하여는 해당 사유가 해소될 때까지 그 승낙을 유보 및 보류할 수 있다.
-회원의 진정한 정보를 제공하지 아니한 이용신청의 경우
-진흥회가 제공하는 서비스와 경쟁관계에 있는 이용자가 신청하는 경우
-회원이 진흥회에 납부할 이용요금, 가산금 또는 불법 면탈요금을 체불하고 있는 경우
-진흥회의 약관을 위반하여 이용계약이 해지된 적이 있는 이용자가 신청하는 경우
-부정한 용도로 본 서비스를 이용하고자 하는 경우
-진흥회의 기술상 지장이 있는 경우
-진흥회가 설비의 여유가 없는 경우
-기타 진흥회의 귀책사유로 이용승낙이 곤란한 경우


제 3 장 계약 당사자의 의무 및 협력
제 8 조 (진흥회의 의무)
①진흥회는 관련법규와 이 약관이 금지하는 어떠한 행위도 하지 아니하며, 이 약관이 정하는 바에 따라 지속적이고, 안정적인 서비스를 제공하는데 최선을 다한다.
②진흥회는 이용자가 안전하게 분석평가시스템을 이용할 수 있도록 이용자의 개인정보 및 관리를 위한 필요한 조치를 취하여야 한다.
③진흥회는 이용자의 개인신상정보를 본인의 승낙 없이 타인에게 누설, 배포하여서는 안된다.
④진흥회는 계속적이고 안정적인 서비스의 제공을 위하여 설비에 장애가 생기거나 멸실된 때에는 부득이한 사유가 없는 한 지체없이 이를 수리 또는 복구한다.
제 9 조 (회원의 의무)
①회원은 이 약관에서 규정하는 모든 사항과 서비스 이용안내 및 주의사항을 준수하여야 한다.
②회원은 자신의 ID와 비밀번호를 관리할 의무를 가지고, 회원의 ID와 비밀번호를 이용하여 발생하는 모든 결과에 대한 책임은 전적으로 회원에게 있다.
③회원은 주소, 전화번호, 전자우편 주소 등 인적 사항이 변경된 경우에는 즉시 진흥회에 고지할 책임을 지며, 이에 대한 변경 절차를 진행하지 아니하여 발생한 문제에 대하여는 진흥회가 책임을 지지 않는다.
④회원은 제공되는 서비스를 이용함으로써 발생하는 이용요금에 대해 납부할 책임을 진다.
⑤회원은 진흥회에 사전 통보 없이 임의로 제3자에게 유료서비스에 대해 양도 및 증여를 할 수 없으며, 어떤 질권의 목적으로도 이용할 수 없다.
제 10 조 (협력사항)
①회원은 서비스 활용 및 조기안정화를 위해 진흥회의 요구에 따라 의견을 제시할 수 있다.
②연간회원은 진흥회의 요구에 따라 동 시스템 신뢰도 향상과 분야별 특성을 반영하기 위해 내부 자체평가 결과 및 평가 관련 자료를 진흥회에 제공하여야 한다.
③연간회원은 동 시스템의 편의 향상을 위한 맞춤형 서비스 개발이 가능하도록 지원 및 협력 한다.
④진흥회는 연간회원의 특허관리 담당자에게 동 시스템의 이용방법 및 활용에 대한 교육을 실시할 수 있다.
제 11 조 (협의회 운영)
①진흥회는 동 시스템 서비스의 안정화 및 신뢰도 향상을 위해 연간회원이 참여하는 협의회를 운영할 수 있다.
②협의회는 개발 및 운영 자문위원과 연간회원들로 구성되며, 협의 목적은 시스템의 안정화, 부가기능 향상, 시스템 개발 방향 및 동 시스템 활용에 대해 자문 및 이용자들의 의견 수렴에 있다.
③협의회 운영 횟수는 정기적으로 연간 2회로 하며, 필요에 따라 수시로 정할 수 있다.
제 12 조 (개인정보보호 및 보안유지)
①진흥회에 제공된 회원의 개인정보는 진흥회가 회원의 동의 없이 목적 외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은 진흥회가 진다. 다만, 아래의 경우에는 예외로 한다.
- 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우
- 범죄에 대한 수사상의 목적이 있거나 정보 통신 윤리위원회의 요청이 있는 경우
- 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우
②회원은 언제든지 진흥회가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 진흥회는 이에 대해 지체 없이 필요한 조치를 취할 의무를 진다.
제 13 조 (비밀유지)
①진흥회와 회원은 본 시스템 이용과 관련하여 취득한 상대방의 업무상 비밀에 대하여 상대방의 사전 서면 동의 없이 제3자에게 유출하거나 타목적에 이용하여서는 안된다.
②이용자는 시스템으로 얻어진 모든 정보에 대해서 타인에게 진흥회의 사전승낙 없이 복제, 전송, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안된다.
③이용자는 시스템 이용 과정에서 취득한 모든 기밀사항을 타인에게 일체 누설할 수 없으며, 공공기관의 기록물 관리에 관한 법률, 동법 시행령 및 시행규칙, 보안업무규정을 준수하고, 진흥회가 요구하는 사항과 절차를 철저히 준수하여야 한다.
④이용자는 시스템 이용 도중이나 이행 후에도 보안유지에 노력하여야 하며, 보안에 관한 사항을 누설 또는 취급소홀로 인하여 중대한 상황이 발생하였거나 발생할 우려가 있다고 인정될 때에는 진흥회는 본 이용약관을 해지할 수 있으며, 이용자는 어떠한 조치라도 감수해야 한다.
제 14 조 (공지 및 통지)
①진흥회는 회원에 대한 공지 및 통지를 하는 경우, 진흥회가 제공하는 메인 서비스에 게시하거나, 회원이 기재한 전자우편 주소로 그 내용을 통지할 수 있다. 단, 허위로 기재된 전자우편 주소로 인해 발생하는 불이익에 대한 책임은 전적으로 회원에게 있으며, 서비스 사이트에 게시되는 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있다.
②진흥회는 불특정다수 회원에 대한 공지 및 통지를 할 경우 5일 이상 사이트에 공지하거나 또는 게시판을 통해 공지함으로써 고객에게 개별 통지한 것으로 갈음할 수 있다.
제 15 조 (회원의 지위승계)
①아래의 항목에 해당하는 사유가 발생한 때에는 회원의 지위를 승계한다.
- 회원의 사망으로 그 지위를 상속받은 때
- 법인이 다른 법인을 흡수 합병하여 존속하는 법인이 그 이용권을 인수한 때
- 2인 이상의 법인이 하나의 법인으로 신설 합병하여 새로운 법인이 그 이용권을 인수한 때
- 하나의 법인이 2 이상의 법인으로 분할하는 경우로서 그 분할된 법인 중 하나의 법인이 그 이용권을 인수한 때
- 그 외 위에 열거된 항목과 유사한 사유가 발생하여 진흥회가 필요하다고 인정한 때
②위 제①항의 규정에 의하여 회원의 지위를 승계한 자는 아래의 항목에 해당하는 사항을 진흥회에 통보하여야 한다.
- 회원의 모든 변경정보
- 이용요금고지주소가 변경되는 경우에는 그 변경되는 이용요금고지주소
- 이용요금납입책임자가 변경되는 경우에는 그 변경되는 이용요금납입책임자


제 4 장 서비스의 이용
제 16 조 (서비스 이용 범위 및 그 제한)
①분석평가시스템은 특허평가, 특허평가보고서, 유사특허군조회, 개별특허분석, 특허포트폴리오 분석 및 기타 부가기능 등의 서비스를 제공하며, 이용자는 본 시스템을 활용하여 아래와 같은 목적 범위 내에서 이용할 수 있다.
- 등급평가를 통한 등록 특허의 유지･포기 등의 특허관리 의사결정 지원
- 유사특허군 분석을 통한 경쟁업체 파악, 이전 가능 잠재수요자 발굴, 사업화 또는 라이센싱 전략 수립 지원
- 기술분야별, 출원인별 등 특허정보 통계 데이터를 이용한 IP 컨설팅
- 기업 내부 자체 특허 평가 검증 활용 등
이용자는 위와 같은 내부 자체 의사결정에 이용할 수 있으나, 분석평가시스템을 통해 얻어진 정보를 외부에 공표하는 등의 행위에 일체 이용할 수 없다.
②이용자가 제①항의 서비스 범위를 벗어나 서비스 결과물을 임의로 이용하고자 하는 경우, 반드시 진흥회의 사전 동의를 받아야 하며 그렇지 않은 경우 시스템 이용이 제한될 수 있다.
③이용자가 진흥회의 동의 없이 제①항의 서비스 범위를 넘어 서비스 결과물을 임의로 이용하여 문제가 발생하는 경우, 그 모든 책임은 이용자에게 있다.
제 17 조 (서비스 이용시간 및 이용책임)
①서비스 이용은 진흥회의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간 운영을 원칙으로 한다. 단, 진흥회는 분석평가시스템 정기점검, 증설 및 교체를 위해 진흥회가 정한 날이나 시간에 서비스를 일시 중단할 수 있으며, 예정되어 있는 작업으로 인한 서비스 일시 중단은 사이트를 통해 사전에 공지한다.
②진흥회는 긴급한 분석평가시스템 점검, 증설 및 교체, 설비의 장애, 서비스 이용의 폭주, 국가비상사태, 정전 등 부득이한 사유가 발생한 경우 사전 예고 없이 일시적으로 서비스의 전부 또는 일부를 중단할 수 있다.
③진흥회는 서비스 개편 등 서비스 운영상 필요한 경우 회원에게 사전 예고 후 서비스의 전부 또는 일부의 제공을 중단할 수 있다.
④진흥회는 위 제①항, 제②항, 제③항의 사유로 서비스의 제공이 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상하지 아니한다. 단, 진흥회에 고의 또는 중과실이 있는 경우에는 그러하지 아니한다.
⑤이용자가 서비스 이용요금 및 제공되는 서비스의 내용 안내에 대해 충분한 숙지 없이 서비스 자료를 취사, 선택, 이용하여 발생되는 손해에 대해서는 이용자의 자기책임으로 한다.
제 18 조 (이용요금 및 요금의 납입방법 등)
①진흥회에서 제공하는 서비스 중 사이트상에 고지된 금액은 그 고지된 금액을 확정금액으로 한다.
②진흥회가 제공하는 서비스에 대한 대금지급방법은 아래 항목 중에서 하나로 할 수 있다.
- 전자결제를 통한 신용카드결제
- 전자결제를 통한 계좌이체결제
③이용요금 납입책임자는 서비스 이용가입자를 원칙으로 한다. 다만, 진흥회가 인정하는 경우에는 타인을 이용요금 납입책임자로 할 수 있다.
④위 제③항의 규정에 의한 이용요금 납입책임자는 이용자가 진흥회에 대하여 부담하는 서비스 이용요금 등 약관에 따른 모든 채무를 이용자와 연대하여 진흥회에 납입하여야 한다.
제 19 조 (이용요금 납입의 청구)
①진흥회는 이용요금의 납입, 미납청구를 납입기일 5일 전까지 이용요금 납입책임자에게 고지한다.
②2인 이상의 이용자가 연대하여 이용요금의 납입의무를 지는 경우에는 그 납입의 청구는 그 중 1인에게만 한다.
③진흥회는 미납금을 최근 청구월 요금에 합산하여 납입청구 할 수 있다.
④이용요금 납입책임자는 진흥회로부터 이용요금의 청구를 받은 때에는 납입 기일까지 그 이용요금을 납입 하여야 한다. 구체적인 납입방법은 제18조 제②항의 방법 중 이용자가 선택할 수 있다.
⑤이용요금 납입 기일로부터 3개월 이상 연체되었을 경우에는 진흥회의 불량거래 회원으로 등록되며 진흥회는 이로 인해 발생하는 불이익에 대한 책임을 지지 아니한다.
제 20 조 (연간회원의 이용요금)
①서비스의 이용요금은 이용계약이 체결됨과 동시에, 하나의 ID에 서비스를 이용할 자격을 부여한 데에 따른 것으로, 구체적인 이용요금의 내역은 분석평가시스템 이용요금 규정과 같다.
②본 연간회원 이용계약의 효력은 진흥회의 지정된 계좌로 이용요금 지급이 확인 후 발생한다.
③연간회원의 ID는 분석평가시스템 이용요금 규정에 따라 이용기간 및 이용건수가 제한된다.
제 21 조 (연간회원의 이용기간 및 연장)
①연간회원의 이용 기간은 계약 체결일로부터 12개월로 한다.
②이용기간 만료일 1개월 이내 상호 별도의 서면 의사표시를 하여 진흥회가 이용요금의 납입을 확인 후 연간회원의 이용기간 연장을 승인할 수 있다.
③용한도 이상의 추가 평가결과 제공을 위해서는 연간요금에 준하는 추가 이용 요금을 진흥회에 지불해야 한다.


제 5 장 계약해지 및 청약철회
제 22 조 (회원탈퇴 및 자격상실)
①제5조, 제6조에 의해 회원 가입한 회원은 진흥회에 언제든지 서비스의 해지 및 회원탈퇴를 요청할 수 있으며, 진흥회는 요청을 접수한 후 즉시 이를 처리하여야 한다.
②진흥회는 서비스의 이용이 승낙된 이후 제7조 제②항에 해당하는 사유가 발견된 경우 회원 자격을 정지하고 이용계약을 철회할 수 있다.
제 23 조 (이용계약의 해지 등)
①회원이 서비스 이용계약을 해지하고자 하는 때에는 회원 본인이 서비스 내의 회원탈퇴메뉴를 이용해 가입 해지를 해야 한다. 다만, 부득이한 경우 진흥회의 고객센터를 통해 전화로 해지 신청을 할 수 있으며, 이때 회원은 진흥회가 서비스의 이용자 본인임을 확인하는 절차에 적극 협조하여야 한다.
②회원이 서비스의 해지를 신청하면 진흥회는 이용요금을 정산하여 15일 이내로 이용요금을 청구하거나 혹은 예치금 잔액을 환불하여야 한다.
③회원의 해지로 인하여 이전의 모든 회원정보는 추후 재가입 시에도 복구가 불가능하며, 진흥회는 해지와 관련된 손해배상의 책임을 지지 않는다. 다만, 서비스 운영정책에서 정한 일정 기간 내에 재가입이 이루어져 회원정보의 복구가 유효한 경우에는 회원의 요청에 따라 복구를 지원한다.
④진흥회는 아래의 항목에 해당하는 사유가 발생했을 때 일정기간 또는 조건을 정하여 서비스 제공을 중지할 수 있으며, 중지기간 내 중지사유를 해소하지 아니하면 중지기간 종료 후 해당 회원의 서비스를 해지한다. 다만, 중지기간 내에 중지사유를 해소하면 서비스를 재개한다.
- 예치금의 잔액이 운영정책에서 정한 허용 범위를 초과한 경우
- 진흥회가 제공하는 서비스의 시스템에 위해를 가할 우려가 있는 경우
- 이 약관에 언급된 이용자의 의무 규정을 위반한 경우
- 서비스 이용 기간 중 제7조 제②항의 사유가 적발된 경우
⑤이진흥회는 제7조 제②항, 제17조 또는 제23조 제④항의 사유 중에서 중대한 위반 사유에 해당하는 대해서는 통지 없이 즉시 서비스를 중지하거나, 해지 등의 조치를 취할 수 있다.
⑥진흥회는 해지된 이용자에 대하여는 운영정책에서 정하는 일정기간 동안 가입을 제한할 수 있다.
제 24 조 (청약철회 및 환불)
①진흥회는 서비스의 제공을 할 수 없을 때와 이용요금의 과오납이 있을 때에는 과오납분에 대해서는 서비스의 이용요금을 받은 날로부터 7일 이내에 환불 등의 필요한 조치를 취하고 그 사유를 통지하여야 합니다. 다만, 정상적인 업무처리가 이루어진 경우 진흥회는 이용요금의 환불에 대한 책임을 지지 아니한다.
②이용자가 진흥회의 서비스 이용을 위해 가입 후, 가입비와 예치금 결제를 하여 계약이 성립되었다 하더라도 결제 후, 해당 서비스 시작일로부터 7일 이내에서 계약을 철회하고, 가입비 및 예치금 환불을 요청할 수 있다.
1.환불 가능: 결제 후, 아래의 경우는 100% 환불이 가능하다.
- 결제 후, 7일 이내 환불 요청 시
- 제공하는 서비스에 문제가 발생하여 24시간 지속될 경우(천재지변의 경우 예외)
- 일반 상거래 기준으로 환불 요청이 정당하다고 판단되는 경우
2.일부 환불 가능: 아래의 경우는 서비스 이용요금 정산 후 예치금 잔액을 환불한다.
- 결제 후, 7일이 경과된 경우
- 제공 중인 서비스를 이용하여 이용요금이 발생한 경우
- 결제 후, 특별한 사유 없이 환불을 요청하는 경우
제 25 조 (불법면탈요금 등의 징수)
이용요금 등을 불법으로 면탈한 자에 대해서는 면탈한 금액의 2배에 해당하는 액을 징수한다.

제 26 조 (약관의 해지)
①진흥회와 이용자는 상대방이 특별한 사유 없이 본 협약에서 규정한 제반 협력 및 의무를 다하지 아니했을 경우 본 약관을 해지할 수 있다.
②진흥회 또는 이용자가 부도, 파산, 해산된 경우 상대방은 본 협약을 해지할 수 있다.
③이진흥회와 이용자는 상호 합의에 의하여 본 협약을 해지할 수 있다.


제 6 장 손해배상 및 기타사항
제 27 조 (손해배상)
①진흥회의 과실에 의해 회원이 손해를 입은 경우 진흥회는 이용요금(손해를 입은 이용요금에 한한다)의 3배 이내에서 보상하여야 할 책임이 있다.
②진흥회는 제17조 제①항, 제②항, 제③항의 사유로 서비스의 제공이 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상하지 아니한다.
제 28 조 (면책조항)
①진흥회는 천재지변 및 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 대한 책임을 지지 않는다.
②진흥회는 회원의 귀책사유로 인한 서비스 이용의 장애 또는 손해에 대하여 책임을 지지 않는다.
③진흥회는 회원이 서비스를 이용함에 있어 회원이 소유한 단말기의 이상으로 인해 서비스의 제공을 받지 못했거나, 기간통신 사업자 등 전기통신사업자가 전기통신 서비스를 중지하거나 정상적으로 제공하지 아니하여 회원이 손해 및 불이익을 당한 경우에는 책임이 면제된다.
④진흥회는 이용자의 단말기 오류에 의해 손해가 발생한 경우, 또는 회원이 신상정보 및 전자우편 주소를 부실하게 제공하여 손해가 발생한 경우 책임을 지지 않는다.
⑤진흥회는 이용자가 게시 또는 전송한 자료의 내용에 관하여는 책임을 지지 아니한다.
⑥진흥회는 본 약관에서 규정하고 있는 회원의 의무를 이행하지 아니함으로써 오는 회원의 불이익에 대해 책임을 지지 아니한다.
⑦진흥회는 본 약관에서 규정하고 있는 회원의 의무를 이행하지 아니함으로써 오는 회원의 불이익에 대해 책임을 지지 아니한다.
⑧진흥회에서 회원에게 무료로 제공하는 서비스의 이용과 관련해서는 어떠한 손해도 책임을 지지 않는다.
제 29 조 (저작권의 귀속 및 이용제한)
①진흥회가 작성한 저작물에 대한 저작권 및 기타 지적재산권은 진흥회에 귀속된다.
②회원은 서비스를 이용함으로써 얻은 정보를 진흥회의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안 된다.
③ 진흥회와의 사전 동의 없는 각종 자료의 배포 및 유통은 저작권법에 의해 형사처벌 될 수 있다.
제 30 조 (재판권 및 준거법)
① 이 약관에 명시되지 않은 사항은 전기통신사업법 등 대한민국의 관계법령과 상관습에 따른다.
②제공하는 서비스에 대해 이용자와 진흥회 간 발생한 문제에 대해서는 이 약관과 서비스 운영정책을 따른다.
③ 서비스 이용으로 발생한 분쟁에 대해 소송이 제기되는 경우 진흥회의 소재지를 관할하는 법원을 관할 법원으로 한다.


시행일 : 본 약관은 2013년 4월 1일부터 시행된다.
                            </textarea>
                            <p><input id="check" type="checkbox">이용 약관에 동의합니다.</p>
                        </div>
                        <div class="form-group">
                            <label for="appointment_name" class="text-black">신청인</label>
                            <input type="hidden" name="patentNum" value="${num}" >
                            <input type="text" class="form-control" id="memName" name="patentHolderName" placeholder="이름을 입력해주세요">
                        </div>
                        <!--  <div class="form-group">
                            <label for="appointment_patentnum" class="text-black">특허번호</label>
                            <input type="text" class="form-control" id="appointment_patentnum" placeholder="KR000000000" readonly="readonly">
                        </div>-->
                        <div class="form-group">
                            <label for="appointment_file2" class="text-black">특허 출원 신청서</label>
                            <input type="file" class="form-control" name="upload" id="upload" multiple>
                        </div>
                        <div class="form-group">
                            <p> ▶ [출원 신청자] 특허 신청서를 첨부해주세요.</p>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" id="request" class="btn btn-outline-info">신청하기</button>
                    <button type="button" class="btn btn-outline-success" data-dismiss="modal">닫기</button>
                </div>
            </div>


        </div>
    </div>
    
  </body>
</html>