package com.myAlth.app.model;

public class ModelBean {
	private String id;
	private String name;
	private String type;
	private String filepath;
	private String scenarios;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	public String getScenarios() {
		return scenarios;
	}
	public void setScenarios(String scenarios) {
		this.scenarios = scenarios;
	}
}
