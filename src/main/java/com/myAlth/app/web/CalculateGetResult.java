package com.myAlth.app.web;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.penghaisoft.MachineLearningLibrary.clustering.*;
import com.alibaba.fastjson.JSONObject;
import com.myAlth.app.domain.DataInputService;
import com.myAlth.app.domain.KMeansService;
import com.myAlth.app.model.Algorithm;
import com.myAlth.app.model.DataOutput;
import com.myAlth.app.model.DataProcess;
import com.myAlth.app.model.Message;

@Controller
@RequestMapping("/modeling")
public class CalculateGetResult {

	@SuppressWarnings("null")
	@RequestMapping("/CalculateGetResult.do")
    public @ResponseBody  ModelAndView Calculate(HttpServletResponse response, HttpServletRequest request) throws IOException {
		int datanumber=Integer.parseInt(request.getParameter("datanumber"));
		String path=request.getParameter("path");
		String filename=request.getParameter("filename");
		
		
		
		
			
		DataProcess dataProcess=new DataProcess();
		int missdata=Integer.parseInt(request.getParameter("missdata"));
		List<Integer> selectedData=new ArrayList<Integer>();
		String[] data_select=request.getParameterValues("data_select");
		System.out.println(data_select);
		for(String s : data_select){
			selectedData.add(Integer.parseInt(s));
		}
		List<Integer> normalizeMethod=new ArrayList<Integer>();
		for(int i=0;i<datanumber;i++){
			String temp=request.getParameter("normalization_"+i);
			normalizeMethod.add(Integer.parseInt(temp));
		}
		List<Integer> regularizeMethod=new ArrayList<Integer>();
		for(int i=0;i<datanumber;i++){
			String temp=request.getParameter("regularization_"+i);
			regularizeMethod.add(Integer.parseInt(temp));
		}
		dataProcess.setMissDataProcessMethod(missdata);
		dataProcess.setSelectedData(selectedData);
		dataProcess.setSelectedDataNumber(selectedData.size());
		
		
		int clusterNumber=Integer.parseInt(request.getParameter("clusterNumber"));
		int maxIter=Integer.parseInt(request.getParameter("maxIter"));
		int centerCalculation=Integer.parseInt(request.getParameter("centerCalculation"));
		int distanceCalculation=Integer.parseInt(request.getParameter("distanceCalculation"));
		int threads=Integer.parseInt(request.getParameter("threads"));
		double exitThreshold=Double.parseDouble(request.getParameter("exitThreshold"));
		Algorithm kmeans=new KMeansService(path, selectedData, clusterNumber, maxIter, centerCalculation, distanceCalculation, threads, exitThreshold);
		
		
		DataInputService input = new DataInputService();//创建DataInputService对象
		DataOutput output=new DataOutput();
        List<JSONObject> inputdata = new ArrayList<JSONObject>();
        List<JSONObject> outputdata = new ArrayList<JSONObject>();
        List<List<Object>> data=new ArrayList<List<Object>>();//算法输入数据
        int datanum = 0;
		 try {
	        	
	            File file = new File(path); //获取文件名称
	            //读取文件
	            InputStreamReader reader = new InputStreamReader(new FileInputStream(file));
	            BufferedReader br = new BufferedReader(reader);
	            
	            String line="";
	            line = br.readLine(); //先读文件一行
	            String []str = line.split(","); //str用于存放将line以“ ”分割的字符串数组
	        	int num = 0; //num用来计算文件中的数字条目个数
	            for(String s : str) { //遍历一行得到数字数目
	        		num ++;
	        	}
	            double []a = new double[num]; //a用来存放将数字字符串转为double
	            int length = 0;   
	            
	            
	            while(line!=null) {
	            	JSONObject jo = new JSONObject(); //创建JSONObject对象

	            	ArrayList<Object> d=new ArrayList<Object>();
	            	str = line.split(",");
	            	for(String s:str) {
	            		a[length++] = Double.parseDouble(s);
	            		d.add(Double.parseDouble(s));
	            	}
	            	for(int i=0;i<num;i++){
	            		jo.put(String.valueOf(i), a[i]);
	            	}

	            	inputdata.add(jo);
	            	data.add(d);
	            	length = 0;

	                datanum++;
	            	line = br.readLine();
	            	
	            }
	            
	            input.setFilename(filename);  //array对象赋值 文件名称
	            input.setNumberNum(num); //所含有的数字个数
	            input.setPath(path); //文件上传后路径
	            input.setJarray(inputdata);
	            input.setDataNum(datanum);
	            List <String> attribution = new ArrayList<String>();
	            for(int i=0; i<num; i++) {
	            	attribution.add(String.valueOf(i));
	            }
	            input.setAttribution(attribution);
	            input.setWorked(true);
	            
	            
	            //发送数据到算法
	            ArrayList<ArrayList<Object>> result=(ArrayList<ArrayList<Object>>)kmeans.run();
	            String outputpath="";
	            outputpath=path.substring(0,path.lastIndexOf("\\"));
//	            System.out.println(outputpath);
	            String outputname=path.substring(0,path.lastIndexOf(".")).substring(path.lastIndexOf("\\"))+"(result)"+path.substring(path.lastIndexOf("."));
//	            System.out.println(outputname);
//	            System.out.println(outputpath+outputname);
	            
	            File outFile = new File(outputpath+outputname);  
	            PrintStream ps = new PrintStream(new FileOutputStream(outFile)); 
	            
	    	    for(int i=0;i<result.size();i++){
	    	    	for(int j=0;j<result.get(i).size();j++){
	    	    		ps.append(result.get(i).get(j).toString());
	    	    		if(j<result.get(i).size()-1)
	    	    			ps.append(",");
	    	    	}
	    	    	ps.append("\n");
	    	    }
	    	    ps.close();
	    	    
	            for(int i=0;i<result.size();i++){
	            	JSONObject jo = new JSONObject(); //创建JSONObject对象
	            	for(int j=0;j<result.get(i).size()-1;j++){
	            		jo.put(String.valueOf(j), result.get(i).get(j));
	            	}
	            	jo.put("classes", result.get(i).get(result.get(i).size()-1));
	            	outputdata.add(jo);
	            }
	            output.setResult(outputdata);
	            
	            int dataNum=result.size();
	            int numberNum=result.get(0).size();
	            List<String> selected_attribution=new ArrayList<String>();
	            for(int i=0;i<selectedData.size();i++){
	            	selected_attribution.add(attribution.get(selectedData.get(i)));
	            }
	            output.setAttribution(selected_attribution);
	            output.setDataNum(dataNum);
	            output.setNumberNum(numberNum);
	            output.setPath(outputpath+outputname);
	            output.setFilename(outputname);
	            
	        }catch (Exception e) {  
	            e.printStackTrace();  
	        }  
		 
		 Message message=new Message();
		 message.setAlgorithm(kmeans);
		 message.setDataInput(input);
		 message.setDataProcess(dataProcess);
		 message.setDataOutput(output);
		 

	     return new ModelAndView("Algorithm/Cluster/K-Means","message", message);
		
	}
}
