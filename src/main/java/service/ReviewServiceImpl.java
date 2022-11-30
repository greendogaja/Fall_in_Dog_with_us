package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.ReviewMapper;
import noticeControl.SearchCriteria;
import vo.FreeReplyVO;
import vo.ReviewReplyVO;
import vo.ReviewVO;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	ReviewMapper mapper;
	
	// ** Criteria PageList
	@Override 
	public List<ReviewVO> searchList(SearchCriteria cri) {
		return mapper.searchList(cri);
	}
	
	@Override
	public int searchCount(SearchCriteria cri) {
		return mapper.searchCount(cri);
	}	
	
	@Override
	public List<ReviewVO> selectList(){
		return mapper.selectList();
	}
	
	@Override
	public ReviewVO selectOne(ReviewVO vo) {
		return mapper.selectOne(vo);
	}
	
	@Override
	public int countUp(ReviewVO vo) {
		return mapper.countUp(vo);
	}
	
	// ** Insert
	@Override
	public int insert(ReviewVO vo) {
		return mapper.insert(vo);
	}
	
	// ** Update: 글수정
	@Override
	public int update(ReviewVO vo) {
		return mapper.update(vo);
	}
	
	// ** Delete
	@Override
	public int delete(ReviewVO vo) {
		return mapper.delete(vo);
	}	
	
	// ** 글삭제시 포함된 댓글 삭제
	@Override
	public int replyDeleteAll(ReviewReplyVO rvo) {
		return mapper.replyDeleteAll(rvo);
	}
	
	@Override 
	public List<ReviewVO> w_searchList(SearchCriteria cri) {
		return mapper.w_searchList(cri);
	}
	
	// ======================== 댓글 ========================
	
	// 댓글입력
	@Override
	public int replyInsert(ReviewReplyVO rvo) {
		return mapper.replyInsert(rvo);
	}

	// 대댓글 입력
	@Override
	public int rereplyInsert(ReviewReplyVO rvo){
		return mapper.rereplyInsert(rvo);
	}
	
	@Override
	public int replyUpdate(ReviewReplyVO rvo) {
		return mapper.replyUpdate(rvo);
	}

	// 댓글리스트 가져오기
	@Override
	public List<ReviewReplyVO> replySelectList(ReviewReplyVO rvo){
		return mapper.replySelectList(rvo);
	}
	
	@Override
	public int replyDelete(ReviewReplyVO cvo) {
		return mapper.replyDelete(cvo);
	}
}
