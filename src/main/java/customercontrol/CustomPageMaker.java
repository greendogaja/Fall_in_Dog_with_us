package customercontrol;

import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class CustomPageMaker {
	private int totalRowsCount; // 전체Row 갯수 (전체 Page수 계산위해 필요)
	private int spageNo; // view 에 표시할 첫 PageNo
	private int epageNo; // view 에 표시할 끝 PageNo
	
	private int displayPageNo=3; //  1Page당 표시할 pageNo갯수
	private int lastPageNo; 
	private boolean prev; // 이전 PageBlock 으로
	private boolean next; // 다음 PageBlock 으로
	
	private CustomSearchCriteria cri;  // ver02
	
	public void setCri(CustomSearchCriteria cri) { 
		this.cri=cri; 
	} 
	
	// 2) totalRowCount
	public void setTotalRowsCount(int totalRowsCount) { 
		this.totalRowsCount=totalRowsCount; 
		calcData();
	} 
	
	public void calcData() {
		epageNo=(int)Math.ceil(cri.getCurrPage()/(double)displayPageNo) * displayPageNo;
		spageNo= (epageNo-displayPageNo) + 1 ;
		
		lastPageNo=(int)Math.ceil(totalRowsCount/(double)cri.getRowsPerPage()) ;
		if ( epageNo>lastPageNo ) epageNo=lastPageNo ;
		
		prev = spageNo==1 ? false : true;
		next = epageNo==lastPageNo ? false : true;
	} //calcData
	
	public String makeQuery(int currPage) {
		UriComponents uriComponents = 
				UriComponentsBuilder.newInstance().
				queryParam("currPage", currPage).
				queryParam("rowsPerPage", cri.getRowsPerPage()).
				build();
		return uriComponents.toString(); 
	} //makeQuery
	
	
	public String searchQuery(int currPage) {
		
		MultiValueMap<String, String> checkMap = new LinkedMultiValueMap<String, String>();
		if (cri.getCheck()!=null) {
			for ( String c:cri.getCheck()) {
				checkMap.add("check", c);
			} //for
		}else checkMap = null;
		
		UriComponents uriComponents = UriComponentsBuilder.newInstance().
				queryParam("currPage", currPage).
				queryParam("rowsPerPage", cri.getRowsPerPage()).
				queryParam("searchType", cri.getSearchType()).
				queryParam("keyword", cri.getKeyword()).
				queryParam("namekey", cri.getNamekey()).
				queryParam("phonekey", cri.getPhonekey()).
				queryParam("idkey", cri.getIdkey()).
				queryParams(checkMap).
				build();
		return uriComponents.toString();
	} //searchQuery
}
