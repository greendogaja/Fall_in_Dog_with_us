package mapperInterface;






import vo.QnaReplyVO;


public interface QnaReplyMapper  {
	
	//** List
	QnaReplyVO readReply(QnaReplyVO qvo);
	int insert(QnaReplyVO vo);
	int update(QnaReplyVO vo);
	
}//interface
