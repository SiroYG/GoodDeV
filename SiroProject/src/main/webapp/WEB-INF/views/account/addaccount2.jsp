<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="/bank/resources/css/style.css">
<script src="/bank/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function makeno2(){
	$.ajax({
		url : 'makeno2',
		type : 'get',
		success : function(resp){
			if(resp == 'fail') {
				alert("중복된 번호입니다. 다시 생성해주세요");
			} else {
				$("#accountno").attr("value", resp);
				$("#accountno").attr("placeholder", resp);
				alert("사용 가능한 번호 : "+resp);
			}
		}
	})
}

function insertAccount() {
	$('#savingForm').submit();
}
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
					<li><a href="/bank/account/haveaccountForm">보유계좌현황</a>
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
			<h1>신규계좌 개설<span>적금계좌정보를 입력해 주세요</span></h1><!-- 내용제목 -->
			<form id="savingForm" action="/bank/account/insertAccount" method="post">
				<ul class="basic_list">
					<!-- 적금계좌 -->
					<li><span>/ 계좌구분</span>적금계좌<input type="hidden" value="saving" name="accounttype" id="accounttype"></li>
					<li><span>/ 계좌번호</span><input class="wr_account" type="text" placeholder="계좌번호"  name="accountno" id="accountno" readonly="readonly"> <a href="javascript:makeno2();">계좌번호 발급</a></li>
					<li><span>/ 월 납입금</span><input class="wr_account" type="text"  name="payment" id="payment"></li>
					<li><span>/ 납입기간</span><input name="years" type="radio" checked="" value="1">1년 <input name="years" type="radio" value="2">2년 <input name="years" type="radio" value="2">3년</li>
					<li><span>/ 이율</span><input class="wr_account" type="text" placeholder="※ 적금은 2.0% ~ 3.0% 의 이율이 적용됩니다" name="interest" id="interest" readonly="readonly"></li>
				</ul>
			</form>
			<p class="list_btn">
				<a class="select" href="javascript:insertAccount();">계좌개설</a>
			</p>
			<p class="extext">
			※ 대출계좌는 승인 완료 후 계좌현황에서 확인하실 수 있습니다
			</p>


		</div>



		<div id="footer"><!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br>
			Copyright©2016 KITA-SESchool ICT Educational Center All rights reserved.			
		</div>



		</div>




</body>
</html>