<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>SESbank</title>
	<link rel="stylesheet" type="text/css" href="/bank/resources/css/style.css" />
	<script src="/bank/resources/js/jquery-3.4.1.min.js"></script>
	
	
	<script type="text/javascript">
	var accountno;
	var accounttype;
	
	$(function () {
		<c:if test="${result != null}">
			alert("${result}");
		</c:if>

		<c:if test="${insertAccResult != null}">
			alert("${insertAccResult}");
		</c:if>

		accountList();
		
	});
	
	function accountList() {
		$.ajax({
			url : "loanlist", /* form의 action속성과 같이 controller value값 */
			type : "post", /* get/post */
			dataType : "json", /* json형태로 값을 받아옴 */
			
			success : function(result) {			
				/* alert("성공"); */
				var accounttype;
				var depositDate;
				var balance;
				var interest;
				
				$('#admin_content td').remove();
				
				$(result).each(function(index, item) {
					if(item.startdeposit == null || item.enddeposit == null){
						depositDate = "";
					}else{
						depositDate = item.startdeposit + "~" + item.enddeposit;
					}
					
					if(item.balance != 0){
						balance = item.balance;
					}else{
						balance = "-";
					}
					
					if(item.interest != 0){
						interest = item.interest + "%"
					}else{
						interest = "";
					}
					
					/* 
						input tag 사용자 지정 속성
						방법 : 속성명 앞에 data를 붙인다
						jquery호출 방법 : $('#id').data('속성명(data제외)')
						여기에 추가된 사용자 지정속성 : data-accountno, data-accounttype
					*/
					$("#admin_content").append(
								"<tr><td><input name='accountRadio' type='radio' data-accountno="+ item.accountno +" data-accounttype="+ item.accounttype +">"
							+ "</td><td>"+ accounttype
							+ "</td><td>"+ item.accountno
							+ "</td><td>"+ balance
							+ "</td><td>"+ depositDate
							+ "</td><td>"+ interest
							+ "</td></tr>"
							);
								}); 
			}, /* 성공 했을때 */
			error : function() {
				alert("실패");
			} /* 에러가 났을때 */
		});
	}
	</script>
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
			<form>
			<table>
				<tbody id="admin_content"><tr>
					<th>선택</th>
					<th>신청자</th>
					<th>계좌번호</th>
					<th>대출금액</th>
					<th>대출기간</th>
					<th>(대출)이율</th>
				</tr>
				</tbody>
				
				<!-- 게시글이 없는 경우 -->
<%-- 			<c:if test="${empty list}"> --%>
<!-- 				<tr> -->
<!-- 					<td colspan="6" align="center"> 대출업무가 없습니다. </td> -->
<!-- 				</tr> -->
<%-- 			</c:if> --%>
<!-- 			<!-- 게시글이 있는 경우 -->
<%-- 			<c:if test="${not empty list }"> --%>
<%-- 				<c:forEach var="account" items="${list}" varStatus="stat"> --%>
<!-- 					<tr>  -->
<!-- 						<td><input type="radio" name="loan_v" checked /></td> -->
<%-- 						<td>${account.id}<br />( )</td> --%>
<%-- 						<td>${account.accountno}</td> --%>
<%-- 						<td>${account.balance}</td> --%>
<%-- 						<td>${account.startdeposit} ~ ${account.enddeposit}</td> --%>
<%-- 						<td>${account.interest}</td> --%>
<!-- 					</tr> -->
<%-- 				</c:forEach> --%>
<%-- 			</c:if> --%>
			
			</table>
			<p class="adm_paging">
				<a href="/bank/admin/loanOK" class="select">승인</a>
				<a href="/bank/admin/loanX">거절</a>
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