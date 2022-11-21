package mapperInterface;





import java.util.List;

import usercontrol.SearchCriteria;
import vo.CustomerVO;


public interface CustomerMapper {
	
	
	//** SelectOne
	CustomerVO selectOne(CustomerVO vo);
	CustomerVO selectMax(CustomerVO vo);
	CustomerVO selectMin(CustomerVO vo);
	
	//Insert
	int insert(CustomerVO vo);
	//Update
	int update(CustomerVO vo);
	//delete
	int delete(CustomerVO vo);
	
	//** List
	List<CustomerVO> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
	List<CustomerVO> selectList();
}//interface
