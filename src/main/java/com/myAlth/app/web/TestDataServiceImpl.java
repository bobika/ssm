package com.myAlth.app.web;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.myAlth.app.dao.EchartReportServiceImpl;
import com.myAlth.app.dao.TestDataService;
import com.myAlth.app.domain.ReportDataBean;

@Controller
@RequestMapping("/report")
public class TestDataServiceImpl extends EchartReportServiceImpl implements TestDataService{

	@Override  
	@RequestMapping("/getTestReportJson.do")
    public String getDataJson() {  
        ReportDataBean bean = new ReportDataBean();  
        List<String> categories = Arrays.asList("³ÄÉÀ","ÑòÃ«ÉÀ","Ñ©·ÄÉÀ");  
        List<List<Double>> data = Arrays.asList(Arrays.asList(1.2,3.4,5.6),Arrays.asList(4.5,6.7,8.9));
        System.out.println("))))))))"+data);
        bean.setCategories(categories);  
        bean.setData(data);  
        JSONObject jsonObj = (JSONObject)JSON.toJSON(bean);   
        System.out.println(jsonObj.get("data"));
        System.out.println(jsonObj.get("categories"));
        JSONArray array =new JSONArray();
        JSONObject jo = new JSONObject();
        JSONObject jo1 = new JSONObject();
        jo.put("name", "hello");
        jo.put("age", "19");
        array.add(jo);
        jo1.put("name", "he");
        jo1.put("age", "12");
        array.add(jo1);
        return array.toString();  
    } 
}
