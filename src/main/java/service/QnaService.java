package service;



import java.util.List;

import usercontrol.SearchCriteria;
import vo.QnaVO;

public interface QnaService {

	//** SelectOne
	QnaVO selectOne(QnaVO vo);
	
	//** Insert
	int insert(QnaVO vo);
	//** Update
	int update(QnaVO vo);
	int situp(QnaVO vo);
	//** Delete
	int delete(QnaVO vo);
	
	//** List
	List<QnaVO> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
}