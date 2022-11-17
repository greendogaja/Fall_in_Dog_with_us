

$(function() {
<<<<<<< HEAD
	$.ajax({
		type: 'Get',
		url: 'faq',
		success: function(resultPage) {
			$('#resultarea').html(resultPage);
		},
		error: function() {
			$('#resultarea').html('~~ AjaxLogin 요청 Error 발생');

		}
	});//ajax
});
=======
		
	
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
	});//searchbtnclick

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
	}); //roadmove
	
	
});//ready
	
	
	
	
	
>>>>>>> f829b8eeb9643296b21941862be638f65ee88e7f
