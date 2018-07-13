package com.myAlth.app.web;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.myAlth.app.dao.ModelDao;
import com.myAlth.app.model.ModelBean;
@Controller
@RequestMapping("/modeling")
public class GetAllModels {
	@Resource
	private ModelDao modelDao;
	@SuppressWarnings("null")
	@RequestMapping("/GetAllModel.do")
    public @ResponseBody  List<ModelBean> getModels(MultipartFile file, HttpServletRequest request) throws IOException {
		List<ModelBean> models=modelDao.findAllModel();
    	for(int i=0;i<models.size();i++){
    		System.out.println(models.get(i).getId()+" "+models.get(i).getName()+" "+models.get(i).getFilepath());
    	}
    	
		return models;
	}
}
