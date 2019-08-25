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
				<a href="/bank/goinfo">회원정보수정</a><a href="/bank/logout">로그아웃</a>&nbsp;&nbsp;&nbsp;
			</div>
			<div id="navi">
			<a href="home"><img src="/bank/resources/images/logo.png" width="150" /></a>
			<div class="gnb"><!-- 네비게이션 -->
				 <ul>
					<li><a href="/bank/accountmain">보유계좌현황</a>
						<!-- <ul>
						   <li><a href="#">서브메뉴1</a></li>
						   <li><a href="#">서브메뉴2</a></li>
						   <li><a href="#">서브메뉴3</a></li>
						</ul> -->
					</li>

					<li><a href="/bank/addaccount1">신규계좌개설</a>
						<ul>
						   <li><a href="/bank/addaccount1">예금계좌</a></li>
						   <li><a href="/bank/addaccount2">적금계좌</a></li>
						   <li><a href="/bank/addaccount3">대출계좌</a></li>
						</ul>
					</li>
					<li><a href="/bank/goboard" class="select">고객문의게시판</a>
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
			<h1>고객문의 게시판<span></span></h1><!-- 내용제목 -->
			
			<table>
				<tr>
					<th>No.</th>
					<th>문의내용</th>
					<th>일자</th>
					<th>작성자</th>
					<th>조회수</th>
				</tr>		
			<!-- 게시글이 없는 경우 -->
				<c:if test="${empty list}">
				<tr>
					<td colspan="5" align="center">데이터가 없습니다.</td>
				</tr>
				</c:if>
			
			<!-- 게시글이 있는 경우 -->
			<c:if test="${not empty list }">
				<c:forEach var="board" items="${list}" varStatus="stat">
					<tr> 
						<td>${stat.count + navi.startRecord}</td>
						<td class="board_title"><a href="boardDetail?boardno=${board.boardno}">${board.title}</a></td>
						<td>${board.regdate}</td>
						<td>${board.custid}</td>
						<td>${board.hitcount}</td>
					</tr>
				</c:forEach>
			</c:if>
			</table>
			<p class="paging">
				<a href="boardList?currentPage=${navi.currentPage-navi.pagePerGroup}&searchItem=${searchItem}&searchWord=${searchWord}">&lt</a>
				<c:forEach var="page" begin="${navi.startPageGroup}" end="${navi.endPageGroup }">
			<a href="boardList?currentPage=${page}&searchItem=${searchItem}&searchWord=${searchWord}"class="select">${page}</a>
			</c:forEach>
				<a href="boardList?currentPage=${navi.currentPage-1}&searchItem=${searchItem}&searchWord=${searchWord}">&gt</a>
				<a href="/bank/goboardwrite" class="btn_write">글쓰기</a>
			</p>
		<form action="boardList" method="get">
			<p class="board_search" >
				<select name="searchItem">
					<option>전체</option>
					<option value="title"  ${searchItem =='title'?'selected' :''}>제목</option>
					<option value="content" ${searchItem =='content'? 'selected' :'' }>내용</option>
					<option value="userid" ${searchItem =='userid'?'selected' :'' }>작성자</option>
				</select>
				<input type="text" name="searchWord" value="${searchWord}"/> <a type="submit" >검색</a>
			</p>
		</form>
		</div>
		<div id="footer"><!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br />
			Copyright©2016 KITA-SESchool ICT Educational Center All rights reserved.			
		</div>
		</div>
</body>
</html>