package mapperInterface;

import java.util.List;

import vo.AdoptReplyVO;

public interface AdoptReplyMapper {
	
//	게시판
	/* List<AdoptReplyVO> getReplyList(); */
	
	List<AdoptReplyVO> getReplyList(AdoptReplyVO rvo);

//	글쓰기
	int saveReply(AdoptReplyVO vo);
	
//	글수정
	int updateReply(AdoptReplyVO vo);
	
//	글삭제
	int deleteReply(AdoptReplyVO vo);

}