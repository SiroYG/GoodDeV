<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>Crowd Funding :: All List</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="/cloud/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/animate.css">
    
    <link rel="stylesheet" href="/cloud/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/cloud/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="/cloud/resources/css/aos.css">

    <link rel="stylesheet" href="/cloud/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="/cloud/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/cloud/resources/css/jquery.timepicker.css">
    
    <link rel="stylesheet" href="/cloud/resources/css/flaticon.css">
    <link rel="stylesheet" href="/cloud/resources/css/icomoon.css">
    <link rel="stylesheet" href="/cloud/resources/css/style.css">
    <link rel="stylesheet" href="/cloud/resources/css/funding.css">
    
    <script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
    <script src="/cloud/resources/js/jquery-ui.min.js"></script>
    
    <script>
    var pageSu;
    $(function(){
 	
 	   $('#patentList').on('click',function(){
 		   pageSu = 9;
 		   patentTable(pageSu);   
 	   });
 	
 	
 	   

    });
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
    
    /*
    		참고용
    		jQuery(document).on('click', '#searchBtn', function(){
 		var searchWord  =$('#').val();
 		$.ajax({
 			url : '' ,
 			type : 'get',
 			data : {
 				
 			}
 			
 		})
 		 
 		
    });*/
   
    function patentTable(pageSu){
 	   /* var searchWord =$().val()	
 	   	  var patentDetail =$().val()
 	   	  var patentType  =$().val()
 	   */
 	   $.ajax({
 	   		url : 'patentTable',
 	   		type : 'get',
 	   		data : {
 	   			pageSu : pageSu
 	   		//	,searchWord : searchWord
 	   		//	,patentDetail : patentDetail
 	   		//	,patentType : patentType
 	   		},
 	   		success : output	   		
 	   	})
 	   
 	   
    }
    function output(res){
 	   var tag = '';
 	    tag += '<input id="seachWord" type="text" name="seachWord" /><button id="searchBtn" type="button">검색</button>'
        tag += '<table class="pTable">'
        tag += '<caption class="table_title"><b>보유 및 사용 중인 특허 목록</b></caption>'
        tag += '<thead class="navy">' 
        tag += '<tr>'   
        tag += '<th scope="col">특허 번호</th>'        
        tag += '<th scope="col">분류</th>'       
        tag += '<th scope="col">특허명</th>'    
        tag += '<th scope="col">사용구분</th>'    
        tag += '<th scope="col">등록날짜</th>'    
   	    tag += '<th scope="col">서식파일 보기</th>'    
   	    tag += '</tr>'
    	   tag += '</thead>' 
    	   tag += '<tbody>'  
    	   $.each(res,function(i,item){
 	   	   	tag += '<tr>'
 	   	  	tag += '<th scope="row" name="특허번호">'+item.patentNum+'</th>'        
    	   		tag += '<td name="분류">'+item.patenttype+'</td>'
    	   		tag += '<td name="특허명">'+item.patentName+'</td>'
    	   		tag += '<td name="사용구분"></td>'
    	   	if(item.patentRegDate != null){
    	   		tag += '<td name="등록날짜">'+item.patentRegDate+'</td>'
    	   	}else{
    	   		tag += '<td>특허등록 진행중입니다.</td>'
    	   	}
    	   		tag += '<td name="서식파일보기"></td>'            
    	   		tag += '</tr>'        
    	   	})
    	   
    	   tag += '</tbody>'	
    	   tag += '<tr><td>'
    	   tag += '<button id="leftBtn">◀</button>'	
    	   tag += '<button id="rightBtn">▶</button>'	
    	   tag += '</td></tr>'
    	   tag += '</table>' 
    
        $('#section-bar-patent').html(tag);	
    }
    
    </script>
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
	  
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index">Mainlogo</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	          <li class="nav-item"><a href="home" class="nav-link"><span>Home</span></a></li>
	          <li class="nav-item"><a href="gosearchmenu" class="nav-link"><span>ê²ì</span></a></li>
	          <li class="nav-item"><a href="goBoardlist" class="nav-link"><span>Q & A ê²ìí</span></a></li>
	          <li class="nav-item"><a href="gosurveylist" class="nav-link"><span>ë¸ë¼ì¸ë íì¤í¸</span></a></li>
	          <li class="nav-item"><a href="gofundinglist" class="nav-link"><span>í¬ë¼ì°ë íë©</span></a></li>
	          <li class="nav-item"><a href="gomyPage" class="nav-link"><span>ë§ì´íì´ì§</span></a></li>
	          <li style="margin-left: 20px; " class="nav-item cta"><a href="gologin" class="nav-link" data-toggle="modal" data-target="#modalAppointment" style="text-decoration: none;">ë¡ê·¸ì¸</a></li>
              <li style="margin-left: 20px;" class="nav-item cta"><a href="gosignin" class="nav-link" data-toggle="modal" data-target="#modalAppointment" style="text-decoration: none;">íìê°ì</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>

	  <section class="hero-wrap hero-wrap-2" style="background-image: url('images/about_7.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5 text-center">
            <h1 class="mb-3 bread">Crowd Funding</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="home">Home <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a href="blog.html">í¬ë¼ì°ë íë© <i class="ion-ios-arrow-forward"></i></a></span> <span>ì§íì¤ì¸ ë¦¬ì¤í¸ <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
		

