<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<!DOCTYPE html>
<html lang="ko">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<head>
<!------ Include the above in your HEAD tag ---------->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!--<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
	type="text/css" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<!-- <link href="/cloud/resources/css/bootstrap.min.css" rel="stylesheet">-->
<!-- Material Design Bootstrap -->
<link href="/cloud/resources/css/mdb.min.css" rel="stylesheet">
<!-- Your custom styles (optional) -->
<link href="/cloud/resources/css/style.min.css" rel="stylesheet">

<link rel="stylesheet" href="/cloud/resources/css/style.css">
<link rel="stylesheet" href="/cloud/resources/css/funding.css">
<link rel="stylesheet" href="/cloud/resources/css/chat.css">

<script>
var sessionId='';
var chatroom_seq = '';
var canMakeNewRM='y';
	$(function() {
		
		
 		chatroom_seq = $('.chat_list').attr('data-value')  //'ggg'
		sessionId = $('#sessionId').val();
 		var crowdfundingId = $('#CfmemberId').val();
 		var crowdfundingNum=$('#CfNum').val();
 		alert(chatroom_seq)
 		alert(sessionId)
 		alert(crowdfundingId)
 		alert(crowdfundingNum)
 		alert(canMakeNewRM)
 		if(chatroom_seq!=null){
 			canMakeNewRM='n';
 		}else{
 			canMakeNewRM='y';
 		}
 		
 		alert(canMakeNewRM)
 		

		jQuery(document).on('click','.chat_list',function(){
			chatroom_seq = $(this).attr('data-value');
 	 	  	alert(chatroom_seq);
			
			
			
		});	

	
 	 	
 	 	
 	 	
		
        var intervalchatroom = setInterval(chatroom, 90000); 		  
        function chatroom() { 
        	alert("get one")
 			$.ajax({
 				url : 'getAllchatroom',
 				type : 'get',
 				data : {
 					crowdfundingNum : crowdfundingNum
 				},
 				success : outputCR
				
 			})
	
        } 
  		
       
       
        var intervalchat = setInterval(chat, 3000); 		  
        function chat() { 
        	
			$.ajax({
				url : 'getAllchat',
				type : 'get',
				data : {
					chatroom_seq : chatroom_seq
				},
				success : output
				
			})
	
        } 
        
		$('.msg_send_btn').on('click',function() {
		
			alert("comecome")
			var message = $('.write_msg').val();
			if(message==''){
				alert('메시지를 입력해주세요')
				return;
			}
			$.ajax({
				url : 'writeChat',
				type : 'post',
				data : {
					chatroom_seq : chatroom_seq,
					memberId : sessionId,
					message : message
				},
				success : input
			})
			alert(message);
			$('.write_msg').val('');
			$('.write_msg').placeholder('');
			
 		})
 		$('h4').on('click', function(){
 			
 			if(canMakeNewRM=='n'){
 				alert("채팅방이 이미 존재합니다.")
 				return;
 			}
 			alert()
 			$.ajax({
				url : 'makeChatroom',
				type : 'post',
				data : {
					chatroom_seq : chatroom_seq,
					memberId : sessionId, 
					crowdfundingNum : crowdfundingNum
				},
				success : function(res){
					alert(res)
					if(res==null){
						alert("실패하였습니다.")
					}
					chatroom_seq=res.chatroom_seq
					alert("생성되었습니다.")
					
						$.ajax({
 					url : 'getAllchatroom',
 					type : 'get',
 					data : {
 							crowdfundingNum : crowdfundingNum
 							},
 					success : outputCR
 					
 			})
					
					
					
				}
			})
 			
 			
 		})
 		
			
	})
	
	
	
	function output(res){
		var chatdiv='';
		$.each(res,function(i,item) {
	
			if(sessionId!=item.memberId){
				chatdiv+='<div class="incoming_msg">'
				chatdiv+='<div class="received_msg">'
				chatdiv+='<div class="received_withd_msg">'
				chatdiv+='<p>'+item.message+'</p>'
				chatdiv+='<input type="hidden" id="chatroom_seq" value="'+item.chatroom_seq+'">'
				chatdiv+='<span class="time_date">'+ item.messageDate+'</span>';
				chatdiv+='</div>';
				chatdiv+='</div>';
				chatdiv+='</div>';
			}else{
				chatdiv+='<div class="outgoing_msg">'
				chatdiv+='<div class="sent_msg">';
				chatdiv+='<p>'+item.message+'</p>';
				chatdiv+='<input type="hidden" id="chatroom_seq" value="'+item.chatroom_seq+'">';
				chatdiv+='<span class="time_date">'+ item.messageDate+'</span>';
				chatdiv+='</div>';
				chatdiv+='</div>';
				
				
			}
			
		})
		$('.incoming_msg').remove();
		$('.outgoing_msg').remove();
		$(chatdiv).appendTo('#msg_history');
		chatdiv = '';
		ms = '';
	}
		
	function input(res){
		alert(res);
	}
	
	function outputCR(res){
		
		var chatdiv='';
		$.each(res,function(i,item){
			
			chatdiv+='<div class="chat_list" data-value ="'+item.chatroom_seq+'" >'
			chatdiv+='<div class="chat_people">'
			chatdiv+='<div class="chat_ib">'
			chatdiv+='<h5>ID : '+item.memberId+' <span class="chat_date">'+item.messageDate +'</span></h5>'
			chatdiv+='<p>'+item.message+'</p>'
			chatdiv+='</div>'
			chatdiv+='</div>'
			chatdiv+='</div>'
		})
		$('.chat_list').remove();
		$(chatdiv).appendTo('.inbox_chat');
		chatdiv = '';
		canMakeNewRM='n';
	}
	
	
	
