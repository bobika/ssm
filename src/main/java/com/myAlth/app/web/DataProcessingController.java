package com.myAlth.app.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.myAlth.app.model.DataInputService;

@Controller
@RequestMapping("/modeling")
public class DataProcessingController {

    @SuppressWarnings("null")
	@RequestMapping("/dataprocessing.do")
    public @ResponseBody  ModelAndView dataprocess(HttpServletRequest request) throws IOException {
    	
    	String s = request.getParameter("MissSelect");
    	System.out.println(s);
    	
    	
    	return new ModelAndView("Algorithm/Cluster/K-Means");
    }

}
