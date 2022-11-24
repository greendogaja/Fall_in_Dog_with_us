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
	//테이블 안에 저장(DB안) 들어가 있는 값을 처리 (저장값: 경로및 파일명)
	//테이블의 컬럼명과 일치 
	private MultipartFile uploadfilef;
	
}//class
