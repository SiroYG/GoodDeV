<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>Search :: </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="/cloud/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/animate.css">
    
    <link rel="stylesheet" href="/cloud/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="/cloud/resources/css/aos.css">
    <link rel="stylesheet" href="/cloud/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="/cloud/resources/css/flaticon.css">
    <link rel="stylesheet" href="/cloud/resources/css/icomoon.css">
    <link rel="stylesheet" href="/cloud/resources/css/style.css">
    <link rel="stylesheet" href="/cloud/resources/css/search.css">
    
    <script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
	<script src="/cloud/resources/js/jquery-ui.min.js"></script>
   
    <script>
	var pageSu;
	
    $(function(){
 		   pageSu = 9;
 		   patentTable(pageSu);   
 			
 		    
 		
 		   
 	    	$('#patentBtn').on('click',function(){
 	    		var type = $('#patentType').val();
 	    		if(type =='none'){
 	    			alert('산업분야를 클릭하세요!');
 	    			return false;
 	    		}else{
 	    			patentTable(pageSu); 
 	    		}
 	    	})
 	    	
 	    	
 	    	$('#permitBtn').on('click',function(){
 	    		var memberId = $('#memId').val();
 	    		var patentNum =$('#patentNum').val();
 	    		var itemNum = $('#item-option').val();
 	    		var upload = $('#upload').val();
 	    		var upload1 = $('#upload1').val();
 	    		var formData = new FormData($('#permitForm')[0]);
 	    		var total ={
 	    			"memberId"	: memberId,
 	    			"patentNum"	: patentNum,
 	    			"itemNum"	: itemNum,
 	    			"upload"	: upload,
 	    			"upload1"	: upload1
 	    		}
 	    		if(upload==''||upload.length==0&&upload1==''||upload1.length==0){
 	    			alert('파일을 반드시 첨부하세요!')
 	    			return false;
 	    		}
 	    	
 	    		 $.ajax({
 	    			url : 'permitForm',
 	    			type : 'post',
 	    			enctype : 'multipart/form-data',
 	    			processData : false,
 	    			contentType : false,
 	    			data : formData,
 	    			success : function(res){
 	    				if(res=='success'){
 	    					alert('성공');
 	    					$('#exampleModal').modal('hide');
 	    				}else{
 	    					alert('실패')
 	    				}
 	    			}
 	    		})	 
 	    	})
 		   
    });
    
    function selectIt(){
    	var memberId = $('#memId').val();
    	$.ajax({
    		url : 'memberItemNum',
    		type : 'get',
    		data :	{
    			memberId : memberId
    		},
    		success : function(res){
    			var tag ="";
    			$.each(res,function(i,item){
    				tag += '<option value="'+item.itemNum+'">'+item.itemName+'</option>'
    			})
    			$('#item-option').html(tag);
    		}
    	})
    	
    }
    
    function checking(){	
    	var patentNum = $(this).attr('data-value');
    	
    	$.ajax({
	 			url  : 'selectPatent',
	 			type : 'get',
	 			data : {
	 				patentNum : patentNum
	 			},
	 			success : function(res){
	 				if(res!=null){
	 					$("#patentNum").val(res);	
	 				}else{
	 					alert('에러!!');
	 				}
	 				
	 			}
	   	})  
		
    
    }   
    
    
    
    jQuery(document).on('click', '#rightBtn', function(){
 	   			pageSu += 10;
 	   			$.ajax({
 	   				url: 'patentSu',
 	   				type : 'get',
 	   				success : function(res){
 	   					if(pageSu<res){
 	   						patentTable(pageSu); 
 	   					}else {	
 	   						pageSu = 9;
 	   						patentTable(pageSu);
 	   						//ex) 172개 일때, 170개는 보여지지만 2개는 아직 안보임;;
 	   					}
 	   				}
 	   			})
 	   }); 
    
    jQuery(document).on('click', '#leftBtn', function(){
 	 	  		
 	   			pageSu -= 10;
 	 	
 	 	  		if(pageSu>0){
 	 	  			patentTable(pageSu); 
 	 	  		}else{
 	 	  			pageSu = 9;
 	 	  			alert('응 첫페이지..');
 	 	  			patentTable(pageSu); 
 	 	  		}
 	 	  		
 });
    
   
    function patentTable(pageSu){
 	    var searchWord =$('#searchWord').val()	
 	   	var searchItem =$('#searchItem').val()
 	   	var patentType =$('#patentType').val()
 	   
 	   $.ajax({
 	   		url : 'patentTable',
 	   		type : 'get',
 	   		data : {
 	   			 pageSu : pageSu
 	   			,searchWord : searchWord
 	   			,searchItem : searchItem
 	   			,patentType : patentType
 	   		},
 	   		success : output	   		
 	   	})
 	   
 	   
    }
    function output(res){
 	   	var tag = '';
 	   /* '<table class="pTable">' */
        tag += '<table class="table">'
        tag += '<caption class="table_title">검색 결과</caption>'
        tag += '<thead class="navy">' 
        tag += '<tr>'   
        tag += '<th scope="col">No.</th>'        
        tag += '<th scope="col">분류</th>'       
        tag += '<th scope="col">특허명</th>'    
        tag += '<th scope="col">특허설명</th>'    
        tag += '<th scope="col">특허 보유자</th>'    
   	    tag += '<th scope="col">등록날짜</th>'    
   	    tag += '</tr>'
    	   tag += '</thead>' 
    	   tag += '<tbody>'  
    		   
    		   

    	   $.each(res,function(i,item){
    		   tag += '<tr>'
        		   var patentNum = item.patentNum;
        			var patenttype = item.patenttype;
        			var patentName = item.patentName;
        			var patentContent = item.patentContent;
        			var patentHolderName = item.patentHolderName;
        			
        			if(patentNum.length >= 10){
        				//patentNum = patentNum.split("-",2)+"...";
        				//patentNum = patentNum.substr(0,8)+"...";
        			 tag += '<th scope="row" name="특허번호">'+patentNum+'</th>'
        			}
        			if(patenttype.length >= 8){
        				//patenttype = patenttype.substr(0,7)+"...";
        				tag += '<td name="분류" >'+patenttype+'</td>'
        			}
        			if(patentName.length >= 15){
        				patentName = patentName.substr(0,26)+"...";
        			    tag += '<td name="특허명" ><b>'+patentName.split("(", 1)+'</b></td>'
        			}
        			/* if(patentContent.length >= 20){
        				patentContent = patentContent.substr(0,40)+"...";
        			    tag += '<td name="특허설명" ><b>'+patentContent+'</b></td>'
        			} */
        			if(patentHolderName.length >= 5){
        				patentHolderName = patentHolderName.substr(0,4)+"...";
        			    tag += '<td name="특허 보유자" >'+patentHolderName+'</td>'	
        			}

        			else{
        				tag += '<tr>'
        		 	   	  	tag += '<th scope="row" name="특허번호">'+patentNum+'</th>'        
        		    	   		tag += '<td name="분류" >'+patenttype+'</td>'
        		    	   		tag += '<td name="특허명" ><b>'+patentName+'</b></td>'
        		    	   		/* tag += '<td name="특허설명" ><b>'+patentContent+'</b></td>' */
        		    	   		tag += '<td name="특허 보유자" >'+patentHolderName+'</td>'	
        			}
     
        	   	if(item.patentRegDate != null){
        	   		tag += '<td name="등록날짜">'+item.patentRegDate+'</td>'
        	   	}else{
        	   		tag += '<td >[등록 진행중]</td>'
        	   	}
        	   		
        	   		tag += '<td name="서식파일보기" ><button type="button" class="pri" data-value="'+item.patentNum+'" data-toggle="modal" data-target="#exampleModal">사용 허가 신청</button></td>'            
        	   		//인터셉터 처리
        	   		tag += '</tr>'        
        	   	})
        	   
        	    tag += '</tbody>'
        	    tag += '</table>' 
        	    tag += '<br>'
        		tag += '<div class="tri-btn">'
        		tag += '<button id="leftBtn" class="btn btn-primary">◀</button>'	
        	    tag += '<button id="rightBtn" class="btn btn-primary">▶</button>'	
        	    tag +=	'</div>'
        $('#section-bar-patent').html(tag);	
    	$('.pri').on('click',checking);    
    	$('.pri').on('click',selectIt);
    }

    
    function loginGo(){
    	window.location.href="/cloud/member/gologin";
    }
    
    function signGo(){
    	window.location.href="/cloud/member/gosign";
    }
    
    function searchGO(){
    	window.location.href="/cloud/search/searchGo";
    }
    
    </script>
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="/cloud/home">SupporterS</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	          <li class="nav-item"><a href="/cloud/home" class="nav-link"><span>Home</span></a></li>
	          <li class="nav-item"><a href="/cloud/member/goPatent" class="nav-link"><span>특허 / 검색</span></a></li>
	          <li class="nav-item"><a href="/cloud/board/boardListForm" class="nav-link"><span>Q & A 게시판</span></a></li>
	          <li class="nav-item"><a href="/cloud/survey/surveyListForm" class="nav-link"><span>블라인드 테스트</span></a></li>
	          <li class="nav-item"><a href="/cloud/funding/gofunding" class="nav-link"><span>크라우드 펀딩</span></a></li>
	          <li class="nav-item"><a href="/cloud/member/Mypage" class="nav-link"><span>마이페이지</span></a></li>
	  			 <c:if test="${sessionScope.loginId==null}">
					<li style="margin-left: 20px;" class="nav-item cta"><a
						href="/cloud/member/gologin" class="nav-link">로그인</a></li>
					<li style="margin-left: 20px;" class="nav-item cta"><a
						href="/cloud/member/gosign" class="nav-link">회원가입</a></li>
				</c:if>
				<c:if test="${sessionScope.loginId!=null}">
					<li style="margin-left: 20px;" class="nav-item cta"><a
							 class="nav-link">${sessionScope.loginName} ${sessionScope.loginType}님, 로그아웃 </a></li>
					<!-- <li style="margin-left: 20px;" class="nav-item cta"><a
						href="/cloud/member/logout" class="nav-link">로그아웃</a></li> -->
				</c:if>
				 </ul>
	      </div>
	    </div>
	  </nav>


	  <section class="hero-wrap hero-wrap-2" style="background-image: url('/cloud/resources/images/about_10-1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5 text-center">
            <h1 class="mb-3 bread">Search Patent</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="home">Home <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a href="#">검색 분류 <i class="ion-ios-arrow-forward"></i></a></span> <span>특허 검색 <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
		

