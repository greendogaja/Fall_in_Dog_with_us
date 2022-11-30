package vo;


import org.springframework.web.multipart.MultipartFile;

import lombok.Data;




@Data
public class QnaVO {
	private int qno;
	private String name;
	private String secret;
	private String title;
	private String content;
	private String regdate;
	private String situation;
	private String profile;
	private String nickname;
	private String uploadfile; 
	private MultipartFile uploadfilef;
	
	
	
	
}//class
