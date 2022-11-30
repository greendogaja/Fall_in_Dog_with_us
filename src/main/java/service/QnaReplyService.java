package service;




import vo.QnaReplyVO;

public interface QnaReplyService {

	//** Read
	QnaReplyVO readReply(QnaReplyVO qvo);
	//** Insert
	int insert(QnaReplyVO vo);
	//** Update
	int update(QnaReplyVO vo);
	//** Delete
	int delete(QnaReplyVO vo);
	
}