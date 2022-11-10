package mapperInterface;



import vo.UserVO;


public interface UserMapper {
	
	
	
	UserVO selectOne(UserVO vo);
	
	// Join -> Insert
	int insert(UserVO vo);
}//interface
