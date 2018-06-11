package com.myAlth.app.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myAlth.app.dao.GoodDao;
import com.myAlth.app.domain.Good;
import com.myAlth.app.domain.User;

@Controller
@RequestMapping(value = "/good")
public class GoodController {
	@Resource
	private GoodDao goodDao;
	
	@RequestMapping("/view")
	public String view() { 
		return "/login";
	}

    @RequestMapping("/indexview")
    public String index() {
        return "/index";
    }
    
    @RequestMapping("/query/{id}")
    @ResponseBody
    public Good QueryGood(@PathVariable("id") String id) throws Exception{
    	Good good = goodDao.findByGoodid(id);
    	System.out.println("***"+good.getGoodname());
    	return good;
    }

}
