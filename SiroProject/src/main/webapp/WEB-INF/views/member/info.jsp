<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/bank/resources/css/style.css">
<title>Insert title here</title>
</head>
<script src="/bank/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		<c:if test="${custinfo.division == 'personal'}">
			$('#personalRadio').attr('checked','checked');
		</c:if>
		<c:if test="${custinfo.division == 'company'}">
			$('#companyRadio').attr('checked','checked');
		</c:if>
		<c:if test="${result != null}">
			alert("${result}");
		</c:if>
	});
	
	function updateCustomer() {
		var password = $('#password').val();
		var passwordCheck = $('#passwordCheck').val();
		
/* 		if(password.length < 3 || password.length > 15){
			alert("비밀번호는 3~15자리 사이로 입력해주세요.");
			return false;
		} */
		
		if(password != passwordCheck){
			alert("비밀번호가 서로 일치하지 않습니다. 다시 입력해 주세요.");
			return false;
		}
		
		$('#updateCustomerForm').submit();
	}
</script>
<body><!-- 계좌현황서브 -->
	
	
	<div id="wrap"><!-- wrap -->
		
		<div id="header"><!-- 상단 -->
			<div id="top"><!-- 멤버 -->
				<a href="/bank/infoForm?custid=${sessionScope.custid}">회원정보수정</a><a href="/bank/logout">로그아웃</a>&nbsp;&nbsp;&nbsp;
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
			<h1>회원정보 수정<span></span></h1><!-- 내용제목 -->
			<div>
				<form action="/bank/updateCustomer" id="updateCustomerForm">
					<ul class="member_info"><!-- 회원가입 -->
						<li><label for="wr_division">회원구분</label><input type="radio" id="personalRadio" name="division" value="personal"> 개인 <input type="radio" id="companyRadio" name="division" value="company"> 법인</li>
						<li><label for="wr_id">아이디</label><input type="text" id="custid" name="custid" class="login_write" value="${custinfo.custid}" readonly="readonly"></li>
						<li><label for="wr_pass">비밀번호</label><input type="password" id="password" name="password" class="login_write"  value="${custinfo.password}"></li>
						<li><label for="wr_passchk">비밀번호 확인</label><input type="password" id="passwordCheck" name="passwordCheck" class="login_write" value="${custinfo.password}"></li>
						<li><label for="wr_name">이름</label><input type="text" id="name" name="name" class="login_write" value="${custinfo.name}"></li>
						<li><label for="wr_birnum">주민(사업자)번호</label><input type="text" id="idno" name="idno" class="login_write" readonly="readonly" value="${custinfo.idno}"></li>
						<li><label for="wr_email">이메일</label><input type="email" id="email" name="email" class="login_write" value="${custinfo.email}"></li>
						<li><label for="wr_address">주소</label><input type="text" id="address" name="address" class="login_write" value="${custinfo.address}"></li>
					</ul>
				</form>
				<p class="list_btn">
						<a href="javascript:updateCustomer();" class="select">회원정보수정</a>
				</p>	
			</div>


		</div>


		<div id="footer"><!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br>
			Copyright©2016 KITA-SESchool ICT Educational Center All rights reserved.			
		</div>


		</div>

	
</body>
</html>