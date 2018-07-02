package com.myAlth.app.domain;

import java.util.List;

public class ReportDataBean {

	private List<String> categories;
	private List<List<Double>> data;
	public List<String> getCategories() {
		return categories;
	}
	public void setCategories(List<String> categories) {
		this.categories = categories;
	}
	public List<List<Double>> getData() {
		return data;
	}
	public void setData(List<List<Double>> data) {
		this.data = data;
	}
	
}