<section class="ftco-section" id="blog-section">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-10 heading-section text-center ftco-animate">
            <span class="subheading"></span>
            <h2 class="mb-4">특허 검색</h2>
            <p>산업분야 검색, 단어 검색 등을 지원합니다.</p><br>
            <hr class="hr_navy">
          </div>
        </div>
          <div class="main_table">
   <div class="search-container">
  <form>
       <label for="patent-type" class="col-sm-2 col-form-label">특허 산업분야</label>
                        <select id="patentType" name="patentType">
                            <option value="none" selected>[필수선택] 산업분야를 선택하세요</option>
                            <option value="">고무 제품 및 플라스틱 제품 제조업</option>
                            <option value="">기초 화학물질 제조업</option>
                            <option value="">마그네틱 및 광학 매체 제조업</option>
                            <option value="">반도체 제조업</option>
                            <option value="">안경, 사진장비 및 기타 광학기기 제조업</option>
                            <option value="patentType1">영상 및 음향기기 제조업</option>
                            <option value="">의료용 기기 제조업</option>
                            <option value="">자동차 제조업</option>
                            <option value="">전구 및 조명장치 제조업</option>
                            <option value="">전동기, 발전기 및 전기 변환, 공급, 제어 장치 제조업</option>
                            <option value="">전자부품 제조업</option>
                            <option value="">절연선 및 케이블 제조업</option>
                            <option value="">컴퓨터 및 주변장치 제조업</option>
                            <option value="patentType2">컴퓨터 프로그래밍 및 정보서비스업</option>
                            <option value="patentType3">통신 및 방송 장비 제조업</option>
                            <option value="">특수 기계 제조업</option>
                            <option value="">기타 전기장비 제조업</option>
                            <option value="">기타 제품 제조업</option>
                            <option value="etc">기타 산업분야</option>
                        </select>&nbsp;&nbsp;&nbsp;
      <label for="patent-option" class="col-sm-2 col-form-label">특허 검색옵션</label>
      <select id="searchItem" name="searchItem">
      <option value="onlypatenttype" >구분</option>
      	<option value="onlypatenttype" >특허 산업분야만 검색</option>
          <option value="patentName" >특허명</option>
          <option value="patentHolderName" >특허 보유자명(개인/기업)</option>
          <!-- <option value="patentContent" >특허설명</option> -->
      </select><br><br>
      <label for="patent-word" class="col-sm-2 col-form-label">검색</label>
      <input type="text" class="patent-word" name="searchWord" id="searchWord">&nbsp;&nbsp;&nbsp;
      <button type="button" id="patentBtn" class="btn btn-outline-primary btn-rounded waves-effect">검색하기</button>
  </form>
  <hr class="hr_navy">
   </div>
        <div class="search-result" id="section-bar-patent">
 
              <!--페이징 & 검색-->
  <div class="page-center">
  
  <nav>
  <ul class="pagination justify-content-center">
    <li class="page-item">
      <a class="page-link" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
    <li class="page-item active"><a class="page-link">1</a></li>
    <li class="page-item"><a class="page-link">2</a></li>
    <li class="page-item"><a class="page-link">3</a></li>
    <li class="page-item"><a class="page-link">4</a></li>
    <li class="page-item"><a class="page-link">5</a></li>
    <li class="page-item">
      <a class="page-link" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
  </ul>
