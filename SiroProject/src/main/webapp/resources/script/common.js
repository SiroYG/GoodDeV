$(function(){
	$('#gnb>ul>li').hover(function(){
		$('>ul',this).stop().slideDown(300);
	},function(){
		$('>ul',this).stop().slideUp(300);
	})
	var num = 0,left,timer;
	var slidePlay = function(){
		if(++num > 2) num = 0;
		left = -num*100;
		timer = setTimeout(function(){
			play();
		}, 2000)
		function play(){
			$('#slide>ul').animate({
				marginLeft:left+"%",
			},1000,function(){
				slidePlay();
			})
		}
	}
	slidePlay();
})
$(document).on('click','.openPopup',function(){
	var inner = $(this).html();
	var data =
		'<div id="layer">'+
			'<div class="box">'+
				'<div class="bg"></div>'+
				'<div class="content"><a href="#" class="close">X</a>'+
				inner+
				'</div>'+
			'</div>'+
		'</div>';
	$('body').append(data);
	return false;
}).on('click','#layer .close,#layer .bg',function(){
	$('#layer').fadeOut(300,function(){
		$(this).remove();
	})
	return false;
});
$(window).on('keydown',function(e){
	if($('#layer').length && e.keyCode == 27){
		$('#layer').fadeOut(300,function(){ $(this).remove()});
	}
})