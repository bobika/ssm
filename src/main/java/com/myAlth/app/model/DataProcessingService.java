package com.myAlth.app.model;

import java.util.List;

public class DataProcessingService {

	private DataInputService dis;
	private List<String> missingValueProcessing; //����ȱʧֵ����
	private List<String> dataTransformation; //����ת��
	public DataInputService getDis() {
		return dis;
	}
	public void setDis(DataInputService dis) {
		this.dis = dis;
	}
	public List<String> getMissingValueProcessing() {
		return missingValueProcessing;
	}
	public void setMissingValueProcessing(List<String> missingValueProcessing) {
		this.missingValueProcessing = missingValueProcessing;
	}
	public List<String> getDataTransformation() {
		return dataTransformation;
	}
	public void setDataTransformation(List<String> dataTransformation) {
		this.dataTransformation = dataTransformation;
	}
	public DataInputService processMissingValue(DataInputService dis, String missingValueProcessing) {
		
		return dis;
	}
	public DataInputService processDataTransformation(DataInputService dis, String dataTransformation) {
		
		return dis;
	}
	
}
