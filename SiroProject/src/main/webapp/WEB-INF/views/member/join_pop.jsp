<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>SESbank</title>
	<link rel="stylesheet" type="text/css" href="../resources/css/style.css" />

	<script src="/bank/resources/script/jquery-3.3.1.min.js"></script>
	
	<script> 
		 function idcheck(){
				var checkId = document.getElementById("checkId");
				console.log("Test value : " + checkId.value );
				$.ajax({
					"url" :	"/bank/Customer/idcheck",
					"method": "get",
					"data": {
						"custid": checkId.value,
					},
					"success": function(result){
						console.log(result);
						var IDDO = document.getElementById("IDDO");
						var IDNO = document.getElementById("IDNO");
						if (result===true){
							testSpan1.textContent = checkId ;
							IDNO.style.display="";
							IDDO.style.display="none";
							//window.location.href = "/";
						}
						else {
							var testSpan=document.getElementById("testSpan");
							testSpan.textContent = checkId ;
							IDNO.style.display="none";
							IDDO.style.display="";
							//window.location.href="join";
						}
					},
					"error" : function () {
						alert("ajax 통신 실패");
					}	
				});
		
		 }
	
	</script>


</head>

<body>

<div class="popwrap">

<h2>ID중복확인</h2>
	<div style="display:none;" id="IDDO">
		[<span id="testSpan1">${checkId}</span>] 아이디는 사용가능합니다.
		<p class="list_btn">
		<a href="#">적용</a>
		</p>
	</div>
	<div style="display:;" id="IDNO">
		[<span id="testSpan">test1</span>] 아이디는 이미 사용중입니다.
		<p class="list_btn">
		<input type="text" class="wr_idcheck" id="checkId" /> <a onclick="idcheck()">중복확인</a>
		</p>
	</div>
</div>



</body>

</html>