package service;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.QnaReplyMapper;
import vo.QnaReplyVO;



@Service
public class QnaReplyServiceImpl implements QnaReplyService{
	@Autowired
	QnaReplyMapper mapper;
	
	//** Read
	@Override
	public QnaReplyVO readReply(QnaReplyVO qvo){
		return mapper.readReply(qvo);
	}
	//** Insert
	@Override
	public int insert(QnaReplyVO vo) {
		return mapper.insert(vo);
	}
	//** Update
	@Override
	public int update(QnaReplyVO vo) {
		return mapper.update(vo);
	}
	//** Delete
	@Override
	public int delete(QnaReplyVO vo) {
		return mapper.delete(vo);
	}
	

	
}//class
