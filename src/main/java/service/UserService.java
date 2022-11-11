package service;

import vo.UserVO;

public interface UserService {

	//** SelectOne
	UserVO selectOne(UserVO vo);
	
	//** Insert
	int insert(UserVO vo);
	//** Update
	int update(UserVO vo);
	//** Delete
	int delete(UserVO vo);
	

}