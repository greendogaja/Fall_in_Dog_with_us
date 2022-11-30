package vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;




@Data
public class UserVO {
	private String id;
	private String password;
	private String name;
	private String nname;
	private String gender;
	private String email;
	private String phone;
	private int yy;
	private int dd;
	private int mm;
	private String uploadfile; 
	private MultipartFile uploadfilef;

	
	
	
	
}//class
