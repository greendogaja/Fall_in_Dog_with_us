package mapperInterface;

import java.util.List;

import noticeControl.SearchCriteria;
import vo.FreeReplyVO;
import vo.ReviewReplyVO;
import vo.ReviewVO;

public interface ReviewMapper {
	
	// ** selectList
	List<ReviewVO> selectList();
	
	List<ReviewVO> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
	
	// ** selectOne
	ReviewVO selectOne(ReviewVO vo);
	
	// ** 조회수 증가
	int countUp(ReviewVO vo);

	// ** 새글 등록
	int insert(ReviewVO vo);
	
	// ** Update: 글수정
	int update(ReviewVO vo);
	
	// ** Delete
	int delete(ReviewVO vo);
	
	// ** 글삭제시 포함된 댓글 삭제
	int replyDeleteAll(ReviewReplyVO rvo);
	
	// ** WriterList
	List<ReviewVO> w_searchList(SearchCriteria cri);
	
	// ================== 댓글 ==================
	
	// 댓글입력
	int replyInsert(ReviewReplyVO rvo);
	
	//대댓글 입력
	int rereplyInsert(ReviewReplyVO rvo);
	
	// 수정
	int replyUpdate(ReviewReplyVO rvo);
	
	//댓글리스트 가져오기
	// sql 에서 #{} 로 조회 하려면 매개변수 값이 전달되게 넣어줘야함 NoticeReplyVO cvo 
	List<ReviewReplyVO> replySelectList(ReviewReplyVO rvo);
	
	// 삭제
	int replyDelete(ReviewReplyVO rvo);
}
