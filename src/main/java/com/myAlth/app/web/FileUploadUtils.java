package com.myAlth.app.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.myAlth.app.domain.DataInputService;

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
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSS");
        String res = sdf.format(new Date());

        // uploads�ļ���λ��
        String rootPath = request.getSession().getServletContext().getRealPath("resource/uploads/");
        System.out.println(rootPath);
        // ԭʼ����
        String originalFileName = file.getOriginalFilename();
        System.out.println(originalFileName);
        // ���ļ���
        String newFileName = "sliver" + res + originalFileName.substring(originalFileName.lastIndexOf("."));
        // ���������ļ���
        Calendar date = Calendar.getInstance();
        File dateDirs = new File(date.get(Calendar.YEAR) + File.separator + (date.get(Calendar.MONTH)+1));
        
        // ���ļ�
        File newFile = new File(rootPath + File.separator + dateDirs + File.separator + newFileName);
         
        // �ж�Ŀ���ļ�����Ŀ¼�Ƿ����
        if( !newFile.getParentFile().exists()) {
            // ���Ŀ���ļ����ڵ�Ŀ¼�����ڣ��򴴽���Ŀ¼
            newFile.getParentFile().mkdirs();
        }
        System.out.println(newFile);
        // ���ڴ��е�����д�����
        file.transferTo(newFile);
        // ������url4
        String fileUrl = date.get(Calendar.YEAR) + "/" + (date.get(Calendar.MONTH)+1) + "/" + newFileName;
        String RealPathDir = request.getSession().getServletContext()  
                .getRealPath("resource/uploads/"+fileUrl); 
        System.out.println("***"+RealPathDir);
        DataInputService array = new DataInputService();//����DataInputService����
        List<JSONObject> jarray = new ArrayList<JSONObject>();
        JSONObject jo = new JSONObject(); //����JSONObject����
        int datanum = 0;
        try {
        	
            File filename = new File(RealPathDir); //��ȡ�ļ�����
            //��ȡ�ļ�
            InputStreamReader reader = new InputStreamReader(new FileInputStream(filename));
            BufferedReader br = new BufferedReader(reader);
            
            String line="";
            line = br.readLine(); //�ȶ��ļ�һ��
            String []str = line.split(" "); //str���ڴ�Ž�line�ԡ� ���ָ���ַ�������
        	int num = 0; //num���������ļ��е�������Ŀ����
            for(String s : str) { //����һ�еõ�������Ŀ
        		num ++;
        	}
            double []a = new double[num]; //a������Ž������ַ���תΪdouble
            int length = 0;   
            array.setFilename(originalFileName);  //array����ֵ �ļ�����
            array.setNumberNum(num); //�����е����ָ���
            array.setPath(RealPathDir); //�ļ��ϴ���·��
            
            while(line!=null) {
            	JSONObject jo1 = new JSONObject(); //����JSONObject����
            	str = line.split(" ");
            	for(String s:str) {
            		System.out.println(s);
            		a[length++] = Double.parseDouble(s);
            	}
            	length = 0;
                jo1.put("first", a[0]);
                jo1.put("second", a[1]);
                jo1.put("third", a[2]);
                jo1.put("forth", a[3]);
                jo1.put("fifth", a[4]);
                System.out.println(jo1);
                jarray.add(jo1);
                System.out.println("****"+jarray);
                datanum++;
            	line = br.readLine();
            	
            }
            array.setJarray(jarray);
            array.setDataNum(datanum);
            List <String> attribution = new ArrayList<String>();
            for(int i=0; i<num; i++) {
            	attribution.add(String.valueOf(i));
            }
            System.out.println(attribution);
            array.setAttribution(attribution);
            
        }catch (Exception e) {  
            e.printStackTrace();  
        }  
        
        return new ModelAndView("Algorithm/Cluster/K-Means","array", array);
    }
}

    