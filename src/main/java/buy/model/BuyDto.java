package buy.model;

import java.sql.Timestamp;
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
	private int buycount;
	private String unitno;
	private int buycost;
	private int buytotal;
	private int supplyprice;
	private int tax;
	private Timestamp enterday;
	private String buymemo;
	private Timestamp gaipday;
	
	
	
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
	public int getBuycount() {
		return buycount;
	}
	public void setBuycount(int buycount) {
		this.buycount = buycount;
	}
	public String getUnitno() {
		return unitno;
	}
	public void setUnitno(String unitno) {
		this.unitno = unitno;
	}
	public int getBuycost() {
		return buycost;
	}
	public void setBuycost(int buycost) {
		this.buycost = buycost;
	}
	public int getBuytotal() {
		return buytotal;
	}
	public void setBuytotal(int buytotal) {
		this.buytotal = buytotal;
	}
	public int getSupplyprice() {
		return supplyprice;
	}
	public void setSupplyprice(int supplyprice) {
		this.supplyprice = supplyprice;
	}
	public int getTax() {
		return tax;
	}
	public void setTax(int tax) {
		this.tax = tax;
	}
	public Timestamp getEnterday() {
		return enterday;
	}
	public void setEnterday(Timestamp enterday) {
		this.enterday = enterday;
	}
	public String getBuymemo() {
		return buymemo;
	}
	public void setBuymemo(String buymemo) {
		this.buymemo = buymemo;
	}
	public Timestamp getGaipday() {
		return gaipday;
	}
	public void setGaipday(Timestamp gaipday) {
		this.gaipday = gaipday;
	}


	
	
}
