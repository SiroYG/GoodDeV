<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String name = (String)request.getAttribute("name");
    String email = (String)request.getAttribute("email");
    String phone = (String)request.getAttribute("phone");
    String address = (String)request.getAttribute("address");
//     int totalPrice = (int)request.getAttribute("totalPrice");    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
  <script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
  <script src="/cloud/resources/js/jquery-ui.min.js"></script>
</head>
<body>
    <script>
    $(function(){
        var IMP = window.IMP; // 생략가능
        IMP.init('imp81806238'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
        
        IMP.request_pay({
            pg : 'html5_inicis', //ActiveX 결제창은 inicis를 사용
            pay_method : 'card', //card(신용카드), trans(실시간계좌이체), vbank(가상계좌), phone(휴대폰소액결제)
            merchant_uid : 'merchant_' + new Date().getTime(), //상점에서 관리하시는 고유 주문번호를 전달
            name : '${payment.itemname}',
            amount : '${payment.amount}',
            buyer_email : '${payment.email}',
            buyer_name : '${payment.memberId}',
            buyer_tel : '${payment.tel}', //누락되면 이니시스 결제창에서 오류
            buyer_addr : '${payment.addr}'
        }, function(rsp) {
        	alert(rsp.success);
            if ( rsp.success ) {
            		var msg = '결제가 완료되었습니다.';
        				msg += '고유ID : ' + rsp.imp_uid;
       					msg += '상점 거래ID : ' + rsp.merchant_uid;
        				msg += '결제 금액 : ' + rsp.paid_amount;
        				msg += '카드 승인번호 : ' + rsp.apply_num;
            			alert(msg);
            			
   						$.ajax({
   							url : '/cloud/funding/devmemberPrice',
   							type : 'get',
   							data : {
   								amount : rsp.paid_amount,
   								memberId : '${payment.memberId}',
   								crowdfundingNum : '${payment.crowdfundingNum}'
   							},
   							success : function(res){
   								if(res=='success'){
   								 	alert("price 성공");
   								}else{
   									alert("price 실패");
   								}
   								
   							}
   						})
   						alert(rsp.paid_amount);
            			
            			
            			window.close();
            			
            		} else {       			
            			var msg = '결제에 실패하였습니다.';
                		msg += '에러내용 : 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.' ;
            			alert(msg);    
            			window.close();
            		}
        })
        
        });
        
    </script>
</body>
</html>
