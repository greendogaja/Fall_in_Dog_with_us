// 홀수번째 답글의 배경 회색
$(function() {
	$("div .n_comment_area:odd").addClass("bg_ws");
});

// 더보기 클릭시 수정,삭제 보이게
$(".comment_tool_a").click(function() {
	$(this).parents(".comment_tool").children(".up_del").toggleClass("dp_h");
});


// 댓글 수정 클릭시 답글창(수정글창) 보이게
$(".re_update").click(function() {
	$(this).parents(".comment_box").children(".re_box_update").toggleClass("dp_h");
});

// 답글쓰기 입력시 답글창 나옴 
$(".reply_display").click(function() {
	$(this).parents(".comment_box").children(".re_box").toggleClass("dp_h");
});

// 대댓글의 답글쓰기 클릭시 댓글창 나오게
$(".rereply_display").click(function() {
	$(this).parents(".comment_box").children(".rere_box").toggleClass("dp_h");
});