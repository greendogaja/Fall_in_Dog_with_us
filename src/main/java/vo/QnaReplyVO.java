package vo;


import org.springframework.web.multipart.MultipartFile;

import lombok.Data;




@Data
public class QnaReplyVO {
	private int no;
	private int reqno;
	private String content;
	private String uploadfile; 
	private String profile;
	private MultipartFile uploadfilef;
	
}//class
