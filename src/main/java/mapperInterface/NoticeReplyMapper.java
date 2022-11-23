package mapperInterface;

import java.util.List;

import vo.NoticeReplyVO;

public interface NoticeReplyMapper {
		// 댓글입력
		int ncinsert(NoticeReplyVO cvo);
		
		//대댓글 입력
		int ncreply(NoticeReplyVO cvo);
		
		// 수정
		int ncupdate(NoticeReplyVO cvo);
		
		//댓글리스트 가져오기
		List<NoticeReplyVO> selectList(NoticeReplyVO cvo);
		
		// 삭제
		int ncdelete(NoticeReplyVO cvo);

}
