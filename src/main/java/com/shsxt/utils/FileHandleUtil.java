package com.shsxt.utils;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

public class FileHandleUtil {
	public static void upload(HttpServletRequest request,String destPath,String fileName)  throws IllegalStateException, IOException{
		 CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(request.getSession().getServletContext());
		    //检查form中是否有enctype="multipart/form-data"
		    if(multipartResolver.isMultipart(request)){
		        //将request变成多部分request
		        MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
		       //获取multiRequest 中所有的文件名
		        Iterator<String> iter=multiRequest.getFileNames();
		         
		        while(iter.hasNext()){
		            //一次遍历所有文件
		            MultipartFile file=multiRequest.getFile(iter.next().toString());
		            if(file!=null){
		            	StringBuilder path=new StringBuilder(destPath);
		            	if(fileName!=null) {
		            		String[] split = file.getOriginalFilename().split("\\.");
		            		String suffix = split[split.length-1];
		            		path.append(fileName).append(".").append(suffix);
		            	}else {
		            		path.append(file.getOriginalFilename());
		            	}
		                //上传
		                file.transferTo(new File(path.toString()));
		            }
		        }
		    }
	}
}