</nav>
      </div>
        </div>
         <hr class="hr_navy">
          </div>
          </div>
    </section>
		

    <footer class="ftco-footer ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">About <span>SupporterS</span></h2>
              <p>창업자가 궁금해하는 것, <br>필요로 하는 것, <br>필요로 할 것들을 최대한 지원하기 위해 만든 사이트입니다.</p>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">바로가기</h2>
              <ul class="list-unstyled">
                <li><a href="/cloud/home"><span class="icon-long-arrow-right mr-2"></span>Home</a></li>
                <li><a href="/cloud/member/goPatent"><span class="icon-long-arrow-right mr-2"></span>검색 및 특허 관련</a></li>
                <li><a href="/cloud/board/boardListForm"><span class="icon-long-arrow-right mr-2"></span>Q & A 게시판</a></li>
                <li><a href="/cloud/survey/surveyListForm"><span class="icon-long-arrow-right mr-2"></span>블라인드 테스트</a></li>
                <li><a href="/cloud/funding/fundingListForm"><span class="icon-long-arrow-right mr-2"></span>크라우드 펀딩</a></li>
                <li><a href="/cloud/home#contact-section"><span class="icon-long-arrow-right mr-2"></span>공식 연락처</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">검색 및 특허 관련</h2>
              <ul class="list-unstyled">
                <li><a href="/cloud/member/searchGo"><span class="icon-long-arrow-right mr-2"> 특허 검색</span></a></li>
                <li><a href="/cloud/member/"><span class="icon-long-arrow-right mr-2"> 제품 검색</span></a></li>
                 <li><a href="/cloud/member/goPatent"><span class="icon-long-arrow-right mr-2"> 특허 출원 신청</span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">찾아오는 길</h2>
            	<div class="block-23 mb-0">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">4th floor, 513, Yeongdong-daero, Gangnam-gu, Seoul, Republic of Korea</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+82 02 6000 0114</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    
   <script src="/cloud/resources/js/jquery.min.js"></script>
  <script src="/cloud/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/cloud/resources/js/popper.min.js"></script>
  <script src="/cloud/resources/js/bootstrap.min.js"></script>
  <script src="/cloud/resources/js/jquery.easing.1.3.js"></script>
  <script src="/cloud/resources/js/jquery.waypoints.min.js"></script>
  <script src="/cloud/resources/js/jquery.stellar.min.js"></script>
  <script src="/cloud/resources/js/owl.carousel.min.js"></script>
  <script src="/cloud/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="/cloud/resources/js/aos.js"></script>
  <script src="/cloud/resources/js/jquery.animateNumber.min.js"></script>
  <script src="/cloud/resources/js/scrollax.min.js"></script>
  
  <script src="/cloud/resources/js/main.js"></script>

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

