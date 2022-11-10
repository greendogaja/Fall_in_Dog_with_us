package mapperInterface;



import vo.UserVO;


public interface UserMapper {
	
	
	
	UserVO selectOne(UserVO vo);
	
	int insert(UserVO vo);
	int update(UserVO vo);
}//interface
