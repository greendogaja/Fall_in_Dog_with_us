package service;

import java.util.List;

import vo.NoticeReplyVO;

public interface NoticeReplyService {
	
	// 댓글입력
	int ncinsert(NoticeReplyVO cvo);
	
	//대댓글 입력
	int ncreply(NoticeReplyVO cvo);
	
	// 수정
	int ncupdate(NoticeReplyVO cvo);
	
	//댓글리스트 가져오기
	// sql 에서 #{} 로 조회 하려면 매개변수 값이 전달되게 넣어줘야함 NoticeReplyVO cvo 
	List<NoticeReplyVO> selectList(NoticeReplyVO cvo);
	
	// 삭제
	int ncdelete(NoticeReplyVO cvo);
	
	
	
}
