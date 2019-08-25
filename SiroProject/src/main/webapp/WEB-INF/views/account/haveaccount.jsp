<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>SESbank</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css" />

	<script src="/bank/resources/script/jquery-3.3.1.min.js"></script>
	<script>
			
	
	
	
	</script>
	
	
</head>
<body><!-- 계좌현황서브 -->
	<div id="wrap"><!-- wrap -->
		
		<div id="header"><!-- 상단 -->
			<div id="top"><!-- 멤버 -->
				<a href="goinfo">회원정보수정</a><a href="/bank/Customer/logout">로그아웃</a>&nbsp;&nbsp;&nbsp;
			</div>
			<div id="navi">
			<a href="home"><img src="resources/images/logo.png" width="150" /></a>
			<div class="gnb"><!-- 네비게이션 -->
				 <ul>
					<li><a href="accountmain" class="select">보유계좌현황</a>
						<!-- <ul>
						   <li><a href="#">서브메뉴1</a></li>
						   <li><a href="#">서브메뉴2</a></li>
						   <li><a href="#">서브메뉴3</a></li>
						</ul> -->
					</li>

					<li><a href="addaccount1">신규계좌개설</a>
						<ul>
						   <li><a href="addaccount1">예금계좌</a></li>
						   <li><a href="addaccount2">적금계좌</a></li>
						   <li><a href="addaccount3">대출계좌</a></li>
						</ul>
					</li>
					<li><a href="goboard">고객문의게시판</a>
						<!-- <ul>
						   <li><a href="#">서브메뉴1</a></li>
						   <li><a href="#">서브메뉴2</a></li>
						   <li><a href="#">서브메뉴3</a></li>
						</ul> -->
					</li>
				</ul>
			</div>
			</div>
		</div>
		<div id="contents"><!--내용-->
			<h1>보유계좌 현황</h1><!-- 내용제목 -->
			
			<table>
				<tr>
					<th>선택</th>
					<th>계좌종류</th>
					<th>계좌번호</th>
					<th>잔고</th>
					<th>납입(상환)기간</th>
					<th>대출(이율)</th>
				</tr>
				<tr>
					<td><input type="radio" name="backingname" checked /></td>
					<td>예금계좌</td>
					<td>250</td>
					<td>-</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="radio" name="backingname" /></td>
					<td>적금계좌</td>
					<td>254-65-5897</td>
					<td>12,000,000</td>
					<td>2016.1.1 ~ 2016.12.31</td>
					<td>2.2%</td>
				</tr>
				<tr>
					<td><input type="radio" name="backingname" /></td>
					<td>대출계좌</td>
					<td>665-85-4587</td>
					<td>100,000,000</td>
					<td>2016.1.1 ~ 2016.12.31</td>
					<td>2.7%</td>
				</tr>
			</table>
			
			<p class="list_btn">
				<a href="deposit.html">입금</a>
				<a href="withdraw.html">출금</a>
				<a href="transfer.html">이체</a>
				<a href="tradelist.html">거래내역</a>
				<a href="loan.html">대출상환</a>
			</p>
		</div>
		<div id="footer"><!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br />
			Copyright©2016 KITA-SESchool ICT Educational Center All rights reserved.			
		</div>
		</div>
</body>
</html>