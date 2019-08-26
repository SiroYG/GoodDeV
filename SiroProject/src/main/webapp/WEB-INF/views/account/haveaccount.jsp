<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/bank/resources/css/style.css">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="/bank/resources/css/style.css">
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
			url : "accountList", /* form의 action속성과 같이 controller value값 */
			type : "post", /* get/post */
			dataType : "json", /* json형태로 값을 받아옴 */
			
			success : function(result) {			
				/* alert("성공"); */
				var accounttype;
				var depositDate;
				var balance;
				var interest;
				
				$('#accountView td').remove();
				
				$(result).each(function(index, item) {
					switch (item.accounttype) {
					case "checking":
						accounttype = "예금계좌";
						break;
					case "saving":
						accounttype = "적금계좌";
						break;
					case "loan":
						accounttype = "대출계좌";
						break;
					}	
					
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
					$("#accountView").append(
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
	
	function diposit() {
	/* 
		클릭 된 radio버튼 태그를 가져오는 법
		$("input[name='라디오버튼 name속성값']:checked")
	*/
	accountno = $("input[name='accountRadio']:checked").data("accountno");
	accounttype = $("input[name='accountRadio']:checked").data("accounttype");
		/* 		alert(accountno);
				alert(accounttype); */
 		
 		if(accounttype == 'checking' || accounttype == 'saving' ){
			location.href="/bank/account/dipositForm?accountno=" + accountno;
		}else{
			alert('대출 계좌는 출금하실 수 없습니다.');
		}
	}
	
	function withdraw() {
		accountno = $("input[name='accountRadio']:checked").data("accountno");
		accounttype = $("input[name='accountRadio']:checked").data("accounttype");
		
 		if(accounttype == 'checking'){
			location.href="/bank/account/withdrawForm?accountno=" + accountno;
		}else{
			alert('적금/대출 계좌는 사용하실 수 없습니다.');
		}
	}
	
	function transfer(){
		accountno = $("input[name='accountRadio']:checked").data("accountno");
		accounttype = $("input[name='accountRadio']:checked").data("accounttype");
		
		if(accounttype == 'checking'){
			location.href="/bank/account/transferForm?accountno=" + accountno;
		}else{
			alert('적금/대출 계좌는 사용하실 수 없습니다.');
		}
	}
	
	function tradelist() {
		accountno = $("input[name='accountRadio']:checked").data("accountno");

		location.href="/bank/account/tradelistForm?accountno=" + accountno;

	}
	
	function loan() {
		accountno = $("input[name='accountRadio']:checked").data("accountno");
		accounttype = $("input[name='accountRadio']:checked").data("accounttype");
		
		if(accounttype == 'loan'){
			location.href="/bank/account/loanForm?accountno=" + accountno;
		}else{
			alert('예금/적금 계좌는 사용하실 수 없습니다.');
		}
	}
	
</script>
<body><!-- 계좌현황서브 -->
	
	
	<div id="wrap"><!-- wrap -->
		
		<div id="header"><!-- 상단 -->
			<div id="top"><!-- 멤버 -->
				<c:if test="${sessionScope.custid == null}">
					<a href="/bank/loginForm">로그인</a>
					<a href="/bank/joinForm">회원가입</a>&nbsp;&nbsp;&nbsp;
				</c:if>
				<c:if test="${sessionScope.custid != null}">
					<a href="/bank/infoForm?custid=${sessionScope.custid}">회원정보수정</a>
					<a href="/bank/logout">로그아웃</a>&nbsp;&nbsp;&nbsp;
				</c:if>
			</div>
			<div id="navi">
			<a href="/bank/home"><img width="150" src="/bank/resources/images/logo.png"></a>
			<div class="gnb"><!-- 네비게이션 -->
     
				 <ul>
					<li><a class="select" href="/bank/account/haveaccountForm">보유계좌현황</a>
					</li>

					<li><a href="/bank/account/addaccount1Form">신규계좌개설</a>
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
			<h1>보유계좌 현황</h1><!-- 내용제목 -->
			
			<table>
				<tbody id="accountView"><tr>
					<th>선택</th>
					<th>계좌종류</th>
					<th>계좌번호</th>
					<th>잔고</th>
					<th>납입(상환)기간</th>
					<th>대출(이율)</th>
				</tr>
				<tr>
					<td><input name="backingname" type="radio" checked=""></td>
					<td>예금계좌</td>
					<td>250</td>
					<td>-</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input name="backingname" type="radio"></td>
					<td>적금계좌</td>
					<td>254-65-5897</td>
					<td>12,000,000</td>
					<td>2016.1.1 ~ 2016.12.31</td>
					<td>2.2%</td>
				</tr>
				<tr>
					<td><input name="backingname" type="radio"></td>
					<td>대출계좌</td>
					<td>665-85-4587</td>
					<td>100,000,000</td>
					<td>2016.1.1 ~ 2016.12.31</td>
					<td>2.7%</td>
				</tr>
			</tbody></table>

			<p class="list_btn">
				<a href="javascript:diposit();">입금</a>
				<a href="javascript:withdraw();">출금</a>
				<a href="javascript:transfer();">이체</a>
				<a href="javascript:tradelist();">거래내역</a>
				<a href="javascript:loan();">대출상환</a>
			</p>

		</div>


		<div id="footer"><!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br>
			Copyright©2016 KITA-SESchool ICT Educational Center All rights reserved.			
		</div>

		</div>



</body>
</html>