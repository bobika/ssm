
package com.myAlth.app.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.myAlth.app.domain.DataInputService;

public class Message {

	private DataInputService dataInput;
	private DataProcess dataProcess;
	private Algorithm algorithm;
	private DataOutput dataOutput;
	private Model model;
	public DataInputService getDataInput() {
		return dataInput;
	}
	public void setDataInput(DataInputService dataInput) {
		this.dataInput = dataInput;
	}
	public DataProcess getDataProcess() {
		return dataProcess;
	}
	public void setDataProcess(DataProcess dataProcess) {
		this.dataProcess = dataProcess;
	}
	public Algorithm getAlgorithm() {
		return algorithm;
	}
	public void setAlgorithm(Algorithm algorithm) {
		this.algorithm = algorithm;
	}
	public DataOutput getDataOutput() {
		return dataOutput;
	}
	public void setDataOutput(DataOutput dataOutput) {
		this.dataOutput = dataOutput;
	}
	public Model getModel() {
		return model;
	}
	public void setModel(Model model) {
		this.model = model;
	}
	
}