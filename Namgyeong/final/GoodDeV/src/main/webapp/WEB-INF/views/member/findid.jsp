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
    <title>SupporterS :: Find ID</title>

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
    <script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
    <script>
  	$(function(){
  		
  		$("#searchId").on('click',function(){
  			var memberName = $('#memberName').val();
  			var email = $('#email').val();
  			
  			if (memberName.length==0 || memberName =="") {
  				alert("유저이름을 입력해주세요.");
  				return false;
  				}
  			if (email.length==0 || email =="") {
  				alert("이메일를 입력해주세요.");
  				return false;
  				}
  			var total = {
  				'memberName' : memberName,
  				'email'	: email
  				}
  			$.ajax({
  				url : 'searchId',
  				type : 'post',
  				data : total,
  				success : function(res){
  					if(res==''){
  						alert('정보를 잘못입력하셨습니다.');
  						$('#memberName').val("");
  						$('#email').val("");
  					}else{
  						alert(res);
  						$('#memberName').val("");
  						$('#email').val("");
  						
  					}
  				}
  				
  			})
  		})
    
  	});
    </script>
    
</head>

<body>
    <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading-find"></div>
                <div class="card-body">
                    <h2 class="title">아이디 찾기</h2>
                    <form>
                       <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="이름" name="memberName" id="memberName">
                        </div>
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="이메일(abc123@def.com)" name="email" id="email">
                        </div>
                        
                        <div class="p-t-30">
                            <button class="btn btn--radius btn--green" type="button" id="searchId">아이디 찾기</button> &nbsp;
                            <a class="btn btn--radius btn--green" href="/cloud/member/home">취소</a><br><br>
                            <a href="gofindpw" class="grey">&nbsp;비밀번호 찾기</a>&nbsp;&nbsp;<a href="gologin" class="grey">/ 로그인</a>
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
<!-- end document-->