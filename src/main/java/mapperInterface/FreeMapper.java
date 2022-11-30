package mapperInterface;

import java.util.List;

import noticeControl.SearchCriteria;
import vo.FreeReplyVO;
import vo.FreeVO;

public interface FreeMapper {
	
	// ** selectList
	List<FreeVO> selectList();
	
	List<FreeVO> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
	
	// ** selectOne
	FreeVO selectOne(FreeVO vo);
	
	// ** 조회수 증가
	int countUp(FreeVO vo);

	// ** 새글 등록
	int insert(FreeVO vo);
	
	// ** Update: 글수정
	int update(FreeVO vo);
	
	// ** Delete
	int delete(FreeVO vo);
	
	// ** 글삭제시 포함된 댓글 삭제
	int replyDeleteAll(FreeReplyVO rvo);
	
	// ** WriterList
	List<FreeVO> w_searchList(SearchCriteria cri);
	
	// ================== 댓글 ==================
	
	// 댓글입력
	int replyInsert(FreeReplyVO rvo);
	
	//대댓글 입력
	int rereplyInsert(FreeReplyVO rvo);
	
	// 수정
	int replyUpdate(FreeReplyVO rvo);
	
	//댓글리스트 가져오기
	// sql 에서 #{} 로 조회 하려면 매개변수 값이 전달되게 넣어줘야함 NoticeReplyVO cvo 
	List<FreeReplyVO> replySelectList(FreeReplyVO rvo);
	
	// 삭제
	int replyDelete(FreeReplyVO rvo);
}
