<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">
<!-- Title Page-->
<title>Sign In ::</title>

<!-- js -->
<script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
<script src="/cloud/resources/js/jquery-ui.min.js"></script>
<!-- Icons font CSS-->
<link
	href="/cloud/resources/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link
	href="/cloud/resources/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
	rel="stylesheet">
<!-- Vendor CSS-->
<link href="/cloud/resources/vendor/select2/select2.min.css"
	rel="stylesheet" media="all">
<link href="/cloud/resources/vendor/datepicker/daterangepicker.css"
	rel="stylesheet" media="all">
<!-- Main CSS-->
<link href="/cloud/resources/css/Member.css" rel="stylesheet"
	media="all">
<!-- script -->
<script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
<script src="/cloud/resources/js/jquery-ui.min.js"></script>
<script>
	function signupbtn() {
		var id = document.getElementById("id");
		var pw = document.getElementById("pw");
		var memberName = document.getElementById("memberName");
		var email = document.getElementById("email");
		var phoneNum = document.getElementById("phoneNum");

		console.log(id + "" + pw + "" + memberName + "" + email + "" + phoneNum
				+ "" + memberType);
		if (id.value.length == 0 || id.value == "") {
			alert("ID를 입력해주세요.");
			return;
		}
		if (id.value.length == 0 || id.value == "") {
			alert("PW를 입력해주세요.");
			return;
		}
		$('#"signupform"').submit();
	}
</script>
</head>

<body>
	<div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
		<div class="wrapper wrapper--w960">
			<div class="card card-2">
				<div class="card-heading-register"></div>
				<div class="card-body">
					<h2 class="title">회원가입</h2>
					<form action="signupform" method="POST" id="signin-form">
						<div class="input-group">
							<input class="input--style-2" type="text" placeholder="아이디"
								name="id" id="id">
						</div>
						<div class="input-group">
							<input class="input--style-2" type="password" placeholder="비밀번호"
								name="pw" id="pw">
						</div>
						<div class="input-group">
							<input class="input--style-2" type="text" placeholder="이름"
								name="memberName" id="memberName">
						</div>
						<div class="input-group">
							<input class="input--style-2" type="text"
								placeholder="이메일(abc123@def.com)" name="email" id="email">
						</div>
						<div class="input-group">
							<input class="input--style-2" type="text"
								placeholder="연락처(010-1234-5678)" name="phoneNum" id="phoneNum">
						</div>
						<div class="input-group">
							<div class="rs-select2 js-select-simple select--no-search">
								<select name="class" name="memberType" id="memberType">
									<option value="client" selected>일반회원</option>
									<option value="inventor">창업자 / 창업희망자</option>
									<option value="enp">특허 보유자(개인 / 기업)</option>
								</select>
								<div class="select-dropdown"></div>
							</div>
						</div>
						<div class="p-t-30">
							<button class="btn btn--radius btn--green" type="submit"
								onclick="signupbtn()">가입하기</button>
							&nbsp; <a class="btn btn--radius btn--green"
								href="/cloud/member/home">취소</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Jquery JS-->
	<script src="/cloud/resources/vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="/cloud/resources/vendor/select2/select2.min.js"></script>
	<script src="/cloud/resources/vendor/datepicker/moment.min.js"></script>
	<script src="/cloud/resources/vendor/datepicker/daterangepicker.js"></script>
	<!-- Main JS-->
	<script src="/cloud/resources/js/global.js"></script>
</body>
</html>
