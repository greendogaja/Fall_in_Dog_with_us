package service;

import java.util.List;

import noticeControl.SearchCriteria;
import vo.NoticeVO;

public interface NoticeService {

	// ** selectList
	List<NoticeVO> selectList();
	
	List<NoticeVO> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
	
	// ** selectOne
	NoticeVO selectOne(NoticeVO vo);
	
	// ** 조회수 증가
	int countUp(NoticeVO vo);

	// ** 새글 등록
	int insert(NoticeVO vo);
	
	// ** Update: 글수정
	int update(NoticeVO vo);
	
	// ** Delete
	int delete(NoticeVO vo);
	

}
