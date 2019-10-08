<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>SupporterS :: Update</title>

    <!-- Icons font CSS-->
    <link href="/cloud/resources/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="/cloud/resources/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="/cloud/resources/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="/cloud/resources/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="/cloud/resources/css/Member.css" rel="stylesheet" media="all">
    <script>
    function update(){
    	var id =document.getElementById("id");
		var pw =document.getElementById("pw");
		var repw =document.getElementById("repw");
		var email =document.getElementById("email");
		var phoneNum =document.getElementById("phoneNum");
		if (id.value.length==0 || id.value =="") {
			alert("id를 입력해주세요.");
			return false;
		}
		if (pw.value.length==0 || pw.value =="") {
			alert("pw를 입력해주세요.");
			return false;
		}
		if (repw.value.length==0 || repw.value =="") {
			alert("pw 재입력를 입력해주세요.");
			return false;
		}
		if(pw!=repw){
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}
    
    }
    </script>
</head>

<body>
    <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading-update"></div>
                <div class="card-body">
                    <h2 class="title">회원정보수정</h2>
                    <form action="updateform" method="post" id="update_form">
                       <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="${sessionScope.loginId}" value="${sessionScope.loginId}" name="memberId" id="id" readonly="readonly">
                        </div>
                        <div class="input-group">
                            <input class="input--style-2" type="password" placeholder="비밀번호" name="memberPw" id="pw">
                        </div>
                        <div class="input-group">
                            <input class="input--style-2" type="password" placeholder="비밀번호 재입력" id="repw">
                        </div>
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="이메일(abc123@def.com)" id="email"  name="email">
                        </div>
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="연락처(010-1234-5678)" id="phoneNum" name="phoneNum">
                        </div>
                        
                        <div class="p-t-30">
                            <button class="btn btn--radius btn--green" onclick="update()" type="submit">수정</button> &nbsp;
                            <a class="btn btn--radius btn--green" href="index">취소</a><br><br>
                             <a href="/cloud/member/godropout" class="grey">회원탈퇴</a>
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
    <script src="resources/js/global.js"></script>

</body>

</html>
<!-- end document-->