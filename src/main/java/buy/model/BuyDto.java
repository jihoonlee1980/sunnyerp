package buy.model;

import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

public class BuyDto {
	private int num;
	private String id;
	private String name;
	private String vendorno;
	private String buycodeno;
	private String buyvendor;
	private String productvendor;
	private String goodsno;
	private String buygoods;
	private double buycount;
	private String unitno;
	private double buycost;
	private double buytotal;
	private double supplyprice;
	private double tax;
	private String enterday;
	private String buymemo;
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
	public String getVendorno() {
		return vendorno;
	}
	public void setVendorno(String vendorno) {
		this.vendorno = vendorno;
	}
	public String getBuycodeno() {
		return buycodeno;
	}
	public void setBuycodeno(String buycodeno) {
		this.buycodeno = buycodeno;
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
	public String getGoodsno() {
		return goodsno;
	}
	public void setGoodsno(String goodsno) {
		this.goodsno = goodsno;
	}
	public String getBuygoods() {
		return buygoods;
	}
	public void setBuygoods(String buygoods) {
		this.buygoods = buygoods;
	}
	public double getBuycount() {
		return buycount;
	}
	public void setBuycount(double buycount) {
		this.buycount = buycount;
	}
	public String getUnitno() {
		return unitno;
	}
	public void setUnitno(String unitno) {
		this.unitno = unitno;
	}
	public double getBuycost() {
		return buycost;
	}
	public void setBuycost(double buycost) {
		this.buycost = buycost;
	}
	public double getBuytotal() {
		return buytotal;
	}
	public void setBuytotal(double buytotal) {
		this.buytotal = buytotal;
	}
	public double getSupplyprice() {
		return supplyprice;
	}
	public void setSupplyprice(double supplyprice) {
		this.supplyprice = supplyprice;
	}
	public double getTax() {
		return tax;
	}
	public void setTax(double tax) {
		this.tax = tax;
	}
	public String getEnterday() {
		return enterday;
	}
	public void setEnterday(String enterday) {
		this.enterday = enterday;
	}
	public String getBuymemo() {
		return buymemo;
	}
	public void setBuymemo(String buymemo) {
		this.buymemo = buymemo;
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
