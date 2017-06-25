package com.offer.util.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.offer.util.ChinaInitial;
import com.offer.util.Code;
import com.offer.util.GeneratePDF;
import com.offer.util.SendEmail;


@Service("generatePDF")
public class GeneratePDFImpl implements GeneratePDF {
   
   @Autowired
   private SendEmail sendEmail1;
    
	public void downloadPDF(HttpServletResponse response,
			Map<String, List<Map<String, String>>> map) throws Exception {
		try {
			writeCharpter(response, map);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	  public void downloadPDF2(HttpServletResponse response,
	         Map<String, List<Map<String, String>>> map) throws Exception {
	      try {
	         writeCharpter2(response, map);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	   }
	
	/**
	 * 添加含有章节的pdf文件
	 * 
	 * @throws Exception
	 * 
	 * map:imagepath
	 * map:name
	 * map:info
	 * map:job
	 * map:phone
	 * map:nameContent
	 * map:skillContent
	 * map:exContent
	 * map:stexContent
	 * map:gerenContent
	 * map:guwenContent
	 * 
	 */
	public static void writeCharpter(HttpServletResponse response,
	      Map<String, List<Map<String, String>>> map) throws Exception {
		
		try 
	      {
	          Document document = new Document(PageSize.A4.rotate()); 
	          response.setHeader("content-disposition", "attachment;filename="  
	                + URLEncoder.encode(map.get("name").get(0).get("content")+".PDF", "UTF-8"));
	          OutputStream out = response.getOutputStream();
	          PdfWriter writer= PdfWriter.getInstance(document, out);
//	          PdfWriter writer= PdfWriter.getInstance(document, new FileOutputStream(Code.systemPath+"\\pdf\\"+map.get("name").get(0).get("content")+".PDF"));

	          
	          
	          //设置字体
	          BaseFont bfChinese = BaseFont.createFont(Code.systemPath+"/common/simyou.TTF", BaseFont.IDENTITY_H,BaseFont.NOT_EMBEDDED); 
	          com.itextpdf.text.Font FontChinese24 = new com.itextpdf.text.Font(bfChinese, 24, com.itextpdf.text.Font.BOLD);
	          com.itextpdf.text.Font FontChinese18 = new com.itextpdf.text.Font(bfChinese, 18, com.itextpdf.text.Font.BOLD); 
	          com.itextpdf.text.Font FontChinese16 = new com.itextpdf.text.Font(bfChinese, 16, com.itextpdf.text.Font.BOLD);
	          com.itextpdf.text.Font FontChinese12 = new com.itextpdf.text.Font(bfChinese, 12, com.itextpdf.text.Font.NORMAL);
	          com.itextpdf.text.Font FontChinese11Bold = new com.itextpdf.text.Font(bfChinese, 11, com.itextpdf.text.Font.BOLD);
	          com.itextpdf.text.Font FontChinese11 = new com.itextpdf.text.Font(bfChinese, 11, com.itextpdf.text.Font.ITALIC);
	          com.itextpdf.text.Font FontChinese11Normal = new com.itextpdf.text.Font(bfChinese, 11, com.itextpdf.text.Font.NORMAL);

	          document.open();
	          
	          PdfContentByte headAndFootPdfContent = writer.getDirectContent();  
	          
	          headAndFootPdfContent.saveState();  
	          headAndFootPdfContent.beginText();
	          headAndFootPdfContent.setFontAndSize(bfChinese,12);  
	          //文档页头信息设置  
	          float x = document.top(-20); 
	          float x1 = document.top(-5);

	          //页头信息左面  
//	          String imagePath01 = Code.systemPath+"/img/U-Offerlogo.png";
//	          System.out.println(imagePath01);
//	          Image image01 = Image.getInstance(imagePath01); 
//	          headAndFootPdfContent.addImage(image01);
	          headAndFootPdfContent.showTextAligned(PdfContentByte.ALIGN_LEFT,  "U-offer  互联网高端招聘平台",document.left()+100, x1, 0);
	          headAndFootPdfContent.endText();  
	          headAndFootPdfContent.restoreState();  
	          
	          //table1
             PdfPTable table1 = new PdfPTable(1);
             PdfPCell cell11 = new PdfPCell(new Paragraph(map.get("name").get(0).get("content"),FontChinese24));
             cell11.setVerticalAlignment(Element.ALIGN_MIDDLE);
             cell11.setHorizontalAlignment(Element.ALIGN_CENTER);
             cell11.setBorder(0);
             //设置每列宽度比例   
             table1.getDefaultCell().setBorder(0);
             table1.addCell(cell11);  
             document.add(table1);
	          //加入空行
	          Paragraph blank8 = new Paragraph(8f, " ", FontChinese18); 
	          document.add(blank8);
	        //table1
	          PdfPTable note = new PdfPTable(1);
	          PdfPCell note1 = new PdfPCell(new Paragraph("联系电话："+map.get("phone").get(0).get("content")+"|联系邮箱："+map.get("emil").get(0).get("content"),FontChinese12));
	          note1.setVerticalAlignment(Element.ALIGN_MIDDLE);
	          note1.setHorizontalAlignment(Element.ALIGN_CENTER);
	          note1.setBorder(0);
	          //设置每列宽度比例   
	          note.getDefaultCell().setBorder(0);
	          note.addCell(note1);  
	          document.add(note);
	          //加入空行
	          Paragraph blankRow1 = new Paragraph(18f, " ", FontChinese18); 
	          document.add(blankRow1);

	          //加入空行
	          Paragraph blankRow2 = new Paragraph(18f, " ", FontChinese18); 
	          document.add(blankRow2);

	          //关于Y小姐
	          PdfPTable table2 = new PdfPTable(2);
	          //设置每列宽度比例   
	          int width21[] = {2,98};
	          table2.setWidths(width21); 
	          table2.getDefaultCell().setBorder(0);
	          PdfPCell cell21 = new PdfPCell(new Paragraph("关于我",FontChinese16));
	          String imagePath2 = Code.systemPath+"/img/boder.jpg";
	          Image image21 = Image.getInstance(imagePath2); 
	          cell21.setBorder(0);
	          table2.addCell(image21);
	          table2.addCell(cell21); 
	          document.add(table2);
	          
	          //table3
	          PdfPTable table3 = new PdfPTable(2);
	          PdfPTable personInf = new PdfPTable(1);
	          int width3[] = {80,20};
	          table3.setWidths(width3);
	          table3.getDefaultCell().setBorder(0);
	          //个人信息table
	          for (int i = 0; i < map.get("info").size(); i++) {
	             PdfPCell inf = new PdfPCell(new Paragraph(map.get("info").get(i).get("content"),FontChinese11Normal));
	             inf.setBorder(0);
	             personInf.addCell(inf);
            }
	          personInf.setSpacingBefore(100f);
	          //设置头像
	          String personimagePath = "";
	          File file=new File(Code.systemPath+"/upload/photo/"+map.get("userId").get(0).get("content")+".jpg"); 
			  if(!file.exists())    
				{    String nameString = ChinaInitial.getPYIndexStr(map.get("name").get(0).get("content"), true);
					 personimagePath =  Code.systemPath+"/img/font/"+nameString.toCharArray()[0]+".png";
				} else {
					personimagePath = Code.systemPath+"/upload/photo/"+map.get("userId").get(0).get("content")+".jpg";
				}
	          Image personimage = Image.getInstance(personimagePath);
	          
	          table3.addCell(personInf);
	          table3.addCell(personimage);
	          document.add(table3);
	          
	          //加入空行
	          Paragraph blankRow31 = new Paragraph(18f, " ", FontChinese11); 
	          document.add(blankRow31);

	          //技能
	          PdfPTable skill = new PdfPTable(2);
	          //设置每列宽度比例   
	          int widthskill[] = {2,98};
	          skill.setWidths(widthskill); 
	          skill.getDefaultCell().setBorder(0);
	          PdfPCell cellskill = new PdfPCell(new Paragraph("技能",FontChinese16));
	          String imagePathskill = Code.systemPath+"/img/boder.jpg";
	          Image imageskill = Image.getInstance(imagePathskill); 
	          cellskill.setBorder(0);
	          skill.addCell(imageskill);
	          skill.addCell(cellskill); 
	          document.add(skill);
	          
	          //技能内容
	          PdfPTable skillContent = new PdfPTable(1);
	          skillContent.getDefaultCell().setBorder(0);
	          List<Map<String, String>> skillContents = map.get("skillContent");
	          for (int i = 0; i < skillContents.size(); i++) {
	             PdfPCell cell = new PdfPCell(new Paragraph(skillContents.get(i).get("content"),FontChinese11Normal));
	             cell.setBorder(0);
	             skillContent.addCell(cell);
	          }
	          document.add(skillContent);
	          
	          document.add(blankRow1);
	          
	          //工作经历
	          PdfPTable ex = new PdfPTable(2);
	          //设置每列宽度比例   
	          int widthex[] = {2,98};
	          ex.setWidths(widthex); 
	          ex.getDefaultCell().setBorder(0);
	          PdfPCell cellsex = new PdfPCell(new Paragraph("工作经历",FontChinese16));
	          String imagePathsex = Code.systemPath+"/img/boder.jpg";
	          Image imagesex = Image.getInstance(imagePathsex); 
	          cellsex.setBorder(0);
	          ex.addCell(imagesex);
	          ex.addCell(cellsex); 
	          document.add(ex);
	          
	          //工作经历内容
	          List<Map<String, String>> exContents = map.get("exContent");
	          for (int i = 0; i < exContents.size(); i++) {
	             PdfPTable exContent = new PdfPTable(2);
	             int width_exContent[] = {75,15};
	             exContent.setWidths(width_exContent); 
	             exContent.getDefaultCell().setBorder(0);
	             PdfPCell cell = new PdfPCell(new Paragraph(exContents.get(i).get("companyName"),FontChinese11Normal));
	             PdfPCell cell_r = new PdfPCell(new Paragraph(exContents.get(i).get("workTime"),FontChinese11Normal));
	             cell.setBorder(0);
	             cell_r.setBorder(0);
	             exContent.addCell(cell);
	             exContent.addCell(cell_r);
	             document.add(exContent);
	             
	             PdfPTable exContent1 = new PdfPTable(1);
	             PdfPCell cell1 = new PdfPCell(new Paragraph(exContents.get(i).get("jobName"),FontChinese11Normal));
	             cell1.setBorder(0);
	             exContent1.addCell(cell1);
	             document.add(exContent1);
	             
	             PdfPTable exContent2 = new PdfPTable(1);
	             PdfPCell cell2 = new PdfPCell(new Paragraph(exContents.get(i).get("jobDesc"),FontChinese11Normal));
	             cell2.setBorder(0);
	             exContent2.addCell(cell2);
	             document.add(exContent2);

	             
	             document.add(blankRow1);
	          }

	        //教育经历
	          PdfPTable pj = new PdfPTable(2);
	          //设置每列宽度比例   
	          int widthguwen[] = {2,98};
	          pj.setWidths(widthguwen); 
	          pj.getDefaultCell().setBorder(0);
	          PdfPCell cellguwen = new PdfPCell(new Paragraph("教育经历",FontChinese16));
	          String imagePathguwen = Code.systemPath+"/img/boder.jpg";
	          Image imageguwen = Image.getInstance(imagePathguwen); 
	          cellguwen.setBorder(0);
	          pj.addCell(imageguwen);
	          pj.addCell(cellguwen); 
	          document.add(pj);
	          
	        //教育经历内容
	          List<Map<String, String>> pjContents = map.get("pjContent");
	          for (int i = 0; i < pjContents.size(); i++) {
	             PdfPTable exContent = new PdfPTable(2);
	             int width_exContent[] = {75,15};
	             exContent.setWidths(width_exContent); 
	             exContent.getDefaultCell().setBorder(0);
	             PdfPCell cell = new PdfPCell(new Paragraph(pjContents.get(i).get("pjName"),FontChinese11Normal));
	             PdfPCell cell_r = new PdfPCell(new Paragraph(pjContents.get(i).get("pjTime"),FontChinese11Normal));
	             cell.setBorder(0);
	             cell_r.setBorder(0);
	             exContent.addCell(cell);
	             exContent.addCell(cell_r);
	             document.add(exContent);
	             
	             PdfPTable exContent1 = new PdfPTable(1);
	             PdfPCell cell1 = new PdfPCell(new Paragraph(pjContents.get(i).get("pjjob"),FontChinese11Normal));
	             cell1.setBorder(0);
	             exContent1.addCell(cell1);
	             document.add(exContent1);
	             
	             PdfPTable exContent2 = new PdfPTable(1);
	             PdfPCell cell2 = new PdfPCell(new Paragraph(pjContents.get(i).get("pjdesc"),FontChinese11Normal));
	             cell2.setBorder(0);
	             exContent2.addCell(cell2);
	             document.add(exContent2);

	             
	             document.add(blankRow1);
	          }
	          
	          
//	          //項目经历
//	          PdfPTable stex = new PdfPTable(2);
//	          //设置每列宽度比例   
	          int widthstex[] = {2,98};
//	          stex.setWidths(widthstex); 
//	          stex.getDefaultCell().setBorder(0);
//	          PdfPCell cellsstex = new PdfPCell(new Paragraph("項目经历",FontChinese16));
//	          String imagePathsstex = Code.systemPath+"/img/boder.jpg";
//	          Image imagesstex = Image.getInstance(imagePathsstex); 
//	          cellsstex.setBorder(0);
//	          stex.addCell(imagesstex);
//	          stex.addCell(cellsstex); 
//	          document.add(stex);
//	          
//	          //項目经历内容
//	          PdfPTable stexContent = new PdfPTable(1);
//	          stexContent.getDefaultCell().setBorder(0);
//	          List<Map<String, String>> stexContents = map.get("stexContent");
//	          for (int i = 0; i < stexContents.size(); i++) {
//	             PdfPCell cell = new PdfPCell(new Paragraph(stexContents.get(i).get("content"),FontChinese11Normal));
//	             cell.setBorder(0);
//	             stexContent.addCell(cell);
//	          }
//	          document.add(stexContent);
//	          
//	          document.add(blankRow1);
	          
	          //个人描述
	          PdfPTable geren = new PdfPTable(2);
	          //设置每列宽度比例   
	          int widthgeren[] = {2,98};
	          geren.setWidths(widthstex); 
	          geren.getDefaultCell().setBorder(0);
	          PdfPCell cellsgeren = new PdfPCell(new Paragraph("个人描述",FontChinese16));
	          String imagePathgeren = Code.systemPath+"/img/boder.jpg";
	          Image imagegeren = Image.getInstance(imagePathgeren); 
	          cellsgeren.setBorder(0);
	          geren.addCell(imagegeren);
	          geren.addCell(cellsgeren); 
	          document.add(geren);
	          
	          //个人描述内容
	          PdfPTable gerenContent = new PdfPTable(1);
	          gerenContent.getDefaultCell().setBorder(0);
	          PdfPCell cell = new PdfPCell(new Paragraph(map.get("personDesc").get(0).get("content"),FontChinese11Normal));
	          cell.setBorder(0);
	          gerenContent.addCell(cell);
	          document.add(gerenContent);
	          
	          document.add(blankRow1);
	          
	          

	          document.close();

	          out.flush();
	          out.close();
	          
	      } catch (Exception ex) 
	      {
	        ex.printStackTrace();
	      }
	}
	
	  /**
    * 添加含有章节的pdf文件
    * 
    * @throws Exception
    * 
    * map:imagepath
    * map:name
    * map:info
    * map:job
    * map:phone
    * map:nameContent
    * map:skillContent
    * map:exContent
    * map:stexContent
    * map:gerenContent
    * map:guwenContent
    * 
    */
   public static void writeCharpter2(HttpServletResponse response,
         Map<String, List<Map<String, String>>> map) throws Exception {
      
      try 
         {
             Document document = new Document(PageSize.A4.rotate()); 
//             OutputStream out = response.getOutputStream();
//             PdfWriter writer= PdfWriter.getInstance(document, out);
           PdfWriter writer= PdfWriter.getInstance(document, new FileOutputStream(Code.systemPath+"\\pdf\\"+map.get("name").get(0).get("content")+".PDF"));

             
             
             //设置字体
             BaseFont bfChinese = BaseFont.createFont(Code.systemPath+"/common/simyou.TTF", BaseFont.IDENTITY_H,BaseFont.NOT_EMBEDDED); 
             com.itextpdf.text.Font FontChinese24 = new com.itextpdf.text.Font(bfChinese, 24, com.itextpdf.text.Font.BOLD);
             com.itextpdf.text.Font FontChinese18 = new com.itextpdf.text.Font(bfChinese, 18, com.itextpdf.text.Font.BOLD); 
             com.itextpdf.text.Font FontChinese16 = new com.itextpdf.text.Font(bfChinese, 16, com.itextpdf.text.Font.BOLD);
             com.itextpdf.text.Font FontChinese12 = new com.itextpdf.text.Font(bfChinese, 12, com.itextpdf.text.Font.NORMAL);
             com.itextpdf.text.Font FontChinese11Bold = new com.itextpdf.text.Font(bfChinese, 11, com.itextpdf.text.Font.BOLD);
             com.itextpdf.text.Font FontChinese11 = new com.itextpdf.text.Font(bfChinese, 11, com.itextpdf.text.Font.ITALIC);
             com.itextpdf.text.Font FontChinese11Normal = new com.itextpdf.text.Font(bfChinese, 11, com.itextpdf.text.Font.NORMAL);

             document.open();
             
             PdfContentByte headAndFootPdfContent = writer.getDirectContent();  
             
             headAndFootPdfContent.saveState();  
             headAndFootPdfContent.beginText();
             headAndFootPdfContent.setFontAndSize(bfChinese,12);  
             //文档页头信息设置  
             float x = document.top(-20); 
             float x1 = document.top(-5);

             //页头信息左面  
             headAndFootPdfContent.showTextAligned(PdfContentByte.ALIGN_LEFT,  "U-offer  互联网高端招聘平台",document.left()+100, x1, 0);  
             headAndFootPdfContent.endText();  
             headAndFootPdfContent.restoreState();  
             
             
             
             
             
             //table1
             PdfPTable table1 = new PdfPTable(1);
             PdfPCell cell11 = new PdfPCell(new Paragraph(map.get("name").get(0).get("content"),FontChinese24));
             cell11.setVerticalAlignment(Element.ALIGN_MIDDLE);
             cell11.setHorizontalAlignment(Element.ALIGN_CENTER);
             cell11.setBorder(0);
             //设置每列宽度比例   
             table1.getDefaultCell().setBorder(0);
             table1.addCell(cell11);  
             document.add(table1);
             //加入空行
             Paragraph blank8 = new Paragraph(8f, " ", FontChinese18); 
             document.add(blank8);
           //table1
             PdfPTable note = new PdfPTable(1);
             PdfPCell note1 = new PdfPCell(new Paragraph("联系电话："+map.get("phone").get(0).get("content")+"|联系邮箱："+map.get("emil").get(0).get("content"),FontChinese12));
             note1.setVerticalAlignment(Element.ALIGN_MIDDLE);
             note1.setHorizontalAlignment(Element.ALIGN_CENTER);
             note1.setBorder(0);
             //设置每列宽度比例   
             note.getDefaultCell().setBorder(0);
             note.addCell(note1);  
             document.add(note);
             //加入空行
             Paragraph blankRow1 = new Paragraph(18f, " ", FontChinese18); 
             document.add(blankRow1);

             //加入空行
             Paragraph blankRow2 = new Paragraph(18f, " ", FontChinese18); 
             document.add(blankRow2);

             //关于Y小姐
             PdfPTable table2 = new PdfPTable(2);
             //设置每列宽度比例   
             int width21[] = {2,98};
             table2.setWidths(width21); 
             table2.getDefaultCell().setBorder(0);
             PdfPCell cell21 = new PdfPCell(new Paragraph("关于我",FontChinese16));
             String imagePath2 = Code.systemPath+"/img/boder.jpg";
             Image image21 = Image.getInstance(imagePath2); 
             cell21.setBorder(0);
             table2.addCell(image21);
             table2.addCell(cell21); 
             document.add(table2);
             
             //table3
             PdfPTable table3 = new PdfPTable(2);
             PdfPTable personInf = new PdfPTable(1);
             int width3[] = {80,20};
             table3.setWidths(width3);
             table3.getDefaultCell().setBorder(0);
             //个人信息table
             for (int i = 0; i < map.get("info").size(); i++) {
            	if(i==0){
            		 if ("0".equals(map.get("xinzi").get(0).get("content"))) {
            			 PdfPCell inf = new PdfPCell(new Paragraph(map.get("info").get(i).get("content"),FontChinese11Normal));
                         inf.setBorder(0);
                         personInf.addCell(inf);
					}else {
						
					}
            	}else {
            		PdfPCell inf = new PdfPCell(new Paragraph(map.get("info").get(i).get("content"),FontChinese11Normal));
                    inf.setBorder(0);
                    personInf.addCell(inf);
				}
                
            }
             personInf.setSpacingBefore(100f);
             //设置头像
             String personimagePath = "";
             File file=new File(Code.systemPath+"/upload/photo/"+map.get("userId").get(0).get("content")+".jpg"); 
           if(!file.exists())    
            {    String nameString = ChinaInitial.getPYIndexStr(map.get("name").get(0).get("content"), true);
                personimagePath =  Code.systemPath+"/img/font/"+nameString.toCharArray()[0]+".png";
            } else {
               personimagePath = Code.systemPath+"/upload/photo/"+map.get("userId").get(0).get("content")+".jpg";
            }
             Image personimage = Image.getInstance(personimagePath);
             
             table3.addCell(personInf);
             table3.addCell(personimage);
             document.add(table3);
             
             //加入空行
             Paragraph blankRow31 = new Paragraph(18f, " ", FontChinese11); 
             document.add(blankRow31);

             //技能
             PdfPTable skill = new PdfPTable(2);
             //设置每列宽度比例   
             int widthskill[] = {2,98};
             skill.setWidths(widthskill); 
             skill.getDefaultCell().setBorder(0);
             PdfPCell cellskill = new PdfPCell(new Paragraph("技能",FontChinese16));
             String imagePathskill = Code.systemPath+"/img/boder.jpg";
             Image imageskill = Image.getInstance(imagePathskill); 
             cellskill.setBorder(0);
             skill.addCell(imageskill);
             skill.addCell(cellskill); 
             document.add(skill);
             
             //技能内容
             PdfPTable skillContent = new PdfPTable(1);
             skillContent.getDefaultCell().setBorder(0);
             List<Map<String, String>> skillContents = map.get("skillContent");
             for (int i = 0; i < skillContents.size(); i++) {
                PdfPCell cell = new PdfPCell(new Paragraph(skillContents.get(i).get("content"),FontChinese11Normal));
                cell.setBorder(0);
                skillContent.addCell(cell);
             }
             document.add(skillContent);
             
             document.add(blankRow1);
             
             //工作经历
             PdfPTable ex = new PdfPTable(2);
             //设置每列宽度比例   
             int widthex[] = {2,98};
             ex.setWidths(widthex); 
             ex.getDefaultCell().setBorder(0);
             PdfPCell cellsex = new PdfPCell(new Paragraph("工作经历",FontChinese16));
             String imagePathsex = Code.systemPath+"/img/boder.jpg";
             Image imagesex = Image.getInstance(imagePathsex); 
             cellsex.setBorder(0);
             ex.addCell(imagesex);
             ex.addCell(cellsex); 
             document.add(ex);
             
             //工作经历内容
             List<Map<String, String>> exContents = map.get("exContent");
             for (int i = 0; i < exContents.size(); i++) {
                PdfPTable exContent = new PdfPTable(2);
                int width_exContent[] = {75,15};
                exContent.setWidths(width_exContent); 
                exContent.getDefaultCell().setBorder(0);
                PdfPCell cell = new PdfPCell(new Paragraph(exContents.get(i).get("companyName"),FontChinese11Normal));
                PdfPCell cell_r = new PdfPCell(new Paragraph(exContents.get(i).get("workTime"),FontChinese11Normal));
                cell.setBorder(0);
                cell_r.setBorder(0);
                exContent.addCell(cell);
                exContent.addCell(cell_r);
                document.add(exContent);
                
                PdfPTable exContent1 = new PdfPTable(1);
                PdfPCell cell1 = new PdfPCell(new Paragraph(exContents.get(i).get("jobName"),FontChinese11Normal));
                cell1.setBorder(0);
                exContent1.addCell(cell1);
                document.add(exContent1);
                
                PdfPTable exContent2 = new PdfPTable(1);
                PdfPCell cell2 = new PdfPCell(new Paragraph(exContents.get(i).get("jobDesc"),FontChinese11Normal));
                cell2.setBorder(0);
                exContent2.addCell(cell2);
                document.add(exContent2);

                
                document.add(blankRow1);
             }

           //教育经历
             PdfPTable pj = new PdfPTable(2);
             //设置每列宽度比例   
             int widthguwen[] = {2,98};
             pj.setWidths(widthguwen); 
             pj.getDefaultCell().setBorder(0);
             PdfPCell cellguwen = new PdfPCell(new Paragraph("教育经历",FontChinese16));
             String imagePathguwen = Code.systemPath+"/img/boder.jpg";
             Image imageguwen = Image.getInstance(imagePathguwen); 
             cellguwen.setBorder(0);
             pj.addCell(imageguwen);
             pj.addCell(cellguwen); 
             document.add(pj);
             
           //教育经历内容
             List<Map<String, String>> pjContents = map.get("pjContent");
             for (int i = 0; i < pjContents.size(); i++) {
                PdfPTable exContent = new PdfPTable(2);
                int width_exContent[] = {75,15};
                exContent.setWidths(width_exContent); 
                exContent.getDefaultCell().setBorder(0);
                PdfPCell cell = new PdfPCell(new Paragraph(pjContents.get(i).get("pjName"),FontChinese11Normal));
                PdfPCell cell_r = new PdfPCell(new Paragraph(pjContents.get(i).get("pjTime"),FontChinese11Normal));
                cell.setBorder(0);
                cell_r.setBorder(0);
                exContent.addCell(cell);
                exContent.addCell(cell_r);
                document.add(exContent);
                
                PdfPTable exContent1 = new PdfPTable(1);
                PdfPCell cell1 = new PdfPCell(new Paragraph(pjContents.get(i).get("pjjob"),FontChinese11Normal));
                cell1.setBorder(0);
                exContent1.addCell(cell1);
                document.add(exContent1);
                
                PdfPTable exContent2 = new PdfPTable(1);
                PdfPCell cell2 = new PdfPCell(new Paragraph(pjContents.get(i).get("pjdesc"),FontChinese11Normal));
                cell2.setBorder(0);
                exContent2.addCell(cell2);
                document.add(exContent2);

                
                document.add(blankRow1);
             }
             
             
//             //項目经历
//             PdfPTable stex = new PdfPTable(2);
//             //设置每列宽度比例   
             int widthstex[] = {2,98};
//             stex.setWidths(widthstex); 
//             stex.getDefaultCell().setBorder(0);
//             PdfPCell cellsstex = new PdfPCell(new Paragraph("項目经历",FontChinese16));
//             String imagePathsstex = Code.systemPath+"/img/boder.jpg";
//             Image imagesstex = Image.getInstance(imagePathsstex); 
//             cellsstex.setBorder(0);
//             stex.addCell(imagesstex);
//             stex.addCell(cellsstex); 
//             document.add(stex);
//             
//             //項目经历内容
//             PdfPTable stexContent = new PdfPTable(1);
//             stexContent.getDefaultCell().setBorder(0);
//             List<Map<String, String>> stexContents = map.get("stexContent");
//             for (int i = 0; i < stexContents.size(); i++) {
//                PdfPCell cell = new PdfPCell(new Paragraph(stexContents.get(i).get("content"),FontChinese11Normal));
//                cell.setBorder(0);
//                stexContent.addCell(cell);
//             }
//             document.add(stexContent);
//             
//             document.add(blankRow1);
             
             //个人描述
             PdfPTable geren = new PdfPTable(2);
             //设置每列宽度比例   
             int widthgeren[] = {2,98};
             geren.setWidths(widthstex); 
             geren.getDefaultCell().setBorder(0);
             PdfPCell cellsgeren = new PdfPCell(new Paragraph("个人描述",FontChinese16));
             String imagePathgeren = Code.systemPath+"/img/boder.jpg";
             Image imagegeren = Image.getInstance(imagePathgeren); 
             cellsgeren.setBorder(0);
             geren.addCell(imagegeren);
             geren.addCell(cellsgeren); 
             document.add(geren);
             
             //个人描述内容
             PdfPTable gerenContent = new PdfPTable(1);
             gerenContent.getDefaultCell().setBorder(0);
             PdfPCell cell = new PdfPCell(new Paragraph(map.get("personDesc").get(0).get("content"),FontChinese11Normal));
             cell.setBorder(0);
             gerenContent.addCell(cell);
             document.add(gerenContent);
             
             document.add(blankRow1);
             
             

             document.close();

             
         } catch (Exception ex) 
         {
           ex.printStackTrace();
         }
      

   }
}
