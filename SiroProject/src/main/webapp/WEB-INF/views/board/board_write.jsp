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
	<script>
		function boardWrite(){
			console.log("TEST~!!!!!!!!!!");
			var writeform =document.getElementById("writeform");
			writeform.submit();
		}
	</script>
	
</head>

<body><!-- 계좌현황서브 -->
	<div id="wrap"><!-- wrap -->
		
		<div id="header"><!-- 상단 -->
			<div id="top"><!-- 멤버 -->
				<a href="goinfo">회원정보수정</a><a href="logout">로그아웃</a>&nbsp;&nbsp;&nbsp;
			</div>
			<div id="navi">
			<a href="home"><img src="/bank/resources/images/logo.png" width="150" /></a>
			<div class="gnb"><!-- 네비게이션 -->
     
				 <ul>
					<li><a href="accountmain">보유계좌현황</a>
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
					<li><a href="goboard" class="select">고객문의게시판</a>
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
	<form action="/bank/Board/boardWrite" method="POST" id="writeform" enctype="multipart/form-data">
		<div id="contents"><!--내용-->
			<h1>고객문의 게시판<span></span></h1><!-- 내용제목 -->
			<table class="wr_board">
				<tr>
					<th>작성자</th>
					
					<td><input type="hidden"
							value="${sessionScope.loginId}" name="custid">${sessionScope.loginId}</td>
				</tr>
				<tr>
					<th>작성일</th>
					<td> <input name="regdate" type="text" value="<fmt:formatDate value='${today}' pattern='yyyy년 MM월 dd일 (E)'/>" disabled="disabled"> </td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" id ="title"/></td>
				</tr>
				<tr>
					<th colspan="2">내용</th>
				</tr>
				<tr>
					<td colspan="2"><textarea id="contents"  name="content"></textarea></td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td><input type="file" id="upload" name="upfile" /></td>
				</tr>
			</table>
			<p class="list_btn">
				<a href="goboard">취소</a>
				<a style="cursor: pointer;" onclick="boardWrite()"  class="select">등록</a>
			</p>
		</div>
	</form>
		<div id="footer"><!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br />
			Copyright©2016 KITA-SESchool ICT Educational Center All rights reserved.			
		</div>
		</div>

</body>

</html>