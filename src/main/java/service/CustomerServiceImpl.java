package service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import customercontrol.CustomSearchCriteria;
import mapperInterface.CustomerMapper;
import vo.CustomerVO;



@Service
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	CustomerMapper mapper;
	
	//** selectOne
	@Override 
	public CustomerVO selectOne(CustomerVO vo) { return mapper.selectOne(vo); 
	}
	@Override 
	public CustomerVO selectMax(CustomerVO vo) { return mapper.selectMax(vo); 
	}
	@Override 
	public CustomerVO selectMin(CustomerVO vo) { return mapper.selectMin(vo); 
	}

	//** Insert
	@Override
	public int insert(CustomerVO vo) {
		return mapper.insert(vo);
	}
	//** Update
	@Override
	public int update(CustomerVO vo) {
		return mapper.update(vo);
	}
	
	//** Delete
	@Override
	public int delete(CustomerVO vo) {
		return mapper.delete(vo);
	}
	
	//** List
	@Override
	public List<CustomerVO> csearchList(CustomSearchCriteria cri){
		return mapper.csearchList(cri);
	}
	@Override
	public int searchCount(CustomSearchCriteria cri){
		return mapper.searchCount(cri);
	}
	@Override
	public List<CustomerVO> selectList(){
 		return mapper.selectList();
 	}
	
}//class
