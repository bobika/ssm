package com.myAlth.app.model;

public class Good {
	private String goodid;
	private String goodname;
	private int goodnumber;
	private double goodprice;
	
	public Good() {
		super();
	}
	public Good(String goodid, String goodname, int goodnumber, double goodprice) {
		super();
		this.goodid = goodid;
		this.goodname = goodname;
		this.goodnumber = goodnumber;
		this.goodprice = goodprice;
	}
	public String getGoodid() {
		return goodid;
	}
	public void setGoodid(String goodid) {
		this.goodid = goodid;
	}
	public String getGoodname() {
		return goodname;
	}
	public void setGoodname(String goodname) {
		this.goodname = goodname;
	}
	public int getGoodnumber() {
		return goodnumber;
	}
	public void setGoodnumber(int goodnumber) {
		this.goodnumber = goodnumber;
	}
	public double getGoodprice() {
		return goodprice;
	}
	public void setGoodprice(double goodprice) {
		this.goodprice = goodprice;
	}
	
	
	
}
