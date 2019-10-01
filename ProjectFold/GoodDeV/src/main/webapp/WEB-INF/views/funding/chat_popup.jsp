<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
 
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
 
 <head>
    <!------ Include the above in your HEAD tag ---------->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!--<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" type="text/css" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
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
     
      $(function() {
            /*채팅 div랑 채팅 내용 input값 초기화*/
            var chatdiv = '';
            var ms = '';
            var people = '';
            var peopleinfo= '';
            
            
            /* '참가자 목록 +' 누르면 상대 추가 가능 */ 
            $('#h4').on('click', function(){
                //people = $(this, 'h5').val();
                peopleinfo += '<div class="chat_list">';
                peopleinfo += '<div class="chat_people">';
                peopleinfo += '<div class="chat_ib">';
                peopleinfo += '<h5>'+'[memberId=h5]'+ '<span class="chat_date">09 / 25</span></h5>';
                peopleinfo += '<p>[11111111111]</p>';
                peopleinfo += '</div> </div> </div>';
                
                $('.inbox_chat').prepend(peopleinfo);
                
                $('.chat_people').on('click', function() {
                    $(this).parent().css("background-color", "#ebebeb");
                    $('mesgs').attr('disabled', 'disabled');
                    $('.chat_people').not(this).parent().css("background-color", "#f8f8f8");
                });
                
                peopleinfo='';
                people='';
            });

            
            /*채팅방 선택 css 애니메이션(?)*/
            $('.chat_people').on('click', function() {
                $(this).parent().css("background-color", "#ebebeb");
                $('mesgs').attr('disabled', 'disabled');
                $('.chat_people').not(this).parent().css("background-color", "#f8f8f8");
            });
            
            /*채팅(하는 것처럼 보이는) ajax*/
            $('#msg_send_btn').on('click', function() {
                ms = $('.write_msg').val();
                if(ms.length == 0) {
                    alert('입력된 내용이 없습니다.');
                    return false;
                }
                alert(ms);

                chatdiv += '<div class = "outgoing_msg" >';
                chatdiv += '<div class = "sent_msg" >';
                chatdiv += '<p>' + ms + '</p>';
                chatdiv += '<span class = "time_date" >' + '18: 47 | 09 / 26' + '</span>';
                chatdiv += '</div> </div>';
                
                //$('#msg_history').append(chat);
                $(chatdiv).appendTo('#msg_history');
                /*채팅 div랑 채팅 내용 input값 초기화2*/
                chatdiv = '';
                ms = '';

            });

        });
    </script>

<title>Funding :: 1 : 1 Chat</title>
</head>
<body>

	<div class="container_chat" id="container_chat">
		<h3 class=" text-center"></h3>
		<div class="messaging">
			<div class="inbox_msg">
				<div class="inbox_people" id="">
					<div class="headind_srch">
					<div class="recent_heading">
                            <h4 class="h4" id="h4">참여자 목록 +</h4>
                        </div>
					</div>
					<div class="inbox_chat">
						<div class="chat_list">
							<div class="chat_people">
								<div class="chat_ib">
									<h5>
										[memberName] <span class="chat_date">09 / 25</span>
									</h5>
									<p>[chat_Content]</p>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="mesgs" id="mesgs" disabled="disabled">
					<div class="msg_history" id="msg_history">
						<div class="incoming_msg">
							<div class="received_msg">
								<div class="received_withd_msg">
									<p>[chat_Content]</p>
									<span class="time_date"> 18:47 | 09 / 26</span>
								</div>
							</div>
						</div>
						<div class="outgoing_msg">
							<div class="sent_msg">
								<p>장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트
									장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트
									장문 테스트 장문 테스트</p>
								<span class="time_date"> 18:47 | 09 / 26</span>
							</div>
						</div>
						<div class="incoming_msg">
							<div class="received_msg">
								<div class="received_withd_msg">
									<p>장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트
										장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트 장문 테스트</p>
									<span class="time_date"> 18:47 | 09 / 26</span>
								</div>
							</div>
						</div>
						<div class="outgoing_msg">
							<div class="sent_msg">
								<p>...</p>
								<span class="time_date"> 18:47 | 09 / 26</span>
							</div>
						</div>
						<div class="incoming_msg">
							<div class="received_msg">
								<div class="received_withd_msg">
									<p>[JSP로 페이지 내 id이동 해결하기, index js 에러 무엇]</p>
									<span class="time_date"> 18:47 | 09 / 26</span>
								</div>
							</div>
						</div>
					</div>
					<div class="type_msg">
						<div class="input_msg_write">
							<input type="text" class="write_msg" placeholder="메시지를 입력하세요." />
							<button class="msg_send_btn" id="msg_send_btn" type="button"><img src="/cloud/resources/images/paper-plane.png" alt="" class="plane">
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<!-- 	 <!-- loader --> -->
<%--   <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#6082cc"/></svg></div> --%>
	

<!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="/cloud/resources/js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="/cloud/resources/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="/cloud/resources/js/mdb.min.js"></script>
    <!-- Initializations -->
    <!--<script type="text/javascript">
    // Animations initialization
    new WOW().init();

  </script>-->

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</body>
</html>