package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.NoticeReplyMapper;
import vo.NoticeReplyVO;

@Service
public class NoticeReplyServiceImpl implements NoticeReplyService{

	@Autowired
	NoticeReplyMapper mapper;
	
	// 댓글입력
	@Override
	public int ncinsert(NoticeReplyVO cvo) {
		return mapper.ncinsert(cvo);
	}

	// 대댓글 입력
	@Override
	public int ncreply(NoticeReplyVO cvo){
		return mapper.ncreply(cvo);
	}
	
	@Override
	public int ncupdate(NoticeReplyVO cvo) {
		return mapper.ncupdate(cvo);
	}

	// 댓글리스트 가져오기
	@Override
	public List<NoticeReplyVO> selectList(NoticeReplyVO cvo){
		return mapper.selectList(cvo);
	}
	
	@Override
	public int ncdelete(NoticeReplyVO cvo) {
		return mapper.ncdelete(cvo);
	}

}
