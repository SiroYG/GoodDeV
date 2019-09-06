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
    <title>Find ID :: </title>

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
</head>

<body>
    <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">비밀번호 찾기</h2>
                    <form action="" method="POST" id="">
                       <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="아이디" name="id">
                        </div>
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="이름" name="memberName">
                        </div>
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="이메일(abc123@def.com)" name="email">
                        </div>
                        
                        <div class="p-t-30">
                            <button class="btn btn--radius btn--green" type="submit">비밀번호 찾기</button> &nbsp;
                            <a class="btn btn--radius btn--green" href="/cloud/member/home">취소</a><br><br>
                            
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