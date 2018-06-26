package com.myAlth.app.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@Controller
@RequestMapping("/file")
public class FileUploadUtils {
    @RequestMapping("/fileupload.do")
    public @ResponseBody  String upload(MultipartFile file, HttpServletRequest request) throws IOException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSS");
        String res = sdf.format(new Date());

        // uploads�ļ���λ��
        String rootPath = request.getSession().getServletContext().getRealPath("resource/uploads/");
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
        // ������url
        String fileUrl = date.get(Calendar.YEAR) + "/" + (date.get(Calendar.MONTH)+1) + "/" + newFileName;
        return  fileUrl;
    }
}

    