</script>

<title>Funding :: 1 : 1 Chat</title>
</head>
<body>
	<input type="hidden" id="CfmemberId" value="${Crowdfunding.memberId }">
	<input type="hidden" id="CfNum" value="${Crowdfunding.crowdfundingNum }">
	
	<div class="container_chat" id="container_chat">
		<h3 class=" text-center"></h3>
		<div class="messaging">
			<div class="inbox_msg">
				<div class="inbox_people" id="">
				<c:if test="${sessionScope.loginId!=Crowdfunding.memberId}">
 				
					<div class="headind_srch">
						<div class="recent_heading">
							<h4 class="h4" id="h4">참여자 목록 +</h4>
						</div>
					</div>
					
				</c:if> 
				
					
					
					<div class="inbox_chat">
		
						<c:forEach var="lList" items="${cmforLeftList }" varStatus="status">
							<input type="hidden" id="count" value="${stauts.count}">
						
							<div class="chat_list" data-value ="${lList.chatroom_seq}" >
							
								<div class="chat_people">
									<div class="chat_ib">
										<h5>
											ID : ${lList.memberId} <span class="chat_date">${lList.messageDate}</span>
										</h5>
										<p>${lList.message}</p>
									</div>
								</div>
							</div>
						</c:forEach>

						<!-- 						<div class="chat_list"> -->
						<!-- 							<div class="chat_people"> -->
						<!-- 								<div class="chat_ib"> -->
						<!-- 									<h5> -->
						<!-- 										[memberId] <span class="chat_date">09 / 25</span> -->
						<!-- 									</h5> -->
						<!-- 									<p>[채팅 마지막 내용은 여기에]</p> -->
						<!-- 								</div> -->
						<!-- 							</div> -->
						<!-- 						</div> -->
						<!-- 						<div class="chat_list"> -->
						<!-- 							<div class="chat_people"> -->
						<!-- 								<div class="chat_ib"> -->
						<!-- 									<h5> -->
						<!-- 										[memberId] <span class="chat_date">09 / 25</span> -->
						<!-- 									</h5> -->
						<!-- 									<p>[chat_Content]</p> -->
						<!-- 								</div> -->
						<!-- 							</div> -->
						<!-- 						</div> -->
						<!-- 						<div class="chat_list"> -->
						<!-- 							<div class="chat_people"> -->
						<!-- 								<div class="chat_ib"> -->
						<!-- 									<h5> -->
						<!-- 										[memberId] <span class="chat_date">09 / 25</span> -->
						<!-- 									</h5> -->
						<!-- 									<p>[chat_Content]</p> -->
						<!-- 								</div> -->
						<!-- 							</div> -->
						<!-- 						</div> -->
						<!-- 						<div class="chat_list"> -->
						<!-- 							<div class="chat_people"> -->
						<!-- 								<div class="chat_ib"> -->
						<!-- 									<h5> -->
						<!-- 										[memberId] <span class="chat_date">09 / 25</span> -->
						<!-- 									</h5> -->
						<!-- 									<p>[chat_Content]</p> -->
						<!-- 								</div> -->
						<!-- 							</div> -->
						<!-- 						</div> -->
						<!-- 						<div class="chat_list"> -->
						<!-- 							<div class="chat_people"> -->
						<!-- 								<div class="chat_ib"> -->
						<!-- 									<h5> -->
						<!-- 										[memberId] <span class="chat_date">09 / 25</span> -->
						<!-- 									</h5> -->
						<!-- 									<p>[chat_Content]</p> -->
						<!-- 								</div> -->
						<!-- 							</div> -->
						<!-- 						</div> -->
						<!-- 						<div class="chat_list"> -->
						<!-- 							<div class="chat_people"> -->
						<!-- 								<div class="chat_ib"> -->
						<!-- 									<h5> -->
						<!-- 										[memberId] <span class="chat_date">09 / 25</span> -->
						<!-- 									</h5> -->
						<!-- 									<p>[chat_Content]</p> -->
						<!-- 								</div> -->
						<!-- 							</div> -->
						<!-- 						</div>  -->
					</div>
				</div>
				<input type="hidden" id="cmforRightList" value="${cmforRightList }">

				<div class="mesgs" id="mesgs" disabled="disabled">
					<div class="msg_history" id="msg_history">
						<input type="hidden" id="sessionId"
							value="${sessionScope.loginId}">
						<c:forEach var="rList" items="${cmforRightList }" >

							<c:if test="${rList.memberId!=sessionScope.loginId}">

								<div class="incoming_msg">
									<div class="received_msg">
										<div class="received_withd_msg">
											<p>${rList.message}</p>
											<input type="hidden" id="chatroom_seq"
												value="${rList.chatroom_seq}"> <span
												class="time_date"> ${rList.messageDate}</span>
										</div>
									</div>
								</div>
							</c:if>
							<c:if test="${rList.memberId==sessionScope.loginId}">

								<div class="outgoing_msg">
									<div class="sent_msg">
										<p>${rList.message}</p>
										<span class="time_date"> ${rList.messageDate}</span>
									</div>
								</div>
							</c:if>
						</c:forEach>
						<!-- 						<div class="incoming_msg"> -->
						<!-- 							<div class="received_msg"> -->
						<!-- 								<div class="received_withd_msg"> -->
						<!-- 									<p>장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트 -->
						<!-- 										장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트</p> -->
						<!-- 									<span class="time_date"> 18:47 | 09 / 26</span> -->
						<!-- 								</div> -->
						<!-- 							</div> -->
						<!-- 						</div> -->
						<!-- 						<div class="outgoing_msg"> -->
						<!-- 							<div class="sent_msg"> -->
						<!-- 								<p>...</p> -->
						<!-- 								<span class="time_date"> 18:47 | 09 / 26</span> -->
						<!-- 							</div> -->
						<!-- 						</div> -->
						<!-- 						<div class="incoming_msg"> -->
						<!-- 							<div class="received_msg"> -->
						<!-- 								<div class="received_withd_msg"> -->
						<!-- 									<p>[JSP로 페이지 내 id이동 해결하기, index js 에러 무엇]</p> -->
						<!-- 									<span class="time_date"> 18:47 | 09 / 26</span> -->
						<!-- 								</div> -->
						<!-- 							</div> -->
						<!-- 						</div> -->
					</div>
					<div class="type_msg">
						<div class="input_msg_write">
							<input type="text" class="write_msg" placeholder="메시지를 입력하세요." />
							<button class="msg_send_btn" id="msg_send_btn" type="button">
								<img src="/cloud/resources/images/paper-plane.png" alt=""
									class="plane">
								<!-- 							work here -->

							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- loader -->
	<%--   <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#6082cc"/></svg></div> --%>


	<!-- SCRIPTS -->
	<!-- JQuery -->
	<script type="text/javascript"
		src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="/cloud/resources/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript"
		src="/cloud/resources/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="/cloud/resources/js/mdb.min.js"></script>
	<!-- Initializations -->
	<!--<script type="text/javascript">
    // Animations initialization
    new WOW().init();

  </script>-->

	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</body>
</html>