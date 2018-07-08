package com.myAlth.app.web;

import org.apache.xmlbeans.impl.jam.mutable.MSourcePosition;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.myAlth.app.domain.DataInputService;
import com.myAlth.app.domain.KMeansService;
import com.myAlth.app.model.Message;

import javax.servlet.http.HttpServletRequest;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/modeling")
public class FileUploadUtils {
    @SuppressWarnings("null")
	@RequestMapping("/fileupload.do")
    public @ResponseBody  ModelAndView upload(MultipartFile file, HttpServletRequest request) throws IOException {
    	Message message=new Message();
    	
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSS");
        String res = sdf.format(new Date());

        // uploads文件夹位置
        String rootPath = request.getSession().getServletContext().getRealPath("/resource/uploads/");
        System.out.println(rootPath);
        // 原始名称
        String originalFileName = file.getOriginalFilename();
        System.out.println(originalFileName);
        // 新文件名
        //String newFileName = originalFileName.substring(0, originalFileName.lastIndexOf("."))+"_" + res + originalFileName.substring(originalFileName.lastIndexOf("."));
        // 创建年月文件夹
        Calendar date = Calendar.getInstance();
        File dateDirs = new File(date.get(Calendar.YEAR) + File.separator + (date.get(Calendar.MONTH)+1));
        
        // 新文件
        File newFile = new File(rootPath + File.separator + dateDirs + File.separator
        		+originalFileName.substring(0, originalFileName.lastIndexOf("."))+"_" + res+File.separator + originalFileName);
         
        // 判断目标文件所在目录是否存在
        if( !newFile.getParentFile().exists()) {
            // 如果目标文件所在的目录不存在，则创建父目录
            newFile.getParentFile().mkdirs();
        }
        System.out.println(newFile);
        // 将内存中的数据写入磁盘
        file.transferTo(newFile);
        // 完整的url4
        String fileUrl = date.get(Calendar.YEAR) + "/" + (date.get(Calendar.MONTH)+1) + "/"
        		+originalFileName.substring(0, originalFileName.lastIndexOf("."))+"_" + res+"/" + originalFileName;
        String RealPathDir = request.getSession().getServletContext()  
                .getRealPath("/resource/uploads/"+fileUrl); 
        System.out.println("***"+RealPathDir);
        DataInputService array = new DataInputService();//创建DataInputService对象
        List<JSONObject> jarray = new ArrayList<JSONObject>();
        int datanum = 0;
        try {
        	
            File filename = new File(RealPathDir); //获取文件名称
            //读取文件
            InputStreamReader reader = new InputStreamReader(new FileInputStream(filename));
            BufferedReader br = new BufferedReader(reader);
            
            String line="";
            line = br.readLine(); //先读文件一行
            String []str = line.split(","); //str用于存放将line以“ ”分割的字符串数组
        	int num = 0; //num用来计算文件中的数字条目个数
            for(String s : str) { //遍历一行得到数字数目
        		num ++;
        	}
            List <String> attribution = new ArrayList<String>();
            for(int i=0; i<num; i++) {
            	attribution.add(String.valueOf(i));
            }
            array.setAttribution(attribution);
            
            
            double []a = new double[num]; //a用来存放将数字字符串转为double
            int length = 0;   
            array.setFilename(originalFileName);  //array对象赋值 文件名称
            array.setNumberNum(num); //所含有的数字个数
            array.setPath(RealPathDir); //文件上传后路径
            
            while(line!=null) {
            	JSONObject jo = new JSONObject(); //创建JSONObject对象
            	str = line.split(",");
            	for(String s:str) {
            		a[length++] = Double.parseDouble(s);
            	}
            	length = 0;
            	for(int i=0;i<num;i++){
            		jo.put(String.valueOf(i), a[i]);
            	}

                jarray.add(jo);
                datanum++;
            	line = br.readLine();
            	
            }
            array.setJarray(jarray);
            array.setDataNum(datanum);
            
            
        }catch (Exception e) {  
            e.printStackTrace();  
        }  
        message.setDataInput(array);
        return new ModelAndView("Algorithm/Cluster/K-Means","message", message);
    }
}

    