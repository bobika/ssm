package com.myAlth.app.domain;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSONObject;
import com.myAlth.app.model.Algorithm;
import com.penghaisoft.MachineLearningLibrary.clustering.KMeans;
public class KMeansService extends Algorithm {
	public KMeansService(String dataFile, List<Integer> dataAttribution, int clusterNumber, int maxIter,
			int centerCalculation, int distanceCalculation, int threads, double exitThreshold) {
		Map<String, Object> parameter = new HashMap<String, Object>();
		parameter.put("clusterNumber", clusterNumber);
		parameter.put("maxIter", maxIter);
		parameter.put("centerCalculation", centerCalculation);
		parameter.put("distanceCalculation", distanceCalculation);
		parameter.put("threads", threads);
		parameter.put("exitThreshold", exitThreshold);
		this.setParameter(parameter);
		this.setDataFile(dataFile);
		this.setDataAttribution(dataAttribution);
		this.setParameterNumber(6);
		
	}
	@Override
	public ArrayList<ArrayList<Object>> run() {
		List<List<Object>> data = new ArrayList<List<Object>>();
		ArrayList<ArrayList<Object>> result=new ArrayList<ArrayList<Object>>();
		int clusterNumber = (int) this.getParameter().get("clusterNumber");
		int maxIter = (int) this.getParameter().get("maxIter");
		int centerCalculation = (int) this.getParameter().get("centerCalculation");
		int distanceCalculation = (int) this.getParameter().get("distanceCalculation");
		int threads = (int) this.getParameter().get("threads");
		double exitThreshold = (double) this.getParameter().get("exitThreshold");
		try {

			File file = new File(this.getDataFile()); 
			
			InputStreamReader reader = new InputStreamReader(new FileInputStream(file));
			BufferedReader br = new BufferedReader(reader);

			String line = "";
			line = br.readLine(); 
			String[] str = line.split(","); 
			while (line != null) {
				ArrayList<Object> d = new ArrayList<Object>();
				str = line.split(",");

				for (int i = 0; i < this.getDataAttribution().size(); i++) {
					d.add(Double.parseDouble(str[this.getDataAttribution().get(i)]));
				}

				data.add(d);
				line = br.readLine();

			}

			
			KMeans kmeans = new KMeans();
			result = kmeans.ClusteringbyKMeans(data, clusterNumber, maxIter,
					centerCalculation, distanceCalculation, threads, exitThreshold);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
