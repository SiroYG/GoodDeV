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
				<li><a href="/bank/admin/adminloan">대출승인</a></li>
				<li class="select"><a href="/bank/admin/adminmain">문의답변</a></li>
			</ul>
			</div>
		</div>
		<div id="adm_contents"><!--내용-->
			<h1>관리자 / 문의답변<span></span></h1><!-- 내용제목 -->
			
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
					<td>${board.title }</td>
				</tr>
				<tr>
					<th colspan="2">내용</th>
				</tr>
				<tr>
					<td colspan="2" class="table_contents">
						<pre>
							${board.content}
						</pre>
					</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td>
					<c:if test="${board.originalfile != null}">
						<a href="download?boardno=${board.boardno}">${board.originalfile}		</a>
					</c:if>
						<c:if test="${board.originalfile == null}">
							첨부된 파일이 없습니다.
						</c:if>
					</td>
				</tr>
			</table>
			<table class="adm_board">
			<!-- 관리자 답변 -->
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
			
				<tr><!-- 관리자답변등록 -->
					<th>답변</th>
					<td><textarea></textarea></td>
					<td><a href="#" class="btn_reply">등록</a></td>
				</tr>
			</table>
			<p class="list_btn">
				<a href="#">삭제</a>
				<a href=""${pageContext.request.contextPath}/ad_boardList" class="select">목록</a>	
			</p>
		</div>
		<div id="footer"><!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br />
			Copyright©2016 KITA-SESchool ICT Educational Center All rights reserved.			
		</div>
		</div>
</body>
</html>