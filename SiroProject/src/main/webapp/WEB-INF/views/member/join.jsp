<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>SESbank</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css" />
	<script src="resources/script/jquery-3.3.1.min.js"></script>
	<script > 
		 function joinbtn(){
				// var division = document.getElementById("division");
				var divisions = document.getElementsByClassName("division");
				var division;
				for (var i=0; i<divisions.length; i++) {
					division = divisions[i];
					if (division.checked === true) {
						break;
					}
				}
				
				var userid = document.getElementById("userid");
				var userpw = document.getElementById("userpw");
				var Reuserpw = document.getElementById("Reuserpw");
				var username = document.getElementById("username");
				var idno = document.getElementById("idno");
				var email = document.getElementById("email");
				var address = document.getElementById("address");
				
				console.log("Test value : " + division.value +" "+userid.value+" "+userpw.value +" "+Reuserpw.value +" "+username.value);
				
				$.ajax({
					"url" :	"/bank/Customer/join",
					"type": "post",
					"data": {
						"division": division.value,
						"custid": userid.value,
						"password": userpw.value,
						"name": username.value,
						"idno": idno.value,
						"email": email.value,
						"address": address.value
					},
					"success": function(result){
						console.log(result);
						
						if (result !== 0){
							alert("회원가입 성공");
							window.location.href = "/bank/home";
						}
						else {
							alert("회원가입 실패");
						}
					},
					"error" : function () {
						alert("ajax 통신 실패");
					}
				});
		
		 }
	
	</script>
</head>

<body><!-- 계좌현황서브 -->
	
	
	<div id="wrap"><!-- wrap -->
		
		<div id="header"><!-- 상단 -->
			<div id="top"><!-- 멤버 -->
			<c:if test="${sessionScope.loginId == null }">
				<a href="gologin">로그인</a>
			</c:if>	
			<c:if test="${sessionScope.loginId != null }"> 
				<a href="logout">로그아웃</a>
			</c:if>
				<a href="gojoin">회원가입</a>&nbsp;&nbsp;&nbsp;
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

					<li><a href="addaccount_1.html">신규계좌개설</a>
						<ul>
						   <li><a href="addaccount_1.html">예금계좌</a></li>
						   <li><a href="addaccount_2.html">적금계좌</a></li>
						   <li><a href="addaccount_3.html">대출계좌</a></li>
						</ul>
					</li>
					<li><a href="board_list.html">고객문의게시판</a>
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

		<div id="contents"><!--내용-->
			<h1>회원가입<span>가입항목을 입력해 주세요</span></h1><!-- 내용제목 -->
			<div class="login_area">
				<img src="resources/images/login_icon.png" class="login_icon" />
				<form>
					<ul><!-- 회원가입 -->
						<li style="border-bottom:1px dotted #e7121c; padding-bottom:5px;"><img src="resources/images/ico_login.png" width="14" /> Welcome SEBank</li>
						<li class="grp_area"><label for="">회원구분</label><input type="radio" name="division" class="division" value="개인" checked /> 개인 <input type="radio" class="division" name="division" value="법인"/> 법인</li>
						<li><input type="text" placeholder="아이디" class="join_write"  id="userid" name="userid" /><a href="#" class="id_check" onclick="window.open('Customer/join_pop','pop','resizable=no scrollbars=yes top=300 left=500 width=300 height=180');return false">중복체크</a></li>
						<li><input type="password" placeholder="비밀번호" class="login_write" id="userpw" name="userpw"/></li>
						<li><input type="password" placeholder="비밀번호 확인" class="login_write" id="Reuserpw"name="Reuserpw" /></li>
						<li><input type="text" placeholder="이름" class="login_write" id="username" name="username"/></li>
						<li><input type="text" placeholder="주민(사업자)번호" class="login_write"id="idno" name="idno"/></li>
						<li><input type="email" placeholder="이메일주소@도메인" class="login_write" id="email"  name="email"/></li>
						<li><input type="text" placeholder="주소" class="login_write"id="address" name="address"/></li>
						<li><button  class="btn_join" onclick="joinbtn()" > 회원가입 </button></li>
					</ul>
							
				</form>
			</div>
		</div>
		<div id="footer"><!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br />
			Copyright©2016 KITA-SESchool ICT Educational Center All rights reserved.			
		</div>
	</div>
</body>
</html>