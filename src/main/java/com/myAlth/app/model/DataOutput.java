package com.myAlth.app.model;

import java.util.List;

public class DataOutput {
	private String path;
	private String filename;
	private Object result;
	private int numberNum; //数组中数字的个数
	private int dataNum;
	private List<String> attribution;
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public Object getResult() {
		return result;
	}
	public void setResult(Object result) {
		this.result = result;
	}
	public int getNumberNum() {
		return numberNum;
	}
	public void setNumberNum(int numberNum) {
		this.numberNum = numberNum;
	}
	public int getDataNum() {
		return dataNum;
	}
	public void setDataNum(int dataNum) {
		this.dataNum = dataNum;
	}
	public List<String> getAttribution() {
		return attribution;
	}
	public void setAttribution(List<String> attribution) {
		this.attribution = attribution;
	}

	
}
