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
	private int top;
	private MultipartFile uploadfilef;
	private String mainImg;
	private MultipartFile mainImgFile;
	
	// user 테이블에서 가져올 uploadfile 담는 vo
	private String uploadfile;
	
	private int grp;
	private int grps;
	private String nname;
	
}
