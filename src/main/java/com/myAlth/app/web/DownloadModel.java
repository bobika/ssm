package com.myAlth.app.web;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myAlth.app.model.Message;


@Controller
@RequestMapping("/modeling")
public class DownloadModel {
	@SuppressWarnings("null")
	@RequestMapping("/DownloadModel.do")
	public void download(Message msg,HttpServletResponse response, HttpServletRequest request) throws IOException {
		String modelPath=request.getParameter("modelpath");
		System.out.println(modelPath);
		System.out.println(modelPath.substring(modelPath.lastIndexOf("\\")));
//		String fileName = request.getSession().getServletContext().getRealPath("upload")+"/101.jpg";  
		String fileName=modelPath;
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileName)));  
        
        String filename = modelPath.substring(modelPath.lastIndexOf("\\"));  
        
        filename = URLEncoder.encode(filename,"UTF-8");  
        
        response.addHeader("Content-Disposition", "attachment;filename=" + filename);    
            
        response.setContentType("multipart/form-data");   
        
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());  
        int len = 0;  
        while((len = bis.read()) != -1){  
            out.write(len);  
            out.flush();  
        }  
        out.close();  
     
		
//		return new ModelAndView("Algorithm/Cluster/K-Means","message", null);
		
	}
}
