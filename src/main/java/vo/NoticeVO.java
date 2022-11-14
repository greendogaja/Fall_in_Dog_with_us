package vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class NoticeVO {
	private int nno;
	private String title;
	private String content;
	private String id;
	private String regdate;
	private int cnt;
	private String subject;
	private String img;
	private MultipartFile uploadfilef;
	
}
