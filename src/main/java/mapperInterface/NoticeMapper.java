package mapperInterface;

import java.util.List;

import noticeControl.SearchCriteria;
import vo.NoticeVO;

public interface NoticeMapper {
	
	// ** Criteria PageList
	// => ver02
	List<NoticeVO> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);	
	
	// ** selectList
	List<NoticeVO> main_selectList();
	
	// ** selectOne
	NoticeVO selectOne(NoticeVO vo);
	
	// ** 조회수 증가
	int countUp(NoticeVO vo);
	
	// ** Insert: 새글등록 
	int insert(NoticeVO vo);
	
	// ** Update: 글수정
	int update(NoticeVO vo);
	
	// ** Delete
	int delete(NoticeVO vo);
	
	// ** noticeWriterList
	List<NoticeVO> w_searchList(SearchCriteria cri);
}
