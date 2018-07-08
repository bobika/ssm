package com.myAlth.app.model;

import java.util.List;
import java.util.Map;


public class Model {
	private String modelID;
	private String modelName;
	private String dataSetName;
	private String modelField;//应用领域
	private String modelDistribution;
	private Map<String, Object> parameter;//算法模型参数
	private int parameterNumber;
	private String inputpath;
	private List<Integer> selectedAttribute;
	private int attributionNumber;
	private String outputpath;
	private String vispath;
	private String savepath;
	public String getModelID() {
		return modelID;
	}
	public void setModelID(String modelID) {
		this.modelID = modelID;
	}
	public String getModelName() {
		return modelName;
	}
	public void setModelName(String modelName) {
		this.modelName = modelName;
	}
	public String getDataSetName() {
		return dataSetName;
	}
	public void setDataSetName(String dataSetName) {
		this.dataSetName = dataSetName;
	}
	public String getModelField() {
		return modelField;
	}
	public void setModelField(String modelField) {
		this.modelField = modelField;
	}
	public String getModelDistribution() {
		return modelDistribution;
	}
	public void setModelDistribution(String modelDistribution) {
		this.modelDistribution = modelDistribution;
	}
	public Map<String, Object> getParameter() {
		return parameter;
	}
	public void setParameter(Map<String, Object> parameter) {
		this.parameter = parameter;
	}
	public String getInputpath() {
		return inputpath;
	}
	public void setInputpath(String inputpath) {
		this.inputpath = inputpath;
	}
	public List<Integer> getSelectedAttribute() {
		return selectedAttribute;
	}
	public void setSelectedAttribute(List<Integer> selectedAttribute) {
		this.selectedAttribute = selectedAttribute;
	}
	public String getOutputpath() {
		return outputpath;
	}
	public void setOutputpath(String outputpath) {
		this.outputpath = outputpath;
	}
	public String getVispath() {
		return vispath;
	}
	public void setVispath(String vispath) {
		this.vispath = vispath;
	}
	public String getSavepath() {
		return savepath;
	}
	public void setSavepath(String savepath) {
		this.savepath = savepath;
	}
	public int getParameterNumber() {
		return parameterNumber;
	}
	public void setParameterNumber(int parameterNumber) {
		this.parameterNumber = parameterNumber;
	}
	public int getAttributionNumber() {
		return attributionNumber;
	}
	public void setAttributionNumber(int attributionNumber) {
		this.attributionNumber = attributionNumber;
	}

	
}
