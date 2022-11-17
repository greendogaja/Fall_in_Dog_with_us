package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.AdoptReplyMapper;
import vo.AdoptReplyVO;

@Service
public class AdoptReplyServiceImpl implements AdoptReplyService{

	@Autowired
	AdoptReplyMapper mapper;
	
//	게시판
	@Override
	public List<AdoptReplyVO> getReplyList(){
		return mapper.getReplyList();
	}
	
//	글쓰기
	@Override
	public int saveReply(AdoptReplyVO vo) {
		return mapper.saveReply(vo);
	}
	
//	글수정
	@Override
	public int updateReply(AdoptReplyVO vo) {
		return mapper.updateReply(vo);
	}
	
//	글삭제
	@Override
	public int deleteReply(AdoptReplyVO vo) {
		return mapper.deleteReply(vo);
	}	

}
