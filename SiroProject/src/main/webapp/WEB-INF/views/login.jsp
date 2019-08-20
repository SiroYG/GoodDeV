<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>SESbank</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css" />

</head>

<body><!-- 계좌현황서브 -->
	<div id="wrap"><!-- wrap -->
		<div id="header"><!-- 상단 -->
			<div id="top"><!-- 멤버 -->
				<a href="login">로그인</a><a href="join">회원가입</a>&nbsp;&nbsp;&nbsp;
			</div>
			<div id="navi">
			<a href="home"><img src="resources/images/logo.png" width="150" /></a>
			 <div class="gnb"><!-- 네비게이션 -->
				 <ul>
					<li><a href="haveaccount.html">보유계좌현황</a>
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
			<h1>로그인</h1><!-- 내용제목 -->
			<div class="login_area">
				<img src="resources/images/login_icon.png" class="login_icon" />
				<form>
					<ul>
						<li class=""><img src="resources/images/ico_login.png" width="14" /> SE Bank Login</li>
						<li><input type="text" placeholder="아이디" class="login_write" /></li>
						<li><input type="password" placeholder="비밀번호" class="login_write" /></li>
						<li><a href="haveaccount.html" class="btn_login">로그인</a></li>
						<li><a href="join" class="btn_join">회원가입</a></li>
						<li><a href="find_idpw.html" class="btn_findid">아이디 / 비밀번호 찾기</a></li>
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