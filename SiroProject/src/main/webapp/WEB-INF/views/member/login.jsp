<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/bank/resources/css/style.css">
</head>
<script src="/bank/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	function loginClick() {
		$('#loginForm').submit();
	}
</script>
<body><!-- 계좌현황서브 -->
	
	<div id="wrap"><!-- wrap -->
		
		<div id="header"><!-- 상단 -->
			<div id="top"><!-- 멤버 -->
				<a href="/bank/loginForm">로그인</a><a href="/bank/joinForm">회원가입</a>&nbsp;&nbsp;&nbsp;
			</div>
			<div id="navi">
			<a href="/bank/home"><img src="/bank/resources/images/logo.png" width="150"></a>
			 <div class="gnb"><!-- 네비게이션 -->
     
				 <ul>
					<li><a href="/bank/account/haveaccountForm">보유계좌현황</a>
					</li>

					<li><a href="/bank/account/addaccount1Form">신규계좌개설</a>
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



		<div id="contents"><!--내용-->
			<h1>로그인</h1><!-- 내용제목 -->
			<div class="login_area">
				<img src="/bank/resources/images/login_icon.png" class="login_icon">
				<form action="/bank/login" method="post" id="loginForm">
					<ul>
						<li class=""><img src="/bank/resources/images/ico_login.png" width="14"> SE Bank Login</li>
						<li><input type="text" placeholder="아이디" class="login_write" name="custid"></li>
						<li><input type="password" placeholder="비밀번호" class="login_write" name="password"></li>
							<c:if test="${error != null}">
								<li>
									<font color="red">${error}</font>
								</li>
							</c:if>
						<li><a href="javascript:loginClick();" class="btn_login">로그인</a></li>
						<li><a href="/bank/joinForm" class="btn_join">회원가입</a></li>
						<li><a href="/bank/findidpwForm" class="btn_findid">아이디 / 비밀번호 찾기</a></li>
					</ul>
				</form>
			</div>


		</div>

		<div id="footer"><!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br>
			Copyright©2016 KITA-SESchool ICT Educational Center All rights reserved.			
		</div>
		</div>

</body>
</html>