
// 댓글 등록 성공/실패 alert -ok
$(".re_btn").click(function() {
	let reinsert = $(this).parents('.replyInsert')
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
			$(reinsert).submit();
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

// 대댓글 등록 alert -ok
$(".rere_btn").click(function() {
	let rereinsert = $(this).parents('.rereplyInsert')
	if($(this).parents('.rereplyInsert').children('.comment_textarea').length > 0
	&& $(this).parents('.rereplyInsert').children('.comment_textarea').val() != ""){
		Swal.fire({ 
		title: '알림',
		text: "답글이 등록되었습니다.",
		icon: 'success',
		timer: 1000,
		showConfirmButton: false
		});
		setTimeout(function() {
			$(rereinsert).submit();
		}, 1500);
	}else{
		Swal.fire({
		title: '알림',
		text: "답글 등록 실패. 다시 하세요.",
		timer: 1000,
		showConfirmButton: false
		});
	}
	console.log($('.comment_textarea').val());
	console.log($('.orange.grp').val());
	console.log($('orange.grps').val());
	console.log($('orange.grpl').val());
});

// 댓글 수정 alert -ok
$(".re_up_btn").click(function() {
	let reup = $(this).parents('.replyUpdate')
	if($(this).parents('.replyUpdate').children('.comment_textarea').length > 0
	&& $(this).parents('.replyUpdate').children('.comment_textarea').val() != ""){
		Swal.fire({ 
		title: '알림',
		text: "댓글이 수정되었습니다.",
		icon: 'success',
		timer: 1000,
		showConfirmButton: false
		});
		setTimeout(function() {
			$(reup).submit();
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

// 대댓의 대댓글 등록 성공/실패 alert -ok
$(".rerere_btn").click(function() {
	let rerere = $(this).parents('.rerereplyInsert')
	if($(this).parents('.rerereplyInsert').children('.comment_textarea').length > 0
	&& $(this).parents('.rerereplyInsert').children('.comment_textarea').val() != ""){
		Swal.fire({ 
		title: '알림',
		text: "댓글이 등록되었습니다.",
		icon: 'success',
		timer: 1000,
		showConfirmButton: false
		});
		setTimeout(function() {
			$(rerere).submit();
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

// 대댓글 수정 alert -ok
$(".rere_up_btn").click(function() {
	let rere_up = $(this).parents('.rereplyUpdate')
	if($(this).parents('.rereplyUpdate').children('.comment_textarea').length > 0
	&& $(this).parents('.rereplyUpdate').children('.comment_textarea').val() != ""){
		Swal.fire({ 
		title: '알림',
		text: "답글이 수정되었습니다.",
		icon: 'success',
		timer: 1000,
		showConfirmButton: false
		});
		setTimeout(function() {
			$(rere_up).submit();
		}, 1500);
	}else{
		Swal.fire({
		title: '알림',
		text: "답글 수정 실패. 다시 하세요.",
		timer: 1000,
		showConfirmButton: false
		});
	console.log($('.content').val());
	}
});


// 댓글 삭제 alert
$(".re_delete").click(function() {
		Swal.fire({ 
		title: '알림',
		text: "댓글이 삭제되었습니다.",
		icon: 'success',
		timer: 1000,
		showConfirmButton: false
		});
});
/* 삭제 alert 이 빨리 사라짐,, */

// free 글등록 alert
$(".finsertf").click(function() {
	if($('.insert_title').length > 0 && $('.insert_title').val() != ""){
		Swal.fire({ 
		title: '알림',
		text: "글이 등록되었습니다.",
		icon: 'success',
		timer: 1000,
		showConfirmButton: false
		});
		setTimeout(function() {
			$(".freeInsert").submit();
		}, 1500);
	}else{
		Swal.fire({
		title: '알림',
		text: "글 등록 실패. 다시 하세요.",
		timer: 1000,
		showConfirmButton: false
		});
	console.log($('.insert_title').val());
	}
});

// free 글 수정 alert
$(".fupdate").click(function() {
	if($('.update_title').length > 0 && $('.update_title').val() != ""){
		Swal.fire({ 
		title: '알림',
		text: "글이 수정되었습니다.",
		icon: 'success',
		timer: 1000,
		showConfirmButton: false
		});
		setTimeout(function() {
			$(".freeUpdate").submit();
		}, 1500);
	}else{
		Swal.fire({
		title: '알림',
		text: "글 수정 실패. 다시 하세요.",
		timer: 1000,
		showConfirmButton: false
		});
	console.log($('.update_title').val());
	}
});

// free/review/share 글 삭제 alert
$(".delete_btn").click(function() {
		Swal.fire({ 
		title: '알림',
		text: "글이 삭제되었습니다.",
		icon: 'success',
		timer: 1000,
		showConfirmButton: false
		});
});
/* 삭제 alert 이 빨리 사라짐,, */

// reivew 글등록 alert
$(".insertf").click(function() {
	if($('.insert_title').length > 0 && $('.insert_title').val() != ""){
		Swal.fire({ 
		title: '알림',
		text: "글이 등록되었습니다.",
		icon: 'success',
		timer: 1000,
		showConfirmButton: false
		});
		setTimeout(function() {
			$(".reviewInsert").submit();
		}, 1500);
	}else{
		Swal.fire({
		title: '알림',
		text: "글 등록 실패. 다시 하세요.",
		timer: 1000,
		showConfirmButton: false
		});
	console.log($('.insert_title').val());
	}
});

// reivew 글 수정 alert
$(".rupdate").click(function() {
	if($('.update_title').length > 0 && $('.update_title').val() != ""){
		Swal.fire({ 
		title: '알림',
		text: "글이 수정되었습니다.",
		icon: 'success',
		timer: 1000,
		showConfirmButton: false
		});
		setTimeout(function() {
			$(".reviewUpdate").submit();
		}, 1500);
	}else{
		Swal.fire({
		title: '알림',
		text: "글 수정 실패. 다시 하세요.",
		timer: 1000,
		showConfirmButton: false
		});
	console.log($('.update_title').val());
	}
});

// share 글등록 alert
$(".insertf").click(function() {
	if($('.insert_title').length > 0 && $('.insert_title').val() != ""){
		Swal.fire({ 
		title: '알림',
		text: "글이 등록되었습니다.",
		icon: 'success',
		timer: 1000,
		showConfirmButton: false
		});
		setTimeout(function() {
			$(".shareInsert").submit();
		}, 1500);
	}else{
		Swal.fire({
		title: '알림',
		text: "글 등록 실패. 다시 하세요.",
		timer: 1000,
		showConfirmButton: false
		});
	console.log($('.insert_title').val());
	}
});

// share 글 수정 alert
$(".supdate").click(function() {
	if($('.update_title').length > 0 && $('.update_title').val() != ""){
		Swal.fire({ 
		title: '알림',
		text: "글이 수정되었습니다.",
		icon: 'success',
		timer: 1000,
		showConfirmButton: false
		});
		setTimeout(function() {
			$(".shareUpdate").submit();
		}, 1500);
	}else{
		Swal.fire({
		title: '알림',
		text: "글 수정 실패. 다시 하세요.",
		timer: 1000,
		showConfirmButton: false
		});
	console.log($('.update_title').val());
	}
});



function adoptList_call() {
		let url = 'adoptSearch'
		window.open(url, '_blank',
			'width=400,height=300,resizable=yes,toolbar=no,menubar=yes,left=500,top=500');
}//adoptList_call






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