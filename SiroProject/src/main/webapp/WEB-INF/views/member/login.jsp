<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>SESbank</title>
	<link rel="stylesheet" type="text/css" href="/bank/resources/css/style.css" />
<script src="/bank/resources/script/jquery-3.3.1.min.js"></script>
	<script > 
		 function login(){
				var id = document.getElementById("id");
				var pw = document.getElementById("pw");
				
				console.log("Test value : " + id.value +" "+pw.value);
				
				$.ajax({
					"url" :	"/bank/Customer/login",
					"type": "post",
					"data": {
						"custid": id.value,
						"password": pw.value
					},
					"success": function(result){
						console.log(result);
						if (result == 100) { 	//admin
							alert("관리자님 환영합니다.");
							window.location.href = "/bank/Admin/adminmain";
						}
						else if(result== 1){
							alert("로그인 성공");
							window.location.href = "/bank/accountmain";
						}
						else {
							alert("로그인 실패");
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
			<a href="home"><img src="/bank/resources/images/logo.png" width="150" /></a>
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
		<div id="contents"><!--내용-->
			<h1>로그인</h1><!-- 내용제목 -->
			<div class="login_area">
				<img src="/bank/resources/images/login_icon.png" class="login_icon" />
				<form>
					<ul>
						<li class=""><img src="resources/images/ico_login.png" width="14" /> SE Bank Login</li>
						<li><input type="text" placeholder="아이디" class="login_write" id="id" /></li>
						<li><input type="password" placeholder="비밀번호" class="login_write" id="pw"/></li>
						<li><a class="btn_login" onclick="login()" style="cursor: pointer;">로그인</a></li>
						<li><a href="gojoin" class="btn_join">회원가입</a></li>
						<li><a href="gofindidpw" class="btn_findid" style="cursor: pointer;">아이디 / 비밀번호 찾기</a></li>
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