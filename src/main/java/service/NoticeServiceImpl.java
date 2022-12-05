package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.NoticeMapper;
import noticeControl.SearchCriteria;
import vo.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	NoticeMapper mapper;
	
	// ** Criteria PageList
	@Override 
	public List<NoticeVO> searchList(SearchCriteria cri) {
		return mapper.searchList(cri);
	}
	
	@Override
	public int searchCount(SearchCriteria cri) {
		return mapper.searchCount(cri);
	}	
	
	@Override
	public List<NoticeVO> main_selectList(){
		return mapper.selectList();
	}
	
	@Override
	public NoticeVO selectOne(NoticeVO vo) {
		return mapper.selectOne(vo);
	}
	
	@Override
	public int countUp(NoticeVO vo) {
		return mapper.countUp(vo);
	}
	
	// ** Insert
	@Override
	public int insert(NoticeVO vo) {
		return mapper.insert(vo);
	}
	
	// ** Update: 글수정
	@Override
	public int update(NoticeVO vo) {
		return mapper.update(vo);
	}
	
	// ** Delete
	@Override
	public int delete(NoticeVO vo) {
		return mapper.delete(vo);
	}	
	
	@Override 
	public List<NoticeVO> w_searchList(SearchCriteria cri) {
		return mapper.w_searchList(cri);
	}
}
