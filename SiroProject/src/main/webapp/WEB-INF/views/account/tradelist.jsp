<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="/bank/resources/css/style.css">
<script src="/bank/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

</script>
<body><!-- 계좌현황서브 -->
	
	
	<div id="wrap"><!-- wrap -->
		
		<div id="header"><!-- 상단 -->
			<div id="top"><!-- 멤버 -->
<a href="/bank/goinfo">회원정보수정</a><a href="/bank/logout">로그아웃</a>&nbsp;&nbsp;&nbsp;			</div>
			<div id="navi">
			<a href="/bank/home"><img width="150" src="/bank/resources/images/logo.png"></a>
			<div class="gnb"><!-- 네비게이션 -->
     
				<ul>
					<li><a  href="/bank/account/haveaccountForm">보유계좌현황</a>
					</li>

					<li><a class="select" href="/bank/account/addaccount1Form">신규계좌개설</a>
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
			<h1>거래내역 조회<span></span></h1><!-- 내용제목 -->
			<ul class="basic_list">
				<li><span>/ 조회계좌번호</span> ${accountno}</li>
				<li><span>/ 조회기간선택</span><input class="wr_date" type="text"> ~ <input class="wr_date" type="text"></li>
				<li><span>조회내용</span><input name="listcheck" type="radio" checked="">전체 <input name="listcheck" type="radio">입금내역 <input name="listcheck" type="radio">출금내역</li>
				<li><span>/ 조회결과순서</span> <input name="listcheck" type="radio">최근거래순서  <input name="listcheck" type="radio">과거거래순서</li>
			</ul>

			<p class="list_btn">
				<a href="haveaccount.html">이전</a><a class="select" href="#">조회</a>
			</p>
			<table>
				<tbody><tr>
					<th>거래일자</th>
					<th>시간</th>
					<th>출금</th>
					<th>입금</th>
					<th>내용</th>
					<th>잔액</th>
				</tr>
				<tr>
					<td>2016-01-06</td>
					<td>12:12:01</td>
					<td>45,000</td>
					<td></td>
					<td>이체</td>
					<td>450,000</td>
				</tr>
				<tr>
					<td>2016-01-03</td>
					<td>10:12:35</td>
					<td></td>
					<td>100,00</td>
					<td>월급</td>
					<td>495,000</td>
				</tr>
				<tr>
					<td>2016-01-01</td>
					<td>06:00:10</td>
					<td>5,000</td>
					<td></td>
					<td>점심</td>
					<td>395,000</td>
				</tr>
			</tbody></table>
			<p class="paging">
			<a href="#">&lt;</a><a class="select" href="#">1</a><a href="#">2</a><a href="#">3</a>...<a href="#">&gt;</a>
			</p>
			

		</div>



		<div id="footer"><!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br>
			Copyright©2016 KITA-SESchool ICT Educational Center All rights reserved.			
		</div>



		</div>

	






</body>
</html>