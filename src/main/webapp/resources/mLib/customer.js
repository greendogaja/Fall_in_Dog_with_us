

$(function() {
	//################################################################
	//faq	
	
	 $('#guidemenu').click(function(){
       if($('#hidebox').hasClass("hidex")){
           $("#hidebox").removeClass("hidex");
       } else{
           $("#hidebox").addClass("hidex");
       }
    });//hidex //이용안내박스
	
	
	
	$('#searchType').change(function(){
		if($(this).val()=='n') $('#keyword').val('');
	});
	
	$('#searchBtn').click(function(){
		let searchurl = "faq?currPage=1&rowsPerPage=5"+
						"&searchType="+$('#searchType').val()+
						"&keyword="+$('#keyword').val();
		$.ajax({
			type: 'Get',
			url: searchurl,
			success: function(resultPage) {
				$('#resultarea').html('');
				$('#resultarea').html(resultPage);
			},
			error: function() {
				$('#resultarea').html('~~ Ajaxfaqsearch 요청 Error 발생');
	
			}
		});//ajax
	});//searchbtnclick //faq서치바
	
	
	$('.pmove').click(function(){
		
		let purl = $(this).attr('href');  
		
		$.ajax({
			type: 'Get',
			url: purl,
			success: function(resultPage) {
				$('#resultarea').html(resultPage);
			},
			error: function() {
				$('#resultarea').html('~~ Ajaxfaq 요청 Error 발생');
	
			}
		});//ajax	
		return false;
	}); //pmove
	
	
	
	
	$('.cho').on('click',function(){
		const num = $('.cho').index($(this));
		$('.cho span').removeClass('clicked');
		$('.cho span:eq(' + num + ')').addClass('clicked');
	});//cho 메뉴바 글씨색

	$('.bcho').on('click',function(){
		const bnum = $('.bcho').index($(this));
		$('.bcho span').addClass('bobo');
		$('.bcho span').removeClass('base');
		$('.bcho span:eq(' + bnum + ')').removeClass('bobo');
		$('.bcho span:eq(' + bnum + ')').addClass('base');
	});//bcho 메뉴바 글씨색
	
	//##########################################################################
	
	
	
	
	$('#roadmove').click(function(){
	
		$.ajax({
			type: 'Get',
			url: "roadmove",
			success: function(resultPage) {
				$('#resultarea').html('');
				$('#resultarea').html(resultPage);
			},
			error: function() {
				$('#resultarea').html('~~ Ajaxroad 요청 Error 발생');
	
			}
		});//ajax	
	}); //roadmove //길안내
});//ready
	
	
	
	
	
