function patent(){   
	var pageSu;
    $(function(){
 		   pageSu = 9;
 		   patentTable(pageSu);   

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
    
  
   
    function patentTable(pageSu){
 	
 	   $.ajax({
 	   		url : 'patentTable',
 	   		type : 'get',
 	   		data : {
 	   			pageSu : pageSu
 	   		},
 	   		success : output	   		
 	   	})
 	   
 	   
    }
    function output(res){
 	   	var tag = '';
        tag += '<table class="pTable">'
        tag += '<caption class="table_title"><b>보유 및 사용 중인 특허 목록</b></caption>'
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
 	   	   		tag += '<th scope="row" name="특허번호">'+item.patentNum+'</th>'        
    	   		tag += '<td name="분류">'+item.patentType+'</td>'
    	   		tag += '<td name="특허명">'+item.patentName+'</td>'
    	   		tag += '<td name="특허설명">'+item.patentContent+'</td>'
    	   		tag += '<td name="특허 보유자">'+item.patentHolderName+'</td>'	
 
    	   	if(item.patentRegDate != null){
    	   		tag += '<td name="등록날짜">'+item.patentRegDate+'</td>'
    	   	}else{
    	   		tag += '<td>특허등록 진행중입니다.</td>'
    	   	}
    	   		tag += '<td name="서식파일보기"></td>'            
    	   		tag += '</tr>'        
    	   	})
    	   
    	   tag += '</tbody>'	
    	  /* tag += '<tr><td>'
    	   tag += '<button id="leftBtn">◀</button>'	
    	   tag += '<button id="rightBtn">▶</button>'	
    	   tag += '</td></tr>'*/
    	    tag += '</table>' 
    		tag += '<div class="tri-btn">'
    		tag += '<button id="leftBtn" class="btn btn-primary">◀</button>'	
    	    tag += '<button id="rightBtn" class="btn btn-primary">▶</button>'	
    	    tag +=	'</div>'
        $('#section-bar-patent').html(tag);	
    }
}

function item(){
	var pageSu;
    $(function(){
 		   pageSu = 9;
 		   itemTable(pageSu);   

    });
    
    jQuery(document).on('click', '#riBtn', function(){
 	   			pageSu += 10;
 	   			alert(pageSu);
 	   			$.ajax({
 	   				url: 'itemSu',
 	   				type : 'get',
 	   				success : function(res){
 	   					if(pageSu<res){
 	   					itemTable(pageSu); 
 	   					}else {
 	   						pageSu = 9;
 	   					itemTable(pageSu);
 	   						//ex) 172개 일때, 170개는 보여지지만 2개는 아직 안보임;;
 	   					}
 	   				}
 	   			})
 	   }); 
    
    jQuery(document).on('click', '#leBtn', function(){
 	 	  		
 	   			pageSu -= 10;
 	 	
 	 	  		if(pageSu>0){
 	 	  		itemTable(pageSu); 
 	 	  		}else{
 	 	  			pageSu = 9;
 	 	  			alert('응 첫페이지..');
 	 	  		itemTable(pageSu); 
 	 	  		}
 	 	  		
 });
    jQuery("#section-bar-item").on('click', '#itemSign', function(){
    		
	  		window.location.href="/cloud/item/goItemWrite";
			
});
    
    
   
    function itemTable(pageSu){
 	 
 	   $.ajax({
 	   		url : 'itemTable',
 	   		type : 'get',
 	   		data : {
 	   			pageSu : pageSu
 	   		},
 	   		success : output	   		
 	   	})
 	   
 	   
    }
    
  
    function output(res){
 	   var tag = '';
        tag += '<table class="iTable">'
        tag += '<caption class="table_title"><b>시제품 및 출시품 목록</b></caption>'
        tag += '<div class="cap-btn">'
        tag += '<a href="#" id="itemSign" class="btns btn-3">제품 등록</a>&nbsp;&nbsp;&nbsp;'
        tag += '<a href="/cloud/item/goItemHistory" class="btns btn-3-green">제품 수정 기록 보기</a>'
        tag += '</div>'
        tag += '<thead class="navy">' 
        tag += '<tr>'   
        tag += '<th scope="col">Item No.</th>'        
        tag += '<th scope="col">분류</th>'       
        tag += '<th scope="col">제품명</th>'    
        tag += '<th scope="col">제품 설명</th>'     
   	    tag += '</tr>'
   	    tag += '</thead>' 
    	tag += '<tbody>'
    	   $.each(res,function(i,item){
    		if(item.itemType != 'none'){   
 	   	   	tag += '<tr>'
 	   	  	tag += '<th scope="row" name="아이템번호">'+item.itemNum+'</th>'        
    	   		tag += '<td name="분류">' + item.itemType + '</td>'
    	   		tag += '<td name="제품명"><a href="/cloud/item/goItemDetail?itemNum='+item.itemNum+'" class="mypage-link">' + item.itemName + '</a></td>'
    	   		tag += '<td name="제품 내용">'+item.itemContent+'</td>'
    	   		tag += '</tr>'
    		}
    	   	})
    	   
    	   	tag += '</tbody>'	
    		tag += '</table>' 
    		tag += '<div class="tri-btn">'
    	   	tag += '<button id="leBtn" class="btn btn-primary">◀</button>'	
    	    tag += '<button id="riBtn" class="btn btn-primary">▶</button>'	
	        tag +='</div>'
        $('#section-bar-item').html(tag);	
    }
}

function fund(){
	var pageSu;
    $(function(){
 		   pageSu = 9;
 		   patentTable(pageSu);   

    });
    
    jQuery(document).on('click', '#', function(){
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
    
    jQuery(document).on('click', '#', function(){
 	 	  		
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
 	 
 	   $.ajax({
 	   		url : 'patentTable',
 	   		type : 'get',
 	   		data : {
 	   			pageSu : pageSu
 	   		},
 	   		success : output	   		
 	   	})
 	   
 	   
    }
    function output(res){
 	   var tag = '';
        tag += '<table class="fTable">'
        tag += '<caption class="table_title"><b>크라우드 펀딩 실시/투자 목록</b></caption>'
        tag += '<thead class="navy">' 
        tag += '<tr>'   
        tag += '<th scope="col">No.</th>'        
        tag += '<th scope="col">분류</th>'       
        tag += '<th scope="col">제목</th>'    
        tag += '<th scope="col">시작일</th>'    
        tag += '<th scope="col">마감일</th>'        
   	    tag += '</tr>'
   	    tag += '</thead>' 
    	tag += '<tbody>'
    	   $.each(res,function(i,item){
 	   	   	tag += '<tr>'
 	   	  	tag += '<th scope="row" name="아이템번호">'+item.d+'</th>'        
    	   		tag += '<td name="분류">'+item.a+'</td>'
    	   		tag += '<td name="제목">'+item.b+'</td>' //item.fundName 필요 ()
    	   		tag += '<td name="시작일">'+item.b+'</td>'// item.시작일 	==> 필요
    	   		tag += '<td name="마감일">'+item.c+'</td>'
    	   		tag += '</tr>'
    	   	})
    	   
    	   tag += '</tbody>'	
    	   tag += '<tr><td>'
    	   tag += '<button id="leftBtn">◀</button>'	
    	   tag += '<button id="rightBtn">▶</button>'	
    	   tag += '</td></tr>'
    	   tag += '</table>' 
    
        $('#section-bar-funding').html(tag);	
    }
}
