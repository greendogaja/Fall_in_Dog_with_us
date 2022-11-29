package mapperInterface;





import java.util.List;

import customercontrol.CustomSearchCriteria;
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
	List<CustomerVO> csearchList(CustomSearchCriteria cri);
	int searchCount(CustomSearchCriteria cri);
	List<CustomerVO> selectList();
}//interface
