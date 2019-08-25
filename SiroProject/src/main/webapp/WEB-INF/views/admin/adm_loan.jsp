<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>SESbank</title>
	<link rel="stylesheet" type="text/css" href="/bank/resources/css/style.css" />
	<script src="/bank/resources/script/jquery-3.3.1.min.js"></script>
</head>
<body><!-- 계좌현황서브 -->
	<div id="wrap"><!-- wrap -->
		<div id="header"><!-- 상단 -->
			<div id="top"><!-- 멤버 -->
				<a href="/bank/Customer/info">회원정보수정</a><a href="/bank/Customer/logout">로그아웃</a>&nbsp;&nbsp;&nbsp;
			</div>
			<div id="adm_navi"><!-- 네비게이션 -->
			<a href="/bank/Admin/adminmain"><img src="/bank/resources/images/logo.png" width="150" /></a>
			<ul>
				<li class="select"><a href="/bank/Admin/adminloan">대출승인</a></li>
				<li><a href="/bank/Admin/adminmain">문의답변</a></li>
			</ul>
			</div>
		</div>
		<div id="adm_contents"><!--내용-->
			<h1>관리자 / 대출승인<span></span></h1><!-- 내용제목 -->
			
			<table>
				<tr>
					<th>선택</th>
					<th>신청자</th>
					<th>계좌번호</th>
					<th>대출금액</th>
					<th>대출기간</th>
					<th>(대출)이율</th>
				</tr>
				<tr>
					<td><input type="radio" name="loan_v" checked /></td>
					<td>홍길동<br />(honggildong)</td>
					<td>123-35-2154</td>
					<td>1,200,000</td>
					<td>2016.1.1 ~ 2016.12.31</td>
					<td>2.2%</td>
				</tr>
				<tr>
					<td><input type="radio" name="loan_v" /></td>
					<td>김철수<br />(cskim0001)</td>
					<td>25465-5897</td>
					<td>12,000,000</td>
					<td>2016.1.1 ~ 2016.12.31</td>
					<td>2.2%</td>
				</tr>
			</table>
			<p class="adm_paging">
				<a href="#" class="select">승인</a><a href="#">거절</a>
			</p>
		</div>
		<div id="footer"><!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br />
			Copyright©2016 KITA-SESchool ICT Educational Center All rights reserved.			
		</div>
		</div>
</body>
</html>