package com.myAlth.app.web;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.myAlth.app.domain.DataInputService;
import com.myAlth.app.model.Message;
import com.myAlth.app.model.Model;
import com.penghaisoft.MachineLearningLibrary.clustering.KMeans;

@Controller
@RequestMapping("/modeling")
public class SaveModel {
	@SuppressWarnings("null")
	@RequestMapping("/SaveModel.do")
    public @ResponseBody  ModelAndView Calculate(Message msg,HttpServletResponse response, HttpServletRequest request) throws IOException {
		int parameterNumber=Integer.parseInt(request.getParameter("parameterNumber"));
		System.out.println(parameterNumber);
		Map<String, Object> parameter=new HashMap<String, Object>();
		for(int i=0;i<parameterNumber;i++){
			String temp=request.getParameter("parameter"+i);
			String[] str=temp.split(":");
			parameter.put(str[0], str[1]);
			System.out.println(temp);
		}
		String dataSetName=request.getParameter("dataSetName");
		String inputpath=request.getParameter("inputpath");
		String outputpath=request.getParameter("outputpath");
		String outputfile=request.getParameter("outputfile");
		int numberNum=Integer.parseInt(request.getParameter("numberNum"));
		List<Integer> selectedAttribute=new ArrayList<Integer>();
		for(int i=0;i<numberNum;i++){
			
			String temp=request.getParameter("attribute"+i);
			selectedAttribute.add(Integer.parseInt(temp));
		}
		String modelSavePath= inputpath.substring(0, inputpath.lastIndexOf("\\"));
		String modelSaveFile= inputpath.substring(0,inputpath.lastIndexOf(".")).substring(inputpath.lastIndexOf("\\"))+"(model).txt";
		String vispath=inputpath.substring(0,inputpath.lastIndexOf(".")).substring(inputpath.lastIndexOf("\\"))+"(vis).png";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSS");
        String res = sdf.format(new Date());
        
		
		Model model=new Model();
		model.setModelID(res);
		model.setModelName(dataSetName+"model");
		model.setDataSetName(dataSetName);
		model.setParameter(parameter);
		model.setParameterNumber(parameterNumber);
		model.setInputpath(inputpath);
		model.setSelectedAttribute(selectedAttribute);
		model.setAttributionNumber(numberNum);
		model.setOutputpath(outputpath);
		model.setSavepath(modelSavePath+modelSaveFile);
		model.setVispath(modelSavePath+vispath);
		String modelStr=JSONObject.toJSONString(model);
		File outFile = new File(model.getSavepath());  
        PrintStream ps = new PrintStream(new FileOutputStream(outFile)); 
        
        ps.append(modelStr);
	    ps.close();
	    System.out.println(model.getSavepath());
	     return new ModelAndView("Algorithm/Cluster/K-Means","array", null);
		
	}
}
