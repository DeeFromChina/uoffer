package com.offer.util.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;

import org.springframework.stereotype.Service;

import com.offer.util.Code;
import com.offer.util.SendEmail;

@Service("sendEmail")
public class SendEmailImpl implements SendEmail {
	
//	private static String userName = "gl_mjh@126.com";
//	private static String password = "mojinghua123";
	
	public void sendEmail(Map<String, String> emailMap) throws MessagingException {
		try {
//			final Properties prop = new Properties();
//			
//			String path = Code.systemPath + "/properties/emailProperties.properties";
//			InputStreamReader in = new InputStreamReader(new FileInputStream(path), "UTF-8");
//			prop.load(in);
//			prop.put("mail.smtp.auth", "true");
//			in.close();
//			
//			Authenticator authenticator = new Authenticator() {
//	            @Override
//	            protected PasswordAuthentication getPasswordAuthentication() {
//	                // 用户名、密码
//	                String userName = prop.getProperty("mail.user");
//	                String password = prop.getProperty("mail.password");
//	                return new PasswordAuthentication(userName, password);
//	            }
//	        };
//	        Session mailSession = Session.getInstance(prop, authenticator);
//	        MimeMessage message = new MimeMessage(mailSession);
//	        InternetAddress form = new InternetAddress(
//	        		prop.getProperty("mail.user"));
//	        message.setFrom(form);
//
//	        InternetAddress to = new InternetAddress(emailMap.get("sendEmail"));
//	        message.setRecipient(RecipientType.TO, to);
//	        message.setSubject(emailMap.get("emailTitle"));
//	        message.setContent(emailMap.get("emailContent"), "text/html;charset=UTF-8");
//	        Transport.send(message);
	        
	        
	        
	        final Properties prop = new Properties();
	         
	         String path = Code.systemPath + "/properties/emailProperties.properties";
	         InputStreamReader in = new InputStreamReader(new FileInputStream(path), "UTF-8");
	         final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
	         prop.load(in);
	         prop.put("mail.smtp.socketFactory.class", SSL_FACTORY);
	         prop.put("mail.smtp.socketFactory.fallback", "false");
	         prop.put("mail.smtp.port", "465");
	         prop.put("mail.smtp.socketFactory.port", "465");
	         prop.put("mail.smtp.auth", "true");
	         in.close();

	        // 构建授权信息，用于进行SMTP进行身份验证
	        Authenticator authenticator = new Authenticator() {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                // 用户名、密码
	                String userName = prop.getProperty("mail.user");//props.getProperty("mail.user");
	                String password = prop.getProperty("mail.password");//props.getProperty("mail.password");
	                return new PasswordAuthentication(userName, password);
	            }
	        };
	        // 使用环境属性和授权信息，创建邮件会话
	        Session mailSession = Session.getInstance(prop, authenticator);
	        // 创建邮件消息
	        MimeMessage message = new MimeMessage(mailSession);
	        // 设置发件人
	        InternetAddress form = new InternetAddress(prop.getProperty("mail.user"));//props.getProperty("mail.user"));
	        message.setFrom(form);

	        // 设置收件人
	        InternetAddress to = new InternetAddress(emailMap.get("toMail"));
	        message.setRecipient(RecipientType.TO, to);
	        // 设置抄送
//	        InternetAddress cc = new InternetAddress("luo_aaaaa@yeah.net");
//	        message.setRecipient(RecipientType.CC, cc);

	        // 设置密送，其他的收件人不能看到密送的邮件地址
//	        InternetAddress bcc = new InternetAddress("aaaaa@163.com");
//	        message.setRecipient(RecipientType.CC, bcc);

	        // 设置邮件标题
	        message.setSubject(emailMap.get("mailtitle"));

	        // 设置邮件的内容体
	        message.setContent(emailMap.get("mailContent"), "text/html;charset=UTF-8");

	        // 发送邮件
	        Transport.send(message);
	        
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void sendEmail1(Map<String, String> emailMap,File file) throws MessagingException {
		try {
	        
	        final Properties prop = new Properties();
	         
	         String path = Code.systemPath + "/properties/emailProperties.properties";
	         InputStreamReader in = new InputStreamReader(new FileInputStream(path), "UTF-8");
	         prop.load(in);
	         final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
            prop.put("mail.smtp.socketFactory.class", SSL_FACTORY);
            prop.put("mail.smtp.socketFactory.fallback", "false");
            prop.put("mail.smtp.port", "465");
            prop.put("mail.smtp.socketFactory.port", "465");
	         prop.put("mail.smtp.auth", "true");
	         in.close();

	        // 构建授权信息，用于进行SMTP进行身份验证
	        Authenticator authenticator = new Authenticator() {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                // 用户名、密码
	                String userName = prop.getProperty("mail.user");//props.getProperty("mail.user");
	                String password = prop.getProperty("mail.password");//props.getProperty("mail.password");
	                return new PasswordAuthentication(userName, password);
	            }
	        };
	        // 使用环境属性和授权信息，创建邮件会话
	        Session mailSession = Session.getInstance(prop, authenticator);
	        // 创建邮件消息
	        MimeMessage message = new MimeMessage(mailSession);
	        // 设置发件人
	        InternetAddress form = new InternetAddress(prop.getProperty("mail.user"));//props.getProperty("mail.user"));
	        message.setFrom(form);

	        // 设置收件人
	        InternetAddress to = new InternetAddress(emailMap.get("toMail"));
	        message.setRecipient(RecipientType.TO, to);

	        // 设置抄送
//	        InternetAddress cc = new InternetAddress("luo_aaaaa@yeah.net");
//	        message.setRecipient(RecipientType.CC, cc);

	        // 设置密送，其他的收件人不能看到密送的邮件地址
//	        InternetAddress bcc = new InternetAddress("aaaaa@163.com");
//	        message.setRecipient(RecipientType.CC, bcc);

	        // 设置邮件标题
	        message.setSubject(emailMap.get("mailtitle"));
	        
	        
	     // 向multipart对象中添加邮件的各个部分内容，包括文本内容和附件  
            Multipart multipart = new MimeMultipart();  
  
            // 设置邮件的文本内容  
            BodyPart contentPart = new MimeBodyPart();  
            contentPart.setText(emailMap.get("mailContent"));  
            multipart.addBodyPart(contentPart);  
            // 添加附件  
            BodyPart messageBodyPart = new MimeBodyPart();  
            DataSource source = new FileDataSource(file);  
            // 添加附件的内容  
            messageBodyPart.setDataHandler(new DataHandler(source));  
            // 添加附件的标题  
            // 这里很重要，通过下面的Base64编码的转换可以保证你的中文附件标题名在发送时不会变成乱码  
            messageBodyPart.setFileName(MimeUtility.encodeText(file.getName()));  
            multipart.addBodyPart(messageBodyPart);  

	        // 设置邮件的内容体
//	        message.setContent(emailMap.get("mailContent"), "text/html;charset=UTF-8");
            message.setContent(multipart); 
	        // 发送邮件
	        Transport.send(message);
	        
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
//    public static void main(String[] args) throws MessagingException {
//        // 配置发送邮件的环境属性
//        final Properties props = new Properties();
//        /*
//         * 可用的属性： mail.store.protocol / mail.transport.protocol / mail.host /
//         * mail.user / mail.from
//         */
//        // 表示SMTP发送邮件，需要进行身份验证
//        props.put("mail.smtp.auth", "true");
//        props.put("mail.smtp.host", "smtp.126.com");
//        // 发件人的账号
//        props.put("mail.user", "gl_mjh@126.com");
//        // 访问SMTP服务时需要提供的密码
//        props.put("mail.password", "mojinghua123");
//
//        // 构建授权信息，用于进行SMTP进行身份验证
//        Authenticator authenticator = new Authenticator() {
//            @Override
//            protected PasswordAuthentication getPasswordAuthentication() {
//                // 用户名、密码
////                String userName = "gl_mjh@126.com";//props.getProperty("mail.user");
////                String password = "945319791mjh";//props.getProperty("mail.password");
//                return new PasswordAuthentication(userName, password);
//            }
//        };
//        // 使用环境属性和授权信息，创建邮件会话
//        Session mailSession = Session.getInstance(props, authenticator);
//        // 创建邮件消息
//        MimeMessage message = new MimeMessage(mailSession);
//        // 设置发件人
//        InternetAddress form = new InternetAddress(
//        		userName);//props.getProperty("mail.user"));
//        message.setFrom(form);
//
//        // 设置收件人
//        InternetAddress to = new InternetAddress("945319791@qq.com");
//        message.setRecipient(RecipientType.TO, to);
//
//        // 设置抄送
////        InternetAddress cc = new InternetAddress("luo_aaaaa@yeah.net");
////        message.setRecipient(RecipientType.CC, cc);
//
//        // 设置密送，其他的收件人不能看到密送的邮件地址
////        InternetAddress bcc = new InternetAddress("aaaaa@163.com");
////        message.setRecipient(RecipientType.CC, bcc);
//
//        // 设置邮件标题
//        message.setSubject("测试邮件");
//
//        // 设置邮件的内容体
//        message.setContent("<a href='http://www.baidu.com'>测试的HTML邮件</a>", "text/html;charset=UTF-8");
//
//        // 发送邮件
//        Transport.send(message);
//    }
}
