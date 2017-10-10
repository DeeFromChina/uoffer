package spider;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.RandomAccessFile;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class WebSpiderByJsoup {
	
	public static void main(String[] args) throws Exception {
        getWuMaoW();
    }

	public static void getWuMaoW(){
        String url = "https://www.zhihu.com/question/30692237";
        Document doc = null;
        PrintWriter pw = null;  
        try {
            doc = Jsoup.connect(url).get();
//            Elements div = doc.getElementsByTag("div");
            File file = new File("e:/30692237.txt");
            if(!file.exists()){
            	file.createNewFile();
            }
//            StringBuffer html = new StringBuffer();
//            String title = doc.getElementsByAttributeValue("class","QuestionHeader-title").text();
//            html.append(title);
//            System.out.println(html.toString());
            writeTxtFile(doc.html(),file);
            
//            System.out.println(doc.html());
//            Elements listDiv = doc.getElementsByAttributeValue("class", "post");
//            for(Element element : listDiv){
//                Elements texts = element.getElementsByTag("h4");
//                for(Element text:texts){
//                    String ptext = text.text();
//                    System.out.println("标题："+ptext);
//                }
//            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
        	e.printStackTrace();
		}
    }
	
	public static boolean writeTxtFile(String content, File fileName) throws Exception {
		RandomAccessFile mm = null;
		boolean flag = false;
		FileOutputStream o = null;
		try {
			o = new FileOutputStream(fileName);
			o.write(content.getBytes("GBK"));
			o.close();
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (mm != null) {
				mm.close();
			}
		}
		return flag;
	}
}
