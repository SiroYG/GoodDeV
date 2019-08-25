<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
			<a href="/bank/home"><img src="/bank/resources/images/logo.png" width="150" /></a>
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
						   <li><a href="addaccount1">예금계좌</a></li>
						   <li><a href="addaccount2">적금계좌</a></li>
						   <li><a href="addaccount1">대출계좌</a></li>
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
			<table class="vw_board">
				<tr>
					<th>작성자</th>
					<td>${board.custid}</td>
				</tr>
				<tr>
					<th>작성일</th>
					<td>${board.regdate}</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>${board.title}</td>
				</tr>
				<tr>
					<th colspan="2">내용</th>
				</tr>
				<tr>
					<td colspan="2" class="table_contents">
					${board.content}
					</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td> 
			<c:if test="${board.originalfile == null}">
				첨부된 파일이 없습니다.
			</c:if>
					  </td>
				</tr>
			</table>
			<table class="adm_board">
			<c:if test="${board.replytext == null}">
			<tr>
					<th>현재 답변중..<br/>
					<span>(답변 시간 평일 9:00 AM ~ 6:00 PM)</span>
					</th>
					<td>
						고객문의게시판입니다. 문의글을 남겨주세요<br />
						2016년 1월 1일 기준 2.2% 입니다.<br />
						<br />
						<br />
						<br />
						<br />
						<br />
					</td>
				</tr>
			</c:if>
			<c:if test="${board.replytext != null}">
				<tr>
					<th>관리자<br/>
					<span>${board.replydate}</span>
					</th>
					<td>
						<pre>
							${board.replytext}
						</pre>
					</td>
				</tr>
			</c:if>
			</table>
			<p class="list_btn">
				<a href="goboardwrite">수정</a>
				<a href="boardDelete?boardno=${board.boardno}">글 삭제</a>
				<a href="boardUpdate?boardno=${board.boardno}">글 수정</a>
			</p>
		</div>
		<div id="footer"><!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br />
			Copyright©2016 KITA-SESchool ICT Educational Center All rights reserved.			
		</div>
		</div>
</body>
</html>