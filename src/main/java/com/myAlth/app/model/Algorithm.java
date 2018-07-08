package com.myAlth.app.model;

import java.util.List;
import java.util.Map;

public class Algorithm {
	private String dataFile;//数据存放路径
	private List<Integer> dataAttribution; //存放用于算法计算的参数列
	private Map<String, Object> parameter;//算法参数
	private int parameterNumber;//参数个数
	public List<Integer> getDataAttribution() {
		return dataAttribution;
	}
	public void setDataAttribution(List<Integer> dataAttribution) {
		this.dataAttribution = dataAttribution;
	}
	public Map<String, Object> getParameter() {
		return parameter;
	}
	public void setParameter(Map<String, Object> parameter) {
		this.parameter = parameter;
	}
	public String getDataFile() {
		return dataFile;
	}
	public void setDataFile(String dataFile) {
		this.dataFile = dataFile;
	}
	public Object run(){
		return null;
		
	}
	public int getParameterNumber() {
		return parameterNumber;
	}
	public void setParameterNumber(int parameterNumber) {
		this.parameterNumber = parameterNumber;
	}
	
}
