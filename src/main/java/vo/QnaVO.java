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
	private String uploadfile; 
	//테이블 안에 저장(DB안) 들어가 있는 값을 처리 (저장값: 경로및 파일명)
	//테이블의 컬럼명과 일치 
	private MultipartFile uploadfilef;
	
	
	
	
}//class
