<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/bank/resources/css/style.css">
<title>Insert title here</title>
</head>
<script src="/bank/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	function join() {
		var custid = $('#custid').val();
		var password = $('#password').val();
		var passwordCheck = $('#passwordCheck').val();
		var name = $('#name').val();
		var idno = $('#idno').val();
		var email = $('#email').val();	
		var address = $('#address').val();
		
		if(custid.length < 3 || custid.length > 15){
			alert("아이디는 3~15자리 사이로 입력해주세요.");
			return false;
		}
		
		if(password.length < 3 || password.length > 15){
			alert("비밀번호는 3~15자리 사이로 입력해주세요.");
			return false;
		}
		
		if(password != passwordCheck){
			alert("비밀번호가 서로 일치하지 않습니다. 다시 입력해 주세요.");
			return false;
		}
		
		if(name.length < 1){
			alert("이름을 입력하여 주세요.");
			return false;
		}
		
		if(idno.length < 1){
			alert("주민(사업자)번호를 입력하여 주세요.");
			return false;
		}
		
		if(email.length < 1){
			alert("email을 입력하여 주세요.");
			return false;
		}
		
		if(address.length < 1){
			alert("주소를 입력하여 주세요.");
			return false;
		}
		
		$('#joinForm').submit();
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
			<h1>회원가입<span>가입항목을 입력해 주세요</span></h1><!-- 내용제목 -->
			<div class="login_area">
				<img src="/bank/resources/images/login_icon.png" class="login_icon">
				<form action="/bank/insertCustomer" method="post" id="joinForm">
					<ul><!-- 회원가입 -->
						<li style="border-bottom:1px dotted #e7121c; padding-bottom:5px;"><img src="/bank/resources/images/ico_login.png" width="14"> Welcome SEBank</li>
						<li class="grp_area"><label for="">회원구분</label><input type="radio" checked="checked" name="division" value="personal"> 개인 <input type="radio" name="division" value="company"> 법인</li>
						<li><input type="text" placeholder="아이디" class="join_write" name="custid" id="custid" readonly="readonly"><a href="#" class="id_check" onclick="window.open('/bank/joinpopForm','pop','resizable=no scrollbars=yes top=300 left=500 width=300 height=180');return false">중복체크</a></li>
						<li><input type="password" placeholder="비밀번호" class="login_write" name="password" id="password"></li>
						<li><input type="password" placeholder="비밀번호 확인" class="login_write" id="passwordCheck"></li>
						<li><input type="text" placeholder="이름" class="login_write" name="name" id="name"></li>
						<li><input type="text" placeholder="주민(사업자)번호" class="login_write" name="idno" id="idno"></li>
						<li><input type="email" placeholder="이메일주소@도메인" class="login_write" name="email" id="email"></li>
						<li><input type="text" placeholder="주소" class="login_write" name="address" id="address"></li>
						<li><a href="javascript:join();" class="btn_join">회원가입</a></li>
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