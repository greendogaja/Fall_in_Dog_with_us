$(function(){
 	$('.adoptdogs').on('mouseenter', function () {
	    $(this).addClass('backgr');
	}).on('mouseleave', function () {
		$(this).removeClass('backgr');
	});//adoptdogs
	 
 	$('.hover-write').on('mouseover', function () {
	    $(this).children('.howrite').toggleClass('visibleBox');
	}).on('mouseout', function () {
		$(this).children('.howrite').toggleClass('visibleBox');
	}); //hover-write
});//ready