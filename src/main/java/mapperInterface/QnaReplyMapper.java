package mapperInterface;






import vo.QnaReplyVO;


public interface QnaReplyMapper  {
	
	//** Read
	QnaReplyVO readReply(QnaReplyVO qvo);
	//** Insert
	int insert(QnaReplyVO vo);
	//** Update
	int update(QnaReplyVO vo);
	//** Delete
	int delete(QnaReplyVO vo);
	
}//interface
