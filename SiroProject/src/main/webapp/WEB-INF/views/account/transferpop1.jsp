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
function selectAcc() {
	var accountno = $("input[name='accountRadio']:checked").data("accountno");
	opener.document.getElementById("depositAccNo").value = accountno;
	window.close();
}
</script>
<body>
<div class="popwrap">

<h2>입금계좌 선택</h2>
	<div style="">
		<table  id="transferAccView">
			<tbody><tr>
				<th>선택</th>
				<th>계좌번호</th>
				<th>잔고</th>
			</tr>
			<c:forEach items="${transferList}" var="vo">
			<tr>
				<td><input name="accountRadio" type="radio" data-accountno="${vo.accountno}"></td>
				<td>${vo.accountno}</td>
				<td>${vo.balance}</td>
			</tr>
			</c:forEach>
		</tbody></table>

		<p class="list_btn">
			<a href="javascript:selectAcc();">선택</a>
		</p>
	</div>
</div>





</body>
</html>