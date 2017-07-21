package vendor.model;

import java.sql.Timestamp;
import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

public class VendorDto {
	private int num;
	private String id;
	private String name;
	private String companyname;
	private String companyno;
	private String phone;
	private String faxno;
	private String email;
	private String address;
	private String sellvendor;
	private String buyvendor;
	private String productvendor;
	private String filename;
	private Timestamp gaipday;
	private ArrayList<MultipartFile> upfile;
	private int answer;//해당 글에 달린 댓글 갯수를 저장
	
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getCompanyno() {
		return companyno;
	}
	public void setCompanyno(String companyno) {
		this.companyno = companyno;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFaxno() {
		return faxno;
	}
	public void setFaxno(String faxno) {
		this.faxno = faxno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSellvendor() {
		return sellvendor;
	}
	public void setSellvendor(String sellvendor) {
		this.sellvendor = sellvendor;
	}
	public String getBuyvendor() {
		return buyvendor;
	}
	public void setBuyvendor(String buyvendor) {
		this.buyvendor = buyvendor;
	}
	public String getProductvendor() {
		return productvendor;
	}
	public void setProductvendor(String productvendor) {
		this.productvendor = productvendor;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public Timestamp getGaipday() {
		return gaipday;
	}
	public void setGaipday(Timestamp gaipday) {
		this.gaipday = gaipday;
	}
	public ArrayList<MultipartFile> getUpfile() {
		return upfile;
	}
	public void setUpfile(ArrayList<MultipartFile> upfile) {
		this.upfile = upfile;
	}
	public int getAnswer() {
		return answer;
	}
	public void setAnswer(int answer) {
		this.answer = answer;
	}
	
	
	
}
