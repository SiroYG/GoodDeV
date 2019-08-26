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
 	$(function () {
 	<c:if test="${searchvalue != null}">
		alert("${searchvalue}");
	</c:if>
	}); 
	
	function pwSearchView() {
		$('#idSearchView').attr('style','display:none;');
		$('#pwSearchView').attr('style','display:;');
		var name = $('#name').val();
		var email = $('#email').val();
		var custid = $('#custid').val();
	}
	
	function idSearchView() {
		$('#pwSearchView').attr('style','display:none;');
		$('#idSearchView').attr('style','display:;');
	}
	
	function searchCustomer() {
		var name1 = $('#name1').val();
		var email1 = $('#email1').val();
		var name2 = $('#name2').val();
		var email2 = $('#email2').val();
		var custid = $('#custid').val();
		
		if(custid.length > 1){
			location.href="/bank/searchCustomer?name=" + name2 + "&email=" + email2 + "&custid=" + custid;
		}else{
			location.href="/bank/searchCustomer?name=" + name1 + "&email=" + email1;			
		}
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
			<h1>고객센터<span>아이디, 패스워드 찾기</span></h1><!-- 내용제목 -->
			<div class="login_area">
				<img src="/bank/resources/images/login_icon.png" class="login_icon">
				<form action="/bank/searchCustomer" id="cearchCustomerForm">
					<ul style="display:;" id="idSearchView"><!-- 아이디찾기 -->
						<li class=""><img src="/bank/resources/images/ico_login.png" width="14"> Welcome SEBank</li>
						<li><a href="#" class="findtitle_btn tab">아이디 찾기</a>&nbsp;<a href="javascript:pwSearchView();" class="findtitle_btn">패스워드 찾기</a></li>
						<li><input type="text" placeholder="이름" class="login_write" name="name" id="name1"></li>
						<li><input type="email" placeholder="이메일주소@도메인" class="login_write" name="email" id="email1"></li>
						<li><a href="javascript:searchCustomer();" class="btn_idfind">아이디 확인</a></li>
					</ul>
					<ul style="display:none;" id="pwSearchView"><!-- 비밀번호찾기 -->
						<li class=""><img src="/bank/resources/images/ico_login.png" width="14"> Welcome SEBank</li>
						<li><a href="javascript:idSearchView();" class="findtitle_btn">아이디 찾기</a>&nbsp;<a href="#" class="findtitle_btn tab"> 패스워드 찾기</a></li>
						<li><input type="text" placeholder="아이디" class="login_write" name="custid" id="custid"></li>
						<li><input type="text" placeholder="이름" class="login_write" name="name" id="name2"></li>
						<li><input type="email" placeholder="이메일주소@도메인" class="login_write" name="email" id="email2"></li>
						<li><a href="javascript:searchCustomer();" class="btn_idfind">비밀번호 찾기</a></li>
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