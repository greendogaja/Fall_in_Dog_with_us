
// 댓글
// 게시물의 댓글 목록을 불러오는 함수
const CommentList = function(cno){
	$.ajax({
		url : 'commentList',
		type : 'get',
		date : {
			cno : cno
		},
		success : function(data){
			console.log("댓글 리스트 가져오기 성공");
			
			// 댓글 목록 html로 담기
			let listHtml = "";
			for(const i in data){
				let cno = data[i].cno;
				let nno = data[i].nno;
				let grp = data[i].grp;
				let grps = data[i].grps;
				let grpl = data[i].grpl;
				let nname = data[i].nname;
				let content = data[i].content;
				let reg = data[i].reg;
				
				console.log(grpl); // 모댓글일땐 0, 답글일땐 1
				
				listHtml += "<div class='
				
	
	});



}