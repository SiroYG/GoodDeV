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
	function finepw() {
		var findid = document.getElementById("fineid");
		var findpw = document.getElementById("finepw");

		findid.style.display = 'none';
		findpw.style.display = '';
	}
	function fineid() {
		var findid = document.getElementById("fineid");
		var findpw = document.getElementById("finepw");

		findid.style.display = '';
		findpw.style.display = 'none';
	}

	function find_id() {
		var name = $("#name").val();
		var email = $("#email").val();
		var custid = $("#custid").val();
		var member = {
			"name" : name,
			"email" : email
		}
		$.ajax({
			url : "/bank/searchinfo",
			type : "GET",
			data : member,
			success : function(result) {

				alert("회원님의 아이디는 [ " + result + " ] 입니다.")

			},
			error : function() {
				alert("등록된 정보가 없습니다.")
			}
		})

	}
	function find_pw() {
		var name = $("#name1").val();
		var email = $("#email1").val();
		var custid = $("#custid1").val();
		var member = {
			"name" : name,
			"email" : email,
			"custid" : custid
		}
		$.ajax({
			url : "/bank/searchinfo",
			type : "GET",
			data : member,
			success : function(result) {

				alert("회원님의 비밀번호는 [ " + result + " ] 입니다.")

			},
			error : function() {
				alert("등록된 정보가 없습니다.")
			}
		})
	}
</script>

</head>
<body>
<!-- 계좌현황서브 -->
	<div id="wrap">
		<!-- wrap -->
		<div id="header">
			<!-- 상단 -->
			<div id="top">
				<!-- 멤버 -->
				<a href="goinfo">회원정보수정</a><a href="logout">로그아웃</a>&nbsp;&nbsp;&nbsp;
			</div>
			<div id="navi">
				<a href="home"><img src="resources/images/logo.png" width="150" /></a>
				<div class="gnb">
					<!-- 네비게이션 -->
					<ul>
						<li><a href="accountmain">보유계좌현황</a> <!-- <ul>
						   <li><a href="#">서브메뉴1</a></li>
						   <li><a href="#">서브메뉴2</a></li>
						   <li><a href="#">서브메뉴3</a></li>
						</ul> --></li>
						<li><a href="addaccount1">신규계좌개설</a>
							<ul>
								<li><a href="addaccount1">예금계좌</a></li>
								<li><a href="addaccount2">적금계좌</a></li>
								<li><a href="addaccount3">대출계좌</a></li>
							</ul></li>
						<li><a href="goboard">고객문의게시판</a> <!-- <ul>
						   <li><a href="#">서브메뉴1</a></li>
						   <li><a href="#">서브메뉴2</a></li>
						   <li><a href="#">서브메뉴3</a></li>
						</ul> --></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="contents">
			<!--내용-->
			<h1>
				고객센터<span>아이디, 패스워드 찾기</span>
			</h1>
			<!-- 내용제목 -->
			<div class="login_area">
				<img src="resources/images/login_icon.png" class="login_icon" />
			<form action="searchinfo" method="get" id="findidid">
					<ul id="fineid" style="display:;">
						<!-- 아이디찾기 -->
						<li class=""><img src="/bank/resources/images/ico_login.png"
							width="14" /> Welcome SEBank</li>
						<li><a href="#" onclick="fineid()" class="findtitle_btn tab">아이디
								찾기</a>&nbsp;<a href="#" onclick="finepw()" class="findtitle_btn">패스워드
								찾기</a></li>
						<li><input type="text" placeholder="이름" name="name" id="name"
							class="login_write" /></li>
						<li><input type="email" placeholder="이메일주소@도메인" name="email"
							id="email" class="login_write" /></li>
						<li><a href="#" class="btn_idfind" id="test"
							onclick="find_id()">아이디 확인</a></li>
					</ul>
				</form>
				<form action="searchinfo" method="get">
					<ul id="finepw" style="display: none;">
						<!-- 비밀번호찾기 -->
						<li class=""><img src="/bank/resources/images/ico_login.png"
							width="14" /> Welcome SEBank</li>
						<li><a href="#" onclick="fineid()" class="findtitle_btn">아이디
								찾기</a>&nbsp;<a href="#" onclick="finepw()" class="findtitle_btn tab">
								패스워드 찾기</a></li>
						<li><input type="text" id="custid1" name="custid"
							placeholder="아이디" class="login_write" /></li>
						<li><input type="text" id="name1" name="name"
							placeholder="이름" class="login_write" /></li>
						<li><input type="email" id="email1" name="email"
							placeholder="이메일주소@도메인" class="login_write" /></li>
						<li><a href="#" onclick="find_pw()" class="btn_idfind">비밀번호
								찾기</a></li>
					</ul>
				</form>
			</div>
		</div>
		<div id="footer">
			<!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br /> Copyright©2016
			KITA-SESchool ICT Educational Center All rights reserved.
		</div>
	</div>
</body>
</html>