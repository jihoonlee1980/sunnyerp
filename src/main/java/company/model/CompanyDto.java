package company.model;

import java.sql.Timestamp;
import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

public class CompanyDto {
	private int num;
	private String id;
	private String name;
	private String address;
	private String hp;
	private String companyno;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getCompanyno() {
		return companyno;
	}
	public void setCompanyno(String companyno) {
		this.companyno = companyno;
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
