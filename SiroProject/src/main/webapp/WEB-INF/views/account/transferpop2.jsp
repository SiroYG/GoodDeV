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
	$(function () {
 		$('#assessAcc').click(function() {
			opener.document.getElementById("depositAccNo").value = "${accountno}";
			window.close();
		}) 
		
		$('#selectAcc').click(function() {
			var accountno = $('#accountno').val();
			location.href="/bank/account/accCheck?accountno="+accountno;
		})
	});

</script>
<body>

<div class="popwrap">

<h2>입금계좌 입력</h2>
	<div>
		<p class="list_btn">
			<input class="wr_idcheck" type="text" placeholder="계좌번호 입력" id="accountno" name="accountno" value="${accountno}"> <a href="#" id="selectAcc">조회</a><br><br>
			<c:if test="${result == 'ok'}">
				<span>위 계좌는 유효한 계좌입니다</span><br><br><br><a href="#" class="select" id="assessAcc">적용</a>
			</c:if>
			
			<c:if test="${result == 'no'}">
				<span>위 계좌는 존재하지않는 계좌입니다</span><br><br><br>
			</c:if>
		</p>
		
	</div>
</div>





</body>
</html>