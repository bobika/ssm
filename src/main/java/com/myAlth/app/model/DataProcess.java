package com.myAlth.app.model;

import java.util.List;
import java.util.Map;

public class DataProcess {

	private List<Integer> selectedData;//ѡ���������
	private int selectedDataNumber;
	private List<Integer> normalizeMethod;//ÿ���������Ƿ�����
	private List<Integer> regularizeMethod;//ÿ���������Ƿ��һ��
	private int missDataProcessMethod;//ȱʧ���ݵĴ�����
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
