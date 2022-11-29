
// 댓글 등록 성공/실패 alert
$(".re_btn").click(function() {
	if($(this).parents('.comment_inbox').children('.comment_textarea').length > 0
	&& $(this).parents('.comment_inbox').children('.comment_textarea').val() != ""){
		Swal.fire({ 
		title: '알림',
		text: "댓글이 등록되었습니다.",
		icon: 'success',
		timer: 1000,
		showConfirmButton: false
		});
		setTimeout(function() {
			$("#replyInsert").submit();
		}, 1500);
	}else{
		Swal.fire({
		title: '알림',
		text: "댓글 등록 실패. 다시 하세요.",
		timer: 1000,
		showConfirmButton: false
		});
	console.log($('#content').val());
	}
});

// 댓글 수정 alert
$(".re_up_btn").click(function() {
	if($(this).parents('.comment_inbox').children('.comment_textarea').length > 0
	&& $(this).parents('.comment_inbox').children('.comment_textarea').val() != ""){
		Swal.fire({ 
		title: '알림',
		text: "댓글이 수정되었습니다.",
		icon: 'success',
		timer: 1000,
		showConfirmButton: false
		});
		setTimeout(function() {
			$("#replyUpdate").submit();
		}, 1500);
	}else{
		Swal.fire({
		title: '알림',
		text: "댓글 수정 실패. 다시 하세요.",
		timer: 1000,
		showConfirmButton: false
		});
	console.log($('#content').val());
	}
});

// 대댓글 등록 alert
$(".rere_btn").click(function() {
	if($(this).parents('.comment_inbox').children('.comment_textarea').length > 0
	&& $(this).parents('.comment_inbox').children('.comment_textarea').val() != ""){
		Swal.fire({ 
		title: '알림',
		text: "답글이 등록되었습니다.",
		icon: 'success',
		timer: 1000,
		showConfirmButton: false
		});
		setTimeout(function() {
			$("#rereplyInsert").submit();
		}, 1500);
	}else{
		Swal.fire({
		title: '알림',
		text: "답글 등록 실패. 다시 하세요.",
		timer: 1000,
		showConfirmButton: false
		});
	}
	console.log($('#content').val());
});

// 대댓글 수정 alert
$(".rere_up_btn").click(function() {
	if($(this).parents('.comment_inbox').children('.comment_textarea').length > 0
	&& $(this).parents('.comment_inbox').children('.comment_textarea').val() != ""){
		Swal.fire({ 
		title: '알림',
		text: "답글이 수정되었습니다.",
		icon: 'success',
		timer: 1000,
		showConfirmButton: false
		});
		setTimeout(function() {
			$("#replyUpdate").submit();
		}, 1500);
	}else{
		Swal.fire({
		title: '알림',
		text: "답글 수정 실패. 다시 하세요.",
		timer: 1000,
		showConfirmButton: false
		});
	console.log($('#content').val());
	}
});








/*
confirm 			
<script>
	$(".re_btn").click(function(){
		Swal.fire({
	        title: '알림',
            text: "이대로 제출 하시겠습니까?",
            icon: 'question',
	             showCancelButton: true,
	             confirmButtonColor: '#3085d6',
	             cancelButtonColor: '#d33',
	             confirmButtonText: '확인',
	             cancelButtonText: '취소'
	     }).then((result) => {
	         if (result.isConfirmed) {
				$(this).parents("#replyAlert").submit();
	         }
	     });
});
</script>
*/