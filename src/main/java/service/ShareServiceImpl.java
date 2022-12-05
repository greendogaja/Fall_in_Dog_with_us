package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.ShareMapper;
import noticeControl.SearchCriteria;
import vo.FreeReplyVO;
import vo.ShareReplyVO;
import vo.ShareVO;

@Service
public class ShareServiceImpl implements ShareService{

	@Autowired
	ShareMapper mapper;
	
	// ** Criteria PageList
	@Override 
	public List<ShareVO> searchList(SearchCriteria cri) {
		return mapper.searchList(cri);
	}
	
	@Override
	public int searchCount(SearchCriteria cri) {
		return mapper.searchCount(cri);
	}	
	
	@Override
	public List<ShareVO> selectList(){
		return mapper.selectList();
	}
	
	@Override
	public ShareVO selectOne(ShareVO vo) {
		return mapper.selectOne(vo);
	}
	
	@Override
	public int countUp(ShareVO vo) {
		return mapper.countUp(vo);
	}
	
	// ** Insert
	@Override
	public int insert(ShareVO vo) {
		return mapper.insert(vo);
	}
	
	// ** Update: 글수정
	@Override
	public int update(ShareVO vo) {
		return mapper.update(vo);
	}
	
	// ** Delete
	@Override
	public int delete(ShareVO vo) {
		return mapper.delete(vo);
	}	
	
	@Override 
	public List<ShareVO> w_searchList(SearchCriteria cri) {
		return mapper.w_searchList(cri);
	}
	
	// ======================== 댓글 ========================
	
	// 댓글입력
	@Override
	public int replyInsert(ShareReplyVO rvo) {
		return mapper.replyInsert(rvo);
	}

	// 대댓글 입력
	@Override
	public int rereplyInsert(ShareReplyVO rvo){
		return mapper.rereplyInsert(rvo);
	}
	
	@Override
	public int replyUpdate(ShareReplyVO rvo) {
		return mapper.replyUpdate(rvo);
	}

	// 댓글리스트 가져오기
	@Override
	public List<ShareReplyVO> replySelectList(ShareReplyVO rvo){
		return mapper.replySelectList(rvo);
	}
	
	@Override
	public int replyDelete(ShareReplyVO cvo) {
		return mapper.replyDelete(cvo);
	}
}
