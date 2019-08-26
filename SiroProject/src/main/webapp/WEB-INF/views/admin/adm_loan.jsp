<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>SESbank</title>
	<link rel="stylesheet" type="text/css" href="/bank/resources/css/style.css" />
	<script src="/bank/resources/script/jquery-3.3.1.min.js"></script>
</head>
<body>
<div id="wrap"><!-- wrap -->
		<div id="header"><!-- 상단 -->
			<div id="top"><!-- 멤버 -->
				<a href="/bank/logout">관리자로그아웃</a>&nbsp;&nbsp;&nbsp;
			</div>
			<div id="adm_navi"><!-- 네비게이션 -->
			<a href="/bank/admin/adminmain"><img src="/bank/resources/images/logo.png" width="150" /></a>
			<ul>
				<li class="select"><a href="/bank/admin/adminloan">대출승인</a></li>
				<li><a href="/bank/admin/adminmain">문의답변</a></li>
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
				
				<!-- 게시글이 없는 경우 -->
			<c:if test="${empty list}">
				<tr>
					<td colspan="6" align="center"> 대출업무가 없습니다. </td>
				</tr>
			</c:if>
			<!-- 게시글이 있는 경우 -->
			<c:if test="${not empty list }">
				<c:forEach var="account" items="${list}" varStatus="stat">
					<tr> 
						<td><input type="radio" name="loan_v" checked /></td>
						<td>${account.id}<br />( )</td>
						<td>${account.accountno}</td>
						<td>${account.balance}</td>
						<td>${account.startdeposit} ~ ${account.enddeposit}</td>
						<td>${account.interest}</td>
					</tr>
				</c:forEach>
			</c:if>
			
			</table>
			<p class="adm_paging">
				<a href="#" class="select">승인</a>
				<a href="#">거절</a>
			</p>
		</div>
		<div id="footer"><!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br />
			Copyright©2016 KITA-SESchool ICT Educational Center All rights reserved.			
		</div>
		</div>
</body>
</html>