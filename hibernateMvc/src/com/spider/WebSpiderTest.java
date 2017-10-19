package com.spider;

import java.io.BufferedReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class WebSpiderTest {

	public static void main(String[] args) {  
		catchHTML();
//        URL url = null;  
//        URLConnection urlconn = null;  
//        BufferedReader br = null;  
//        PrintWriter pw = null;  
//        String regex = "http://[\\w+\\.?/?]+\\.[A-Za-z]+";  
//        Pattern p = Pattern.compile(regex);  
//        try {  
//            url = new URL("http://www.sina.com.cn/");  
//            urlconn = url.openConnection();  
//            pw = new PrintWriter(new FileWriter("e:/url.txt"), true);//这里我们把收集到的链接存储在了E盘底下的一个叫做url的txt文件中  
//            br = new BufferedReader(new InputStreamReader(  
//                    urlconn.getInputStream()));  
//            String buf = null;  
//            while ((buf = br.readLine()) != null) {  
//                Matcher buf_m = p.matcher(buf);  
//                while (buf_m.find()) {  
//                    pw.println(buf_m.group());  
//                }  
//            }  
//            System.out.println("获取成功！");  
//        } catch (MalformedURLException e) {  
//            e.printStackTrace();  
//        } catch (IOException e) {  
//            e.printStackTrace();  
//        } finally {  
//            try {  
//                br.close();  
//            } catch (IOException e) {  
//                e.printStackTrace();  
//            }  
//            pw.close();  
//        }  
    } 
	
	private static void catchHTML(){
		URL url;
        int responsecode;
        HttpURLConnection urlConnection;
        BufferedReader reader;
        String line;
        PrintWriter pw = null;  
        try{
            //生成一个URL对象，要获取源代码的网页地址为：http://www.sina.com.cn
            url=new URL("http://www.sina.com.cn");
            //打开URL
            urlConnection = (HttpURLConnection)url.openConnection();
            //获取服务器响应代码
            responsecode=urlConnection.getResponseCode();
            if(responsecode==200){
                //得到输入流，即获得了网页的内容 
                reader=new BufferedReader(new InputStreamReader(urlConnection.getInputStream(),"UTF-8"));
                
                pw = new PrintWriter(new FileWriter("e:/url.txt"), true);//这里我们把收集到的链接存储在了E盘底下的一个叫做url的txt文件中
                String buf = null;  
                while ((buf = reader.readLine()) != null) {  
                    pw.println(buf);  
                } 
                
//                while((line=reader.readLine())!=null){
//                    System.out.println(line);
//                }
            }
            else{
                System.out.println("获取不到网页的源码，服务器响应代码为："+responsecode);
            }
        }
        catch(Exception e){
            System.out.println("获取不到网页的源码,出现异常："+e);
        }
	}
}
