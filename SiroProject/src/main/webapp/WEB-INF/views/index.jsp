<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>SESbank</title>
<link rel="stylesheet" type="text/css" href="/bank/resources/css/style.css" />
<script src="/bank/resources/js/jquery-1.12.3.js"></script>
<script src="/bank/resources/js/jquery-3.4.1.min.js"></script>
<script src="/bank/resources/js/common.js"></script>
</head>

<body>
	<!-- 계좌현황서브 -->
	<div id="wrap">
		<!-- wrap -->
			<div id="header">
		
			<!-- 상단 -->
			<div id="top">
				<!-- 멤버 -->			
			<c:if test="${sessionScope.loginId == null }">
				<a href="/bank/loginForm">로그인</a>
			</c:if>	
			<c:if test="${sessionScope.loginId != null }"> 
				<a href="/bank/logout">로그아웃</a>
			</c:if>
				<a href="/bank/joinForm">회원가입</a>&nbsp;&nbsp;&nbsp;
			</div>
			<div id="navi">
				<a href="/bank/home"><img src="/bank/resources/images/logo.png" width="150" /></a>
					<div class="gnb"><!-- 네비게이션 -->
						 <ul>
							<li><a  href="/bank/account/haveaccountForm">보유계좌현황</a>
							</li>
		
							<li><a class="select" href="/bank/account/addaccount1Form">신규계좌개설</a>
								<ul>
								   <li><a href="/bank/account/addaccount1Form">예금계좌</a></li>
								   <li><a href="/bank/account/addaccount2Form">적금계좌</a></li>
								   <li><a href="/bank/account/addaccount3Form">대출계좌</a></li>
								</ul>
							</li>
							<li><a href="/bank/board/boardListForm">고객문의게시판</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div id="contents">
			<!--내용-->
			<section id="slide">
				<ul>
					<li><img src="/bank/resources/images/slide01.jpeg"
						alt="main image slide 1"></li>
					<li><img src="/bank/resources/images/slide02.jpg"
						alt="main image slide 2"></li>
					<li><img src="/bank/resources/images/slide03.jpg"
						alt="main image slide 3"></li>
				</ul>
				<div class="slogan">
					<p>
						급하게 나와도 걱정 뚝 인터넷뱅킹 실시 <br>
						<strong> Siro Bank 인터넷뱅킹</strong>
					</p>
				</div>
			</section>
			<section id="contents_main">
				<section>
					<h3>공지사항</h3>
					<div>
						<ul>
							<li><a href="#">2019년 은행별 금리 안내</a></li>
							<li><a href="#">[무료강연] 비트코인 투자의 방법 </a></li>
							<li><a href="#">[직무연수] 은행원 인턴 직무연수 프로그램</a></li>
							<li><a href="#">[무료상영] 독립영화'쩐의전쟁'무료상영 안내</a></li>
						</ul>
					</div>
				</section>
				<section class="type2">
					<h3>Siro 은행 행사 이미지</h3>
					<div>
						<a href="#" class="openPopup">
						<img src="/bank/resources/images/poster1.jpg" alt="이달의 전시 영역"></a> 
						<a href="#"class="openPopup">
						<img src="/bank/resources/images/poster2.jpg"alt="이달의 전시 영역"></a>
					</div>
				</section>
				<section>
					<h3>은행 업무 안내</h3>
					<div>
						<ul class="icon_list">
							<li><a href="#"> <span class="icon">예금</span> <span
									class="subject">예금안내</span>
							</a></li>
							<li><a href="#"> <span class="icon">주식</span> <span
									class="subject">주식정보</span>
							</a></li>
							<li><a href="#"> <span class="icon">이벤트</span> <span
									class="subject">이벤트</span>
							</a></li>
						</ul>
					</div>
				</section>
			</section>
		</div>
		<div id="footer">
			<!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br /> Copyright©2016
			KITA-SESchool ICT Educational Center All rights reserved.
		</div>
	</div>

</body>
</html>