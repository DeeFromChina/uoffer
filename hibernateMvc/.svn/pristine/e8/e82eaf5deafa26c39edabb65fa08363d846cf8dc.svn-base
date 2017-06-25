package com.offer.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class FileUtils {
   
   /**
    * 写文件
    * @param filePath
    * @param image
    */
	public static void fileUpload(String filePath,File image) {
        FileOutputStream fos = null;
        FileInputStream fis = null;
        try {
        	File file = new File(filePath);
			if (!file.exists()) file.createNewFile();
            // 建立文件输出流
            fos = new FileOutputStream(filePath);
            // 建立文件上传流
            fis = new FileInputStream(image);
            byte[] buffer = new byte[1024];
            int len = 0;
            while ((len = fis.read(buffer)) > 0) {
                fos.write(buffer, 0, len);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
			try {
				if (fos != null) fos.close();
				if (fis != null) fis.close();
			} catch (IOException e) {
				e.printStackTrace();
			}

        }
    }
	
	/**
	 * 删除文件
	 * @param filePath
	 */
	public static void deleteFile(String filePath) {
		File file = new File(filePath);		
		if(file.exists()) 
			file.delete();
	}

	/**
	 * 读取文件为String
	 * @param src
	 * @return
	 */
   public static String readFromFile(File src) {
      BufferedReader bufferedReader = null;
      try {
         bufferedReader = new BufferedReader(new FileReader(src));
         StringBuilder stringBuilder = new StringBuilder();
         String content;
         while ((content = bufferedReader.readLine()) != null) {
            stringBuilder.append(content);
         }
         return stringBuilder.toString();
      }
      catch (FileNotFoundException e) {
         e.printStackTrace();
         return null;
      }
      catch (IOException e) {
         e.printStackTrace();
         return null;
      }
      finally {
         try {
            if (bufferedReader != null) bufferedReader.close();
         }
         catch (IOException e) {
            e.printStackTrace();
         }

      }
   }
   
   public static boolean saveFile(MultipartFile file, String filePath) {  
       // 判断文件是否为空  
       if (!file.isEmpty()) {  
           try {  
//               // 文件保存路径  
//               String filePath = code + "upload/"  
//                       + file.getOriginalFilename();  
               // 转存文件  
               file.transferTo(new File(filePath));  
               return true;  
           } catch (Exception e) {  
               e.printStackTrace();  
           }  
       }  
       return false;  
   }
   
	public static String  getphotoPath(String userId,String userName){
		String personimagePath="";
		if ("".equals(userId)||"".equals(userId)) {
			return "error";
		}
		try {
			File file=new File(Code.systemPath+"/upload/photo/"+userId+".jpg"); 
			  if(!file.exists())    
				{    String nameString = ChinaInitial.getPYIndexStr(userName, true);
				   if (!"".equals(nameString)) {
				      personimagePath =  "../img/font/"+nameString.toCharArray()[0]+".png";
               }
				   else {
				      personimagePath =  "../img/aguy.png";
				   }
				} else {
					personimagePath = "../upload/photo/"+userId+".jpg";
				}
			  return personimagePath;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return personimagePath;
	}
}
