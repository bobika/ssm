package com.myAlth.app.model;

import java.util.List;
import java.util.Map;

public class Algorithm {
	private String dataFile;
	private List<Integer> dataAttribution; 
	private Map<String, Object> parameter;
	private int parameterNumber;
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