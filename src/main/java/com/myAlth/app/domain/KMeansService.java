package com.myAlth.app.domain;

import java.util.List;

public class KMeansService {
	private DataProcessingService dps; //�ļ�·��������
	private List<String> dataAttribution; //������ھ���Ĳ�������
	private int clusterNumber; //������Ŀ
	private int maxIter;  //����������
	private String centerCalculation; //���ļ���
	private String distanceCalculation;  //�������
	private int threads; //�߳���
	private double exitThreshold; //�˳���ֵ����Χ0-1
	public DataProcessingService getDis() {
		return dps;
	}
	public void setDis(DataProcessingService dis) {
		this.dps = dis;
	}
	public List<String> getDataAttribution() {
		return dataAttribution;
	}
	public void setDataAttribution(List<String> dataAttribution) {
		this.dataAttribution = dataAttribution;
	}
	public int getClusterNumber() {
		return clusterNumber;
	}
	public void setClusterNumber(int clusterNumber) {
		this.clusterNumber = clusterNumber;
	}
	public int getMaxIter() {
		return maxIter;
	}
	public void setMaxIter(int maxIter) {
		this.maxIter = maxIter;
	}
	public String getCenterCalculation() {
		return centerCalculation;
	}
	public void setCenterCalculation(String centerCalculation) {
		this.centerCalculation = centerCalculation;
	}
	public String getDistanceCalculation() {
		return distanceCalculation;
	}
	public void setDistanceCalculation(String distanceCalculation) {
		this.distanceCalculation = distanceCalculation;
	}
	public int getThreads() {
		return threads;
	}
	public void setThreads(int threads) {
		this.threads = threads;
	}
	public double getExitThreshold() {
		return exitThreshold;
	}
	public void setExitThreshold(double exitThreshold) {
		this.exitThreshold = exitThreshold;
	}
	public void KMeans() {
		
		
	}
	
}
