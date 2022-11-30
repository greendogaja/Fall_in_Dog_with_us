package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.FreeMapper;
import noticeControl.SearchCriteria;
import vo.FreeReplyVO;
import vo.FreeVO;

@Service
public class FreeServiceImpl implements FreeService{

	@Autowired
	FreeMapper mapper;
	
	// ** Criteria PageList
	@Override 
	public List<FreeVO> searchList(SearchCriteria cri) {
		return mapper.searchList(cri);
	}
	
	@Override
	public int searchCount(SearchCriteria cri) {
		return mapper.searchCount(cri);
	}	
	
	@Override
	public List<FreeVO> selectList(){
		return mapper.selectList();
	}
	
	@Override
	public FreeVO selectOne(FreeVO vo) {
		return mapper.selectOne(vo);
	}
	
	@Override
	public int countUp(FreeVO vo) {
		return mapper.countUp(vo);
	}
	
	// ** Insert
	@Override
	public int insert(FreeVO vo) {
		return mapper.insert(vo);
	}
	
	// ** Update: 글수정
	@Override
	public int update(FreeVO vo) {
		return mapper.update(vo);
	}
	
	// ** Delete
	@Override
	public int delete(FreeVO vo) {
		return mapper.delete(vo);
	}	
	
	// ** 글삭제시 포함된 댓글 삭제
	@Override
	public int replyDeleteAll(FreeReplyVO rvo) {
		return mapper.replyDeleteAll(rvo);
	}
	
	@Override 
	public List<FreeVO> w_searchList(SearchCriteria cri) {
		return mapper.w_searchList(cri);
	}
	
	// ======================== 댓글 ========================
	
	// 댓글입력
	@Override
	public int replyInsert(FreeReplyVO rvo) {
		return mapper.replyInsert(rvo);
	}

	// 대댓글 입력
	@Override
	public int rereplyInsert(FreeReplyVO rvo){
		return mapper.rereplyInsert(rvo);
	}
	
	@Override
	public int replyUpdate(FreeReplyVO rvo) {
		return mapper.replyUpdate(rvo);
	}

	// 댓글리스트 가져오기
	@Override
	public List<FreeReplyVO> replySelectList(FreeReplyVO rvo){
		return mapper.replySelectList(rvo);
	}
	
	@Override
	public int replyDelete(FreeReplyVO cvo) {
		return mapper.replyDelete(cvo);
	}
}
