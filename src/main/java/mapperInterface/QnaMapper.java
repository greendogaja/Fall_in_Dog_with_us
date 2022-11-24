package mapperInterface;





import java.util.List;

import usercontrol.SearchCriteria;
import vo.QnaVO;


public interface QnaMapper {
	
	
	//** SelectOne
	QnaVO selectOne(QnaVO vo);
	
	//Insert
	int insert(QnaVO vo);
	//Update
	int update(QnaVO vo);
	int situp(QnaVO vo);
	//delete
	int delete(QnaVO vo);
	
	//** List
	List<QnaVO> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
}//interface
