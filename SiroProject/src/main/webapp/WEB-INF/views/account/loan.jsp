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
			<h1>대출상환<span>상환정보를 입력해 주세요</span></h1><!-- 내용제목 -->
			<ul class="basic_list">
				<li><span>/ 계좌구분</span> 대출계좌</li>
				<li><span>/ 계좌번호</span><input class="wr_account" type="text" readonly="readonly" value="#{accountno}"></li>
				<li><span>/ 출금계좌번호</span><input class="wr_account" type="text" placeholder="2354-258-25891"><a onclick="window.open('/bank/account/loanpopForm?accountno=${accountno}','pop','resizable=no scrollbars=yes top=300 left=500 width=500 height=300');return false" href="#">조회</a></li>
				<li><span>/ 상환금액</span><input class="wr_account" type="text"></li>
			</ul>

			<p class="list_btn">
				<a href="/bank/account/haveaccountForm">이전</a><a class="select" href="#">대출상환</a>
			</p>
		</div>
		<div id="footer"><!-- 하단 -->
			서울시 강남구 삼성동 59-1 COEX 4F, 개인정보관리책임자: 홍길동<br>
			Copyright©2016 KITA-SESchool ICT Educational Center All rights reserved.			
		</div>
		</div>
</body>
</html>