package service;



import java.util.List;

import usercontrol.SearchCriteria;
import vo.UserVO;

public interface UserService {

	//** SelectOne
	UserVO selectOne(UserVO vo);
	UserVO selectnickOne(UserVO vo);
	
	//** Insert
	int insert(UserVO vo);
	//** Update
	int update(UserVO vo);
	//** Delete
	int delete(UserVO vo);
	
	//** List
	List<UserVO> selectList();
	List<UserVO> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
}