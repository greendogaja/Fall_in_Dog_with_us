package service;



import java.util.List;

import usercontrol.SearchCriteria;
import vo.CustomerVO;

public interface CustomerService {

	//** SelectOne
	CustomerVO selectOne(CustomerVO vo);
	CustomerVO selectnickOne(CustomerVO vo);
	
	//** Insert
	int insert(CustomerVO vo);
	//** Update
	int update(CustomerVO vo);
	//** Delete
	int delete(CustomerVO vo);
	
	List<CustomerVO> selectList();
	List<CustomerVO> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
}