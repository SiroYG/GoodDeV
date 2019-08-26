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
	$(function() {
		<c:if test="${result == true}">
			$('#idCheckDiv1').attr('style','display:;');
			$('#idCheckDiv2').attr('style','display:none;');
		</c:if>
	});
	
	function idCheck() {
		var txtCheckId = $('#txtCheckId').val();
		
		if(txtCheckId.length < 3 || txtCheckId.length >15){
			alert("아이디는 3~15자리 사이로 입력해주세요.");
			return false;
		}
		
		location.href='/bank/idcheck?custid='+txtCheckId;
	}
	
	function confirm() {
		opener.document.getElementById('custid').value = '${custid}';
		window.close();
	}
</script>
<body>


<div class="popwrap">

<h2>ID중복확인</h2>
		<div style="display:none;" id="idCheckDiv1">
			[<span>${custid}</span>] 아이디는 사용가능합니다.
			<p class="list_btn">
			<a href="javascript:confirm();">적용</a>
			</p>
		</div>
	
		<div style="display:;" id="idCheckDiv2">
			<c:if test="${result == false}">
			[<span>${custid}</span>] 아이디는 이미 사용중입니다.
			</c:if>
			<p class="list_btn">
			<input type="text" class="wr_idcheck" id="txtCheckId"> <a href="javascript:idCheck();">중복확인</a>
			</p>
		</div>

</div>
</body>
</html>