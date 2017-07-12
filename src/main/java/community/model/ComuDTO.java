package community.model;

import java.sql.Timestamp;

public class ComuDTO {
	
	private int seq;
	private String b_title;
	private String b_content;
	private int b_readcount;
	private Timestamp b_date;
	private String b_seq;
	private String nick;

	
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getB_seq() {
		return b_seq;
	}
	public void setB_seq(String b_seq) {
		this.b_seq = b_seq;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public int getB_readcount() {
		return b_readcount;
	}
	public void setB_readcount(int b_readcount) {
		this.b_readcount = b_readcount;
	}
	public Timestamp getB_date() {
		return b_date;
	}
	public void setB_date(Timestamp b_date) {
		this.b_date = b_date;
	}
	
	
	
}