<!-- Modal -->
    <div class="modal fade show" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLabel">특허 사용 허가 신청서</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/cloud/member/permitForm" method="post" id="permitForm">
              <div class="form-group">
                <label for="appointment_name" class="text-black">신청인</label>
                <input type="text" class="form-control" name="memberId" value="${sessionScope.loginId}" id="memId" placeholder="${sessionScope.loginId}" readonly="readonly">
              </div>
              <div class="form-group">
                <label for="appointment_patentnum" class="text-black">특허번호</label>
                <input type="text" class="form-control" name="patentNum" value="" id="patentNum" placeholder="" readonly="readonly">
              </div>
              
              <label for="item-option" class="text-black">특허 검색옵션<label>
              <select id="item-option" name="itemNum">
              <option value="none" selected>특허에 사용할 제품/서비스를 선택해주세요</option>
              <!--  <option value="">itemName_1</option>-->
              </select><br><br>
              
               <div class="form-group">
                    <label for="appointment_file" class="text-black">특허 사용 신청서</label>
                    <input type="file" class="form-control" name="upload" id="upload" multiple />
                  </div>
                  <div class="form-group">
                    <label for="appointment_file2" class="text-black">특허 사용 허가서</label>
                    <input type="file" class="form-control" name="upload1" id="upload1" multiple />
                  </div>
            </form>
            </div>
            <div class="modal-footer">
                <button type="button" id="permitBtn" class="btn btn-outline-info">신청하기</button>
                <button type="button" class="btn btn-outline-success" data-dismiss="modal">닫기</button>
            </div>
        </div>
        
        
    </div>
</div>
    
  </body>
</html>