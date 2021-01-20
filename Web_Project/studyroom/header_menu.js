$(document).ready(function(){

	$('#header_menu > div > div .normalMenu').each(function(){

		$(this).before($(this).clone().removeClass().addClass('hoverMenu'));

	});
	
	$('#header_menu > div > div').hover(function(){	
		$(this).find('.hoverMenu').stop().animate({marginTop:'0px'}, 200);
	},
	
	function(){	
		$(this).find('.hoverMenu').stop().animate({marginTop:'-25px'}, 200);
	});
	
});
