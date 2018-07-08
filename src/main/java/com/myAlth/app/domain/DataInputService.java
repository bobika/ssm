package com.myAlth.app.domain;

import java.util.Arrays;
import java.util.List;

import com.alibaba.fastjson.JSONObject;
public class DataInputService {
	private List<JSONObject> jarray;
	private String path;
	private String filename;
	private int numberNum; //数组中数字的个数
	private int dataNum;
	private List<String> attribution;
	private boolean worked=false;
	public List<String> getAttribution() {
		return attribution;
	}
	public void setAttribution(List<String> attribution) {
		this.attribution = attribution;
	}
	public List<JSONObject> getJarray() {	
		return jarray;
	}
	public void setJarray(List<JSONObject> jarray) {
		this.jarray = jarray;
	}
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
	public boolean isWorked() {
		return worked;
	}
	public void setWorked(boolean worked) {
		this.worked = worked;
	}
}
