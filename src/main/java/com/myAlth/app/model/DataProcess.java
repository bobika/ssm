package com.myAlth.app.model;

import java.util.List;
import java.util.Map;

public class DataProcess {

	private List<Integer> selectedData;//选择的数据列
	private int selectedDataNumber;
	private List<Integer> normalizeMethod;//每个数据列是否正则化
	private List<Integer> regularizeMethod;//每个数据列是否归一化
	private int missDataProcessMethod;//缺失数据的处理方法
	public List<Integer> getSelectedData() {
		return selectedData;
	}
	public void setSelectedData(List<Integer> selectedData) {
		this.selectedData = selectedData;
	}
	public int getMissDataProcessMethod() {
		return missDataProcessMethod;
	}
	public void setMissDataProcessMethod(int missDataProcessMethod) {
		this.missDataProcessMethod = missDataProcessMethod;
	}
	public List<Integer> getNormalizeMethod() {
		return normalizeMethod;
	}
	public void setNormalizeMethod(List<Integer> normalizeMethod) {
		this.normalizeMethod = normalizeMethod;
	}
	public List<Integer> getRegularizeMethod() {
		return regularizeMethod;
	}
	public void setRegularizeMethod(List<Integer> regularizeMethod) {
		this.regularizeMethod = regularizeMethod;
	}
	public int getSelectedDataNumber() {
		return selectedDataNumber;
	}
	public void setSelectedDataNumber(int selectedDataNumber) {
		this.selectedDataNumber = selectedDataNumber;
	}


}
