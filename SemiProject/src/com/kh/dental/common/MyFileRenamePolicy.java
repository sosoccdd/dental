package com.kh.dental.common;

import java.io.File;
<<<<<<< HEAD
import java.text.SimpleDateFormat;
=======
>>>>>>> subin
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

<<<<<<< HEAD
public class MyFileRenamePolicy implements FileRenamePolicy {

	
	public File rename(File oldFile) {
		
		File newFile = null;
		long currentTime = System.currentTimeMillis();
		
		System.out.println(currentTime);
		SimpleDateFormat ft = new SimpleDateFormat("yyyyMMddHHmmss");
		int randomNumber = (int)(Math.random()*10000);
		
		String name = oldFile.getName();
		String body = null;
		String ext = null;
		int dot = name.lastIndexOf(".");
		System.out.println(dot);
		if(dot != -1) {		
			
			body = name.substring(0, dot);
			ext=name.substring(dot);
			
		}else {
			
			body =name;
			ext= "";
		}
		String fileName = ft.format(new Date(currentTime))+randomNumber+ext;
		
		newFile = new File(oldFile.getParentFile(),fileName);
		
		
		return newFile;
	}
=======
import java.text.SimpleDateFormat;

public class MyFileRenamePolicy implements FileRenamePolicy {

	@Override
	public File rename(File oldFile) {
	      
	      File newFile = null;
	      long currentTime = System.currentTimeMillis();
	      
	      System.out.println(currentTime);
	      SimpleDateFormat ft = new SimpleDateFormat("yyyyMMddHHmmss");
	      int randomNumber = (int)(Math.random()*10000);
	      
	      String name = oldFile.getName();
	      String body = null;
	      String ext = null;
	      int dot = name.lastIndexOf(".");
	      System.out.println(dot);
	      if(dot != -1) {      
	         
	         body = name.substring(0, dot);
	         ext=name.substring(dot);
	         
	      }else {
	         
	         body =name;
	         ext= "";
	      }
	      String fileName = ft.format(new Date(currentTime))+randomNumber+ext;
	      
	      newFile = new File(oldFile.getParentFile(),fileName);
	      
	      
	      return newFile;
	   }
	
	
>>>>>>> subin
	
	
}
