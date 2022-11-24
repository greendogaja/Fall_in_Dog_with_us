package service;




import vo.QnaReplyVO;

public interface QnaReplyService {

	
	QnaReplyVO readReply(QnaReplyVO qvo);
	int insert(QnaReplyVO vo);
	int update(QnaReplyVO vo);
	
}