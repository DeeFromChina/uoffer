package com.offer.util;
import java.io.FileOutputStream;

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

public class pdftest {
   public static void main(String[] args) {
	   try 
	      {
	          Document document = new Document(PageSize.A4.rotate()); 
	          PdfWriter writer= PdfWriter.getInstance(document, new FileOutputStream(Code.systemPath+"\\pdf\\1.PDF"));
	          
	          
	          //设置字体
	          BaseFont bfChinese = BaseFont.createFont("C:/WINDOWS/Fonts/SIMYOU.TTF", BaseFont.IDENTITY_H,BaseFont.NOT_EMBEDDED); 
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
	          PdfPCell cell11 = new PdfPCell(new Paragraph("李先生",FontChinese24));
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
	          PdfPCell note1 = new PdfPCell(new Paragraph("联系电话：123456679|联系邮箱：1234567891@qq.com",FontChinese12));
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
	          String imagePath2 = "D:/boder.jpg";
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
	          PdfPCell inf1 = new PdfPCell(new Paragraph("前年薪￥16.9万，双休五险，期望年薪￥25万",FontChinese11Normal));
	          PdfPCell inf2 = new PdfPCell(new Paragraph("期望在广州工作",FontChinese11Normal));
	          PdfPCell inf3 = new PdfPCell(new Paragraph("可到到岗时间1个星期。不着急找工作，看看机会",FontChinese11Normal));
	          PdfPCell inf4 = new PdfPCell(new Paragraph("期望在早期公司。A轮公司，B轮公司",FontChinese11Normal));
	          inf1.setBorder(0);
	          inf2.setBorder(0);
	          inf3.setBorder(0);
	          inf4.setBorder(0);
	          personInf.addCell(inf1);
	          personInf.addCell(inf2);
	          personInf.addCell(inf3);
	          personInf.addCell(inf4);
	          personInf.setSpacingBefore(100f);
	          //设置头像
	          String personimagePath = "D:/alibaba.jpg";
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
	          String imagePathskill = "D:/boder.jpg";
	          Image imageskill = Image.getInstance(imagePathskill); 
	          cellskill.setBorder(0);
	          skill.addCell(imageskill);
	          skill.addCell(cellskill); 
	          document.add(skill);
	          
	          //技能内容
	          PdfPTable skillContent = new PdfPTable(1);
	          skillContent.getDefaultCell().setBorder(0);
	          for (int i = 0; i < 2; i++) {
	             PdfPCell cell = new PdfPCell(new Paragraph("技能"+i,FontChinese11Normal));
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
	          String imagePathsex = "D:/boder.jpg";
	          Image imagesex = Image.getInstance(imagePathsex); 
	          cellsex.setBorder(0);
	          ex.addCell(imagesex);
	          ex.addCell(cellsex); 
	          document.add(ex);
	          
	          //工作经历内容

	          for (int i = 0; i < 2; i++) {
	             PdfPTable exContent = new PdfPTable(2);
	             int width_exContent[] = {75,15};
	             exContent.setWidths(width_exContent); 
	             exContent.getDefaultCell().setBorder(0);
	             PdfPCell cell = new PdfPCell(new Paragraph("广州乐闻教育科技中心"+i,FontChinese11Normal));
	             PdfPCell cell_r = new PdfPCell(new Paragraph("2015年7月-现在",FontChinese11Normal));
	             cell.setBorder(0);
	             cell_r.setBorder(0);
	             exContent.addCell(cell);
	             exContent.addCell(cell_r);
	             document.add(exContent);
	             
	             PdfPTable exContent1 = new PdfPTable(1);
	             PdfPCell cell1 = new PdfPCell(new Paragraph("java工程师"+i,FontChinese11Normal));
	             cell1.setBorder(0);
	             exContent1.addCell(cell1);
	             document.add(exContent1);
	             
	             PdfPTable exContent2 = new PdfPTable(1);
	             PdfPCell cell2 = new PdfPCell(new Paragraph("负责数据库设计，程序设计，需求分析"+i,FontChinese11Normal));
	             cell2.setBorder(0);
	             exContent2.addCell(cell2);
	             document.add(exContent2);

	             
	             document.add(blankRow1);
	          }

	        //顾问备注
	          PdfPTable guwen = new PdfPTable(2);
	          //设置每列宽度比例   
	          int widthguwen[] = {2,98};
	          guwen.setWidths(widthguwen); 
	          guwen.getDefaultCell().setBorder(0);
	          PdfPCell cellguwen = new PdfPCell(new Paragraph("项目经历",FontChinese16));
	          String imagePathguwen = "D:/boder.jpg";
	          Image imageguwen = Image.getInstance(imagePathguwen); 
	          cellguwen.setBorder(0);
	          guwen.addCell(imageguwen);
	          guwen.addCell(cellguwen); 
	          document.add(guwen);
	          
	        //项目经历内容

	          for (int i = 0; i < 2; i++) {
	             PdfPTable exContent = new PdfPTable(2);
	             int width_exContent[] = {75,15};
	             exContent.setWidths(width_exContent); 
	             exContent.getDefaultCell().setBorder(0);
	             PdfPCell cell = new PdfPCell(new Paragraph("XXX项目",FontChinese11Normal));
	             PdfPCell cell_r = new PdfPCell(new Paragraph("2015年7月-现在",FontChinese11Normal));
	             cell.setBorder(0);
	             cell_r.setBorder(0);
	             exContent.addCell(cell);
	             exContent.addCell(cell_r);
	             document.add(exContent);
	             
	             PdfPTable exContent1 = new PdfPTable(1);
	             PdfPCell cell1 = new PdfPCell(new Paragraph("java工程师",FontChinese11Normal));
	             cell1.setBorder(0);
	             exContent1.addCell(cell1);
	             document.add(exContent1);
	             
	             PdfPTable exContent2 = new PdfPTable(1);
	             PdfPCell cell2 = new PdfPCell(new Paragraph("负责数据库设计，程序设计，需求分析"+i,FontChinese11Normal));
	             cell2.setBorder(0);
	             exContent2.addCell(cell2);
	             document.add(exContent2);

	             
	             document.add(blankRow1);
	          }
	          
	          
	          //教育经历
	          PdfPTable stex = new PdfPTable(2);
	          //设置每列宽度比例   
	          int widthstex[] = {2,98};
	          stex.setWidths(widthstex); 
	          stex.getDefaultCell().setBorder(0);
	          PdfPCell cellsstex = new PdfPCell(new Paragraph("教育经历",FontChinese16));
	          String imagePathsstex = "D:/boder.jpg";
	          Image imagesstex = Image.getInstance(imagePathsstex); 
	          cellsstex.setBorder(0);
	          stex.addCell(imagesstex);
	          stex.addCell(cellsstex); 
	          document.add(stex);
	          
	          //教育经历内容
	          PdfPTable stexContent = new PdfPTable(1);
	          stexContent.getDefaultCell().setBorder(0);
	          for (int i = 0; i < 2; i++) {
	             PdfPCell cell = new PdfPCell(new Paragraph("Y小姐教育经历"+i,FontChinese11Normal));
	             cell.setBorder(0);
	             stexContent.addCell(cell);
	          }
	          document.add(stexContent);
	          
	          document.add(blankRow1);
	          
	          //个人描述
	          PdfPTable geren = new PdfPTable(2);
	          //设置每列宽度比例   
	          int widthgeren[] = {2,98};
	          geren.setWidths(widthstex); 
	          geren.getDefaultCell().setBorder(0);
	          PdfPCell cellsgeren = new PdfPCell(new Paragraph("个人描述",FontChinese16));
	          String imagePathgeren = "D:/boder.jpg";
	          Image imagegeren = Image.getInstance(imagePathgeren); 
	          cellsgeren.setBorder(0);
	          geren.addCell(imagegeren);
	          geren.addCell(cellsgeren); 
	          document.add(geren);
	          
	          //个人描述内容
	          PdfPTable gerenContent = new PdfPTable(1);
	          gerenContent.getDefaultCell().setBorder(0);
	          PdfPCell cell = new PdfPCell(new Paragraph("Y小姐个人描述",FontChinese11Normal));
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
   /**
    * 毫米转像素
    * @param mm
    * @return
    */
   public static float mmTopx(float mm){
    mm = (float) (mm *3.33) ;
    return mm ;
   }
}
