

$(function() {
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