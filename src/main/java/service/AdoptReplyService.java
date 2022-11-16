package service;

import java.util.List;

import vo.AdoptReplyVO;

public interface AdoptReplyService {
	
//	게시판
	List<AdoptReplyVO> getReplyList();

//	글쓰기
	int saveReply(AdoptReplyVO vo);
	
//	글수정
	int updateReply(AdoptReplyVO vo);
	
//	글삭제
	int deleteReply(AdoptReplyVO vo);

}