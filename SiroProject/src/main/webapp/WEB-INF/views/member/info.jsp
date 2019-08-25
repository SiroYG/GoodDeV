<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>SESbank</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css" />
	<script src="/bank/resources/script/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function customerupdate() {
		var upform = document.getElementById("updateform");
		var pwd = document.getElementById("wr_pass");
		var repwd = document.getElementById("wr_passchk");
		var name = document.getElementById("wr_name");
		var idno = document.getElementById("wr_birnum");
		var email = document.getElementById("wr_email");
		var address = document.getElementById("wr_address");

		if (pwd.value.length == 0) {
			alert("비밀번호를 입력하세요.");
			return;
		}
		if (repwd.value.length == 0) {
			alert("확인 비밀번호를 입력하세요.");
			return;
		}
		if (name.value.length == 0) {
			alert("이름을 입력하세요.");
			return;
		}
		if (idno.value.length == 0) {
			alert("주민등록(사업자)번호를 입력하세요.");
			return;
		}
		if (email.value.length == 0) {
			alert("이메일을 입력하세요.");
			return;
		}
		if (address.value.length == 0) {
			alert("주소를 입력하세요.");
			return;
		}
		if (pwd.value != repwd.value) {
			alert("비밀번호를 다시 입력해주세요")
			pwd.value("");
			repwd.value("");
			return;
		}
		upform.submit();
		alert("정보수정 성공")
	}
</script>
</head>
<body><!-- 계좌현황서브 -->
	<div id="wrap"><!-- wrap -->
		<div id="header"><!-- 상단 -->
			<div id="top"><!-- 멤버 -->
				<a href="goinfo">회원정보수정</a><a href="logout">로그아웃</a>&nbsp;&nbsp;&nbsp;
			</div>
			<div id="navi">
			<a href="home"><img src="resources/images/logo.png" width="150" /></a>
			<div class="gnb"><!-- 네비게이션 -->
				 <ul>
					<li><a href="accountmain">보유계좌현황</a>
						<!-- <ul>
						   <li><a href="#">서브메뉴1</a></li>
						   <li><a href="#">서브메뉴2</a></li>
						   <li><a href="#">서브메뉴3</a></li>
						</ul> -->
					</li>

					<li><a href="addaccount1">신규계좌개설</a>
						<ul>
						   <li><a href="addaccount1">예금계좌</a></li>
						   <li><a href="addaccount2">적금계좌</a></li>
						   <li><a href="addaccount3">대출계좌</a></li>
						</ul>
					</li>
					<li><a href="goboard">고객문의게시판</a>
						<!-- <ul>
						   <li><a href="#">서브메뉴1</a></li>
						   <li><a href="#">서브메뉴2</a></li>
						   <li><a href="#">서브메뉴3</a></li>
						</ul> -->
					</li>
				</ul>
			</div>
			</div>
		</div>
<div id="contents">
			<!--내용-->
			<h1>
				회원정보 수정<span></span>
			</h1>
			<!-- 내용제목 -->
			<div>
				<form id="updateform" action="customerupdate" method="post">
					<ul class="member_info">
						<!-- 회원가입 -->
						<c:if test="${login.division=='personal'}">
							<!-- 개인고객 -->
							<li><label for="" id="">회원구분 </label><input type="radio"
								disabled="disabled" name="division" checked /> 개인 <input
								type="radio" name="division" disabled="disabled" /> 법인</li>
						</c:if>
						<c:if test="${login.division!='personal'}">
							<li><label for="" id="">회원구분 </label><input type="radio"
								name="division" disabled="disabled" /> 개인 <input type="radio"
								name="division" checked disabled="disabled" /> 법인</li>
						</c:if>
						<li><label for="wr_id">아이디</label><input type="text"
							id="wr_id" name="custid" placeholder="honggildong"
							value=${login.custid } readonly="readonly" class="login_write" /></li>
						<li><label for="wr_pass">비밀번호</label><input type="password"
							id="wr_pass" name="password" class="login_write" /></li>
						<li><label for="wr_passchk">비밀번호 확인</label><input
							type="password" id="wr_passchk" class="login_write" /></li>
						<li><label for="wr_name">이름</label><input type="text"
							id="wr_name" name="name" class="login_write" /></li>
						<li><label for="wr_birnum">주민(사업자)번호</label><input
							type="text" name="idno" id="wr_birnum" value="${login.idno }"
							disabled="disabled" class="login_write" /></li>
						<li><label for="wr_email">이메일</label><input type="email"
							id="wr_email" name="email" class="login_write" /></li>
						<li><label for="wr_address">주소</label><input type="text"
							id="wr_address" name="address" class="login_write" /></li>
					</ul>
				</form>
				<p class="list_btn">
					<a href="#" class="select" onclick="customerupdate()">회원정보수정</a>
				</p>
			</div>
		</div>
		<div id="footer"><!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br />
			Copyright©2016 KITA-SESchool ICT Educational Center All rights reserved.			
		</div>
		</div>
	</div>
</body>
</html>