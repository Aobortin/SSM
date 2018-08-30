package com.shsxt.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shsxt.utils.ImageCutUtil;

/**
 * Created by lp on 2018/6/23.
 */
@Controller
public class TestController {
    @RequestMapping("test")
    public  String test(Model model){
        model.addAttribute("msg","hello ssm&freemarker");
        return "f01";
    }

    @RequestMapping("test02")
    public  String test02(HttpServletRequest request){
        request.setAttribute("ctx",request.getContextPath());
        return "f02";
    }
    
    @RequestMapping("uploadImg")
    public String uploadImg() {
    	return "uploadImg";
    }
    
    @RequestMapping(value = "/uploadHeadImage")
    public String uploadHeadImage(
            HttpServletRequest request,
            @RequestParam(value = "x") String x,
            @RequestParam(value = "y") String y,
            @RequestParam(value = "h") String h,
            @RequestParam(value = "w") String w,
            @RequestParam(value = "imgFile") MultipartFile imageFile
    ) throws Exception{
        System.out.println("==========Start=============");
        String realPath = request.getSession().getServletContext().getRealPath("/");
        String resourcePath = "resources/uploadImages/";
        if(imageFile!=null){
//            if(FileUploadUtil.allowUpload(imageFile.getContentType())){
//                String fileName = FileUploadUtil.rename(imageFile.getOriginalFilename());
                String fileName = imageFile.getOriginalFilename();
                int end = fileName.lastIndexOf(".");
                String saveName = fileName.substring(0,end);
                File dir = new File(realPath + resourcePath);
                if(!dir.exists()){
                    dir.mkdirs();
                }
                File file = new File(dir,saveName+"_src.jpg");
                imageFile.transferTo(file);
                String srcImagePath = realPath + resourcePath + saveName;
                int imageX = Integer.parseInt(x);
                int imageY = Integer.parseInt(y);
                int imageH = Integer.parseInt(h);
                int imageW = Integer.parseInt(w);
                //这里开始截取操作
                System.out.println("==========imageCutStart=============");
                ImageCutUtil.imgCut(srcImagePath,imageX,imageY,imageW,imageH);
                System.out.println("==========imageCutEnd=============");
            }
//        }
        return "user/uploadImg/test";
    }
}