<section class="ftco-section" id="">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-10 heading-section text-center ftco-animate">
            <span class="subheading">ìë¡ì´ ìì</span>
            <h2 class="mb-4">í¬ë¼ì°ë íë©</h2>
            <p>ìë¹ìì í¨ê» ì¬ìì ììí  ì ììµëë¤.</p>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
          		<div class="text">
          			<h3 class="heading"><a href="single.html">All you want to know about industrial laws</a></h3>
          		</div>
              <a href="single.html" class="block-20" style="background-image: url('images/image_1.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                <div class="d-flex align-items-center mt-4 meta">
	                <p class="mb-0"><a href="list.html" class="btn btn-primary">ë ë³´ê¸° <span class="ion-ios-arrow-round-forward"></span></a></p>
	                <p class="ml-auto mb-0">
	                	<a href="#" class="mr-2">comments </a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 27</a>
	                </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
          		<div class="text">
          			<h3 class="heading"><a href="single.html">All you want to know about industrial laws</a></h3>
          		</div>
              <a href="single.html" class="block-20" style="background-image: url('images/image_2.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                <div class="d-flex align-items-center mt-4 meta">
	                <p class="mb-0"><a href="list.html" class="btn btn-primary">ë ë³´ê¸° <span class="ion-ios-arrow-round-forward"></span></a></p>
	                <p class="ml-auto mb-0">
	                	<a href="#" class="mr-2">comments</a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 38</a>
	                </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
          		<div class="text">
          			<h3 class="heading"><a href="single.html">All you want to know about industrial laws</a></h3>
          		</div>
              <a href="single.html" class="block-20" style="background-image: url('images/image_3.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                <div class="d-flex align-items-center mt-4 meta">
	                <p class="mb-0"><a href="list.html" class="btn btn-primary">ë ë³´ê¸° <span class="ion-ios-arrow-round-forward"></span></a></p>
	                <p class="ml-auto mb-0">
	                	<a href="#" class="mr-2">comments</a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 100+</a>
	                </p>
                </div>
              </div>
            </div>
          </div>
          
        </div>
        
        
        <div class="row d-flex">
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
          		<div class="text">
          			<h3 class="heading"><a href="single.html">All you want to know about industrial laws</a></h3>
          		</div>
              <a href="single.html" class="block-20" style="background-image: url('images/image_1.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                <div class="d-flex align-items-center mt-4 meta">
	                <p class="mb-0"><a href="list.html" class="btn btn-primary">ë ë³´ê¸° <span class="ion-ios-arrow-round-forward"></span></a></p>
	                <p class="ml-auto mb-0">
	                	<a href="#" class="mr-2">comments </a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 27</a>
	                </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
          		<div class="text">
          			<h3 class="heading"><a href="single.html">All you want to know about industrial laws</a></h3>
          		</div>
              <a href="single.html" class="block-20" style="background-image: url('images/image_2.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                <div class="d-flex align-items-center mt-4 meta">
	                <p class="mb-0"><a href="list.html" class="btn btn-primary">ë ë³´ê¸° <span class="ion-ios-arrow-round-forward"></span></a></p>
	                <p class="ml-auto mb-0">
	                	<a href="#" class="mr-2">comments</a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 38</a>
	                </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
          		<div class="text">
          			<h3 class="heading"><a href="single.html">All you want to know about industrial laws</a></h3>
          		</div>
              <a href="single.html" class="block-20" style="background-image: url('images/image_3.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                <div class="d-flex align-items-center mt-4 meta">
	                <p class="mb-0"><a href="list.html" class="btn btn-primary">ë ë³´ê¸° <span class="ion-ios-arrow-round-forward"></span></a></p>
	                <p class="ml-auto mb-0">
	                	<a href="#" class="mr-2">comments</a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 100+</a>
	                </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        
        <div class="row d-flex">
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
          		<div class="text">
          			<h3 class="heading"><a href="single.html">All you want to know about industrial laws</a></h3>
          		</div>
              <a href="single.html" class="block-20" style="background-image: url('images/image_1.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                <div class="d-flex align-items-center mt-4 meta">
	                <p class="mb-0"><a href="list.html" class="btn btn-primary">ë ë³´ê¸° <span class="ion-ios-arrow-round-forward"></span></a></p>
	                <p class="ml-auto mb-0">
	                	<a href="#" class="mr-2">comments </a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 27</a>
	                </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
          		<div class="text">
          			<h3 class="heading"><a href="single.html">All you want to know about industrial laws</a></h3>
          		</div>
              <a href="single.html" class="block-20" style="background-image: url('images/image_2.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                <div class="d-flex align-items-center mt-4 meta">
	                <p class="mb-0"><a href="list.html" class="btn btn-primary">ë ë³´ê¸° <span class="ion-ios-arrow-round-forward"></span></a></p>
	                <p class="ml-auto mb-0">
	                	<a href="#" class="mr-2">comments</a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 38</a>
	                </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
          		<div class="text">
          			<h3 class="heading"><a href="single.html">All you want to know about industrial laws</a></h3>
          		</div>
              <a href="single.html" class="block-20" style="background-image: url('images/image_3.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                <div class="d-flex align-items-center mt-4 meta">
	                <p class="mb-0"><a href="list.html" class="btn btn-primary">ë ë³´ê¸° <span class="ion-ios-arrow-round-forward"></span></a></p>
	                <p class="ml-auto mb-0">
	                	<a href="#" class="mr-2">comments</a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 100+</a>
	                </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <a href="Board_Write.html" class="btnss btn-3-navy"><span class="white">íë© ì§ííê¸°</span></a><br><br>
      </div>
      
       <!--íì´ì§ & ê²ì-->
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
<form action="" method="post" class="search-form" id="search-form">
<!--Blue select-->
<select name="searchItem" class="searchItem">
 <option value="all" selected>ë¶ë¥</option>
  <option value="title" selected>ì ëª©</option>
  <option value="content">ë´ì©</option>
  <option value="id">ìì±ì</option>
</select>

<input type="text" name="searchWord" class="searchWord" placeholder="  Search">
<button type="button" class="btn btn-outline-primary btn-rounded waves-effect">ê²ìíê¸°</button>
    </form>
    
      
    </section>
		

    <footer class="ftco-footer ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">About <span>Neutral</span></h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Links</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Home</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>About</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Practice Areas</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Attorneys</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Blog</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Practice Areas</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Family Law</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Business Law</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Insurance Law</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Criminal Law</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Drug Offenses</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Property Law</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Employment Law</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-0">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
	            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-4">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
  <script src="/cloud/resources/js/bootstrap-datepicker.js"></script>
  <script src="/cloud/resources/js/jquery.timepicker.min.js"></script>
  <script src="/cloud/resources/js/scrollax.min.js"></script>
  
  <script src="/cloud/resources/js/main.js"></script>
    
  </body>
</html>