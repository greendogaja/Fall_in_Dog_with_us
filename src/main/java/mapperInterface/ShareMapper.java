package mapperInterface;

import java.util.List;

import noticeControl.SearchCriteria;
import vo.FreeReplyVO;
import vo.ShareReplyVO;
import vo.ShareVO;

public interface ShareMapper {
	
	// ** selectList
	List<ShareVO> selectList();
	
	List<ShareVO> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
	
	// ** selectOne
	ShareVO selectOne(ShareVO vo);
	
	// ** 조회수 증가
	int countUp(ShareVO vo);

	// ** 새글 등록
	int insert(ShareVO vo);
	
	// ** Update: 글수정
	int update(ShareVO vo);
	
	// ** Delete
	int delete(ShareVO vo);
	
	// ** 글삭제시 포함된 댓글 삭제
	int replyDeleteAll(ShareReplyVO rvo);
	
	// ** WriterList
	List<ShareVO> w_searchList(SearchCriteria cri);
	
	// ================== 댓글 ==================
	
	// 댓글입력
	int replyInsert(ShareReplyVO rvo);
	
	//대댓글 입력
	int rereplyInsert(ShareReplyVO rvo);
	
	// 수정
	int replyUpdate(ShareReplyVO rvo);
	
	//댓글리스트 가져오기
	// sql 에서 #{} 로 조회 하려면 매개변수 값이 전달되게 넣어줘야함 NoticeReplyVO cvo 
	List<ShareReplyVO> replySelectList(ShareReplyVO rvo);
	
	// 삭제
	int replyDelete(ShareReplyVO rvo);
}
