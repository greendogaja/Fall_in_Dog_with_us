package service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.UserMapper;
import usercontrol.SearchCriteria;
import vo.UserVO;



@Service
public class UserServiceimpl implements UserService{
	@Autowired
	UserMapper mapper;
	
	//** selectOne
	@Override 
	public UserVO selectOne(UserVO vo) { return mapper.selectOne(vo); 
	}
	@Override 
	public UserVO selectnickOne(UserVO vo) { return mapper.selectnickOne(vo); 
	}
	
	//** Insert
	@Override
	public int insert(UserVO vo) {
		return mapper.insert(vo);
	}
	//** Update
	@Override
	public int update(UserVO vo) {
		return mapper.update(vo);
	}
	
	//** Delete
	@Override
	public int delete(UserVO vo) {
		return mapper.delete(vo);
	}
	
	//** List
	@Override
	public List<UserVO> searchList(SearchCriteria cri){
		return mapper.searchList(cri);
	}
	@Override
	public int searchCount(SearchCriteria cri){
		return mapper.searchCount(cri);
	}
	@Override
	public int userCount(){
		return mapper.userCount();
	}
	@Override
	public List<UserVO> selectList(){
 		return mapper.selectList();
 	}
	
}//class
