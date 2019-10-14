<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Neutral ::</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
	$(".pri").on('click', function(){
		var tempContractDate=$(this).attr("data-contractDate");
		$('#contractDate').val(tempContractDate);
		var patentNum = $(this).attr("data-value");
		$('#patentNum').val(patentNum);
		var pti_seq = $(this).val();
		$('#Pti_seq').val(pti_seq);
		var itemNum = $(this).attr("data-id");
		$('#itNum').val(itemNum);
		var documentNum = $(this).attr("data-name");
		$('#DocumentNum').val(documentNum);
		var memId = $(this).attr("data-member");
		$('#memberId').val(memId);
	});	
	 $('.pri').on('click',function(){
		var itemNum = $(this).attr("data-id");
		$.ajax({
			url : 'down',
			type : 'get',
			data : {
				"itemNum" : itemNum
			},
			success : function(res){
				$('#down').html(res);
			}
		})
	})  
	 $('.pri').on('click',function(){
		var itemNum = $(this).attr("data-id");
		$.ajax({
			url : 'down1',
			type : 'get',
			data : {
				"itemNum" : itemNum
			},
			success : function(res){
				$('#down1').html(res);
			}
		})
	})  
	$('#down').on('click',function(){
		var itemNum =$('#itNum').val();
        location.href="/cloud/patent/download?itemNum=" + itemNum;
	})
	
	$('#down1').on('click',function(){
		var itemNum =$('#itNum').val();
        location.href="/cloud/patent/download1?itemNum=" + itemNum;
	})
	
	 $('#permitBtn').on('click',function(){
		var formData = new FormData($('#permitionForm')[0]);
		var upload = $('#upload').val();
		if(upload.length==0||upload==""){
			alert('파일을 반드시 첨부하세요!');
			return false;	
		}
		var itemNum =$('#item-option option:selected').attr("data-value");
		var del = $('.pri').parent().parent();
		$.ajax({
			url : 'permitionForm',
			type : 'post',
			enctype : 'multipart/form-data',
 			processData : false,
 			contentType : false,
 			data : formData,
			success : function(res){
				if(res=='success'){
					alert("성공");
					$('#exampleModal').modal('hide');
					del.remove();
				}else{
					alert("실패");
				}
			}
		})
	})
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
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('/cloud/resources/images/about_10-1.jpg');"
		data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate pb-5 text-center">
				<h1 class="mb-3 bread">Check Patent</h1>
				<p class="breadcrumbs">
					<span class="mr-2"><a href="index">Home <i
							class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a
						href="blog.html">특허 <i class="ion-ios-arrow-forward"></i></a></span> <span>특허
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
				<c:forEach varStatus="status" var="pat" items="${pList}" >
				<tr class= "del" >
				<th scope="row" name="" >${status.count}</th>
				<td>${pat.patenttype}</td>
				<td>${pat.patentName}</td>
				<td>${pat.memberGo}</td>
				<td>${pat.contractDate}</td>
				<td><button type="button" class="pri" data-member="${pat.memberGo}" data-value="${pat.patentNum}" data-id="${pat.itemNum}" data-name="${pat.documentNum}"  value="${pat.PTI_seq}"  data-toggle="modal" data-target="#exampleModal" data-contractDate=${pat.contractDate }>상세보기	
				</button></td>
				</tr>								<!-- data-id= "${memberId}" -->
				</c:forEach>
				</tbody> 
			</table>
			<!--페이징 & 검색-->
			<div class="page-center">
				<nav>
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							<span class="sr-only">Previous</span>
					</a></li>
					<li class="page-item active"><a class="page-link">1</a></li>
					<!-- <li class="page-item"><a class="page-link">2</a></li>
					<li class="page-item"><a class="page-link">3</a></li>
					<li class="page-item"><a class="page-link">4</a></li>
					<li class="page-item"><a class="page-link">5</a></li> -->
					<li class="page-item"><a class="page-link" aria-label="Next">
							<span aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
					</a></li>
				</ul>
				</nav>
			</div>
		</div>
		<hr class="hr_navy">
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
                    <form  id="permitionForm" >
                        <div class="form-group">
                            <label for="appointment_date" class="text-black"><b>신청일</b></label>
                            <input type="text" class="form-control" name="contractDate" id="contractDate" value="" placeholder="" readonly="readonly">
                            <input type="hidden" name="itemNum" id="itNum" value=""  /> 
                             <input type="hidden" name="DocumentNum" id="DocumentNum" value=""  /> 
                              
                        </div>
                        <div class="form-group">
                        <input type="hidden" name="PTI_seq" id="Pti_seq" value=""  /> 
                            <label for="appointment_name" class="text-black"><b>신청인</b></label>
                            <input type="text" class="form-control" name="memberId" id="memberId" value="" placeholder="" readonly="readonly">
                        </div>
                        <div class="form-group">
                            <label for="appointment_patentnum" class="text-black"><b>특허번호</b></label>
                            <input type="text" class="form-control" name="patentNum" id="patentNum" value="" placeholder="" readonly="readonly">
                       		
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <a href="#" class="a_document" id="down"></a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <a href="#" class="a_document" id="down1"></a>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="appointment_file" class="text-black"><b>[보유자]특허 사용 신청서 / 허가서</b></label>
                            <input type="file" class="form-control" name="upload" id="upload" multiple>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" id="permitBtn" class="btn btn-outline-info">승인하기</button>
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
<footer class="ftco-footer ftco-section">
<div class="container">
	<div class="row mb-5">
		<div class="col-md">
			<div class="ftco-footer-widget mb-4">
				<h2 class="ftco-heading-2">
					About <span>Neutral</span>
				</h2>
				<p>Far far away, behind the word mountains, far from the
					countries Vokalia and Consonantia, there live the blind texts.</p>
			</div>
		</div>
		<div class="col-md">
			<div class="ftco-footer-widget mb-4 ml-md-4">
				<h2 class="ftco-heading-2">Links</h2>
				<ul class="list-unstyled">
					<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Home</a></li>
					<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>About</a></li>
					<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Practice
							Areas</a></li>
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
					<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Family
							Law</a></li>
					<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Business
							Law</a></li>
					<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Insurance
							Law</a></li>
					<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Criminal
							Law</a></li>
					<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Drug
							Offenses</a></li>
					<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Property
							Law</a></li>
					<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Employment
							Law</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md">
			<div class="ftco-footer-widget mb-4">
				<h2 class="ftco-heading-2">Have a Questions?</h2>
				<div class="block-23 mb-0">
					<ul>
						<li><span class="icon icon-map-marker"></span><span
							class="text">203 Fake St. Mountain View, San Francisco,
								California, USA</span></li>
						<li><a href="#"><span class="icon icon-phone"></span><span
								class="text">+2 392 3929 210</span></a></li>
						<li><a href="#"><span class="icon icon-envelope"></span><span
								class="text">info@yourdomain.com</span></a></li>
					</ul>
				</div>
				<ul
					class="ftco-footer-social list-unstyled float-md-left float-lft mt-4">
					<li class="ftco-animate"><a href="#"><span
							class="icon-twitter"></span></a></li>
					<li class="ftco-animate"><a href="#"><span
							class="icon-facebook"></span></a></li>
					<li class="ftco-animate"><a href="#"><span
							class="icon-instagram"></span></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
</footer>
</html>