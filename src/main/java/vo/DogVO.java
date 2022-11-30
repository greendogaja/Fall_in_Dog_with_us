package vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class DogVO {
	
	private int dno;
	private String title;
	private String protect;
	private String size;
	private String breed;
	private String gender;
	private int age;
	private String chrcter;
	private String neutering;
	private String dateofdis;
	private String identity;
	private String id;
	private String weight;
	private String img;
	private MultipartFile uploadfilef;
	private String[] check;
	
}