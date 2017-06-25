package com.offer.util;

import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class emilTest {
   public static void sendEmail(Map<String, String> emailMap) throws MessagingException {
      try {
         final Properties prop = new Properties();
         
         String path = Code.systemPath + "/properties/emailProperties.properties";
         InputStreamReader in = new InputStreamReader(new FileInputStream(path), "UTF-8");
         prop.load(in);
         prop.put("mail.smtp.auth", "true");
         in.close();
         
         Authenticator authenticator = new Authenticator() {
               @Override
               protected PasswordAuthentication getPasswordAuthentication() {
                   // 用户名、密码
                   String userName = prop.getProperty("mail.user");
                   String password = prop.getProperty("mail.password");
                   return new PasswordAuthentication(userName, password);
               }
           };
           Session mailSession = Session.getInstance(prop, authenticator);
           MimeMessage message = new MimeMessage(mailSession);
           InternetAddress form = new InternetAddress(
               prop.getProperty("mail.user"));
           message.setFrom(form);

           InternetAddress to = new InternetAddress(emailMap.get("sendEmail"));
           message.setRecipient(RecipientType.TO, to);
           message.setSubject(emailMap.get("emailTitle"));
           message.setContent(emailMap.get("emailContent"), "text/html;charset=UTF-8");
           Transport.send(message);
      } catch (Exception e) {
         e.printStackTrace();
      }
   }

   public static void main(String[] args) throws MessagingException {
//      Map<String, String> emailMap = new HashMap<String, String>();
//      emailMap.put("sendEmail", "690883594@qq.com");
//      emailMap.put("emailTitle", "123");
//      emailMap.put("emailContent", "<a href='http://www.baidu.com'>测试的HTML邮件</a>");
//      sendEmail(emailMap);
      // 配置发送邮件的环境属性
      final Properties props = new Properties();
      /*
       * 可用的属性： mail.store.protocol / mail.transport.protocol / mail.host /
       * mail.user / mail.from
       */
      // 表示SMTP发送邮件，需要进行身份验证
      final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
      props.put("mail.smtp.auth", "true");
      props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
      props.put("mail.smtp.socketFactory.fallback", "false");
      props.put("mail.smtp.port", "465");
      props.put("mail.smtp.socketFactory.port", "465");
      props.put("mail.smtp.host", "smtp.126.com");
      // 发件人的账号
      props.put("mail.user", "gl_mjh@126.com");
      // 访问SMTP服务时需要提供的密码
      props.put("mail.password", "mojinghua123");

      // 构建授权信息，用于进行SMTP进行身份验证
      Authenticator authenticator = new Authenticator() {
          @Override
          protected PasswordAuthentication getPasswordAuthentication() {
              // 用户名、密码
              String userName = "gl_mjh@126.com";//props.getProperty("mail.user");
              String password = "mojinghua123";//props.getProperty("mail.password");
              return new PasswordAuthentication(userName, password);
          }
      };
      // 使用环境属性和授权信息，创建邮件会话
      Session mailSession = Session.getInstance(props, authenticator);
      // 创建邮件消息
      MimeMessage message = new MimeMessage(mailSession);
      // 设置发件人
      InternetAddress form = new InternetAddress("gl_mjh@126.com");//props.getProperty("mail.user"));
      message.setFrom(form);

      // 设置收件人
      InternetAddress to = new InternetAddress("690883594@qq.com");
      message.setRecipient(RecipientType.TO, to);

      // 设置抄送
//      InternetAddress cc = new InternetAddress("luo_aaaaa@yeah.net");
//      message.setRecipient(RecipientType.CC, cc);

      // 设置密送，其他的收件人不能看到密送的邮件地址
//      InternetAddress bcc = new InternetAddress("aaaaa@163.com");
//      message.setRecipient(RecipientType.CC, bcc);

      // 设置邮件标题
      message.setSubject("测试邮件");

      // 设置邮件的内容体
      message.setContent("尊敬的用户 [0]，您好：<p>[1]你有面试邀请状态更新，请登录网站确认面试信息。<br/>" +
      		"  <img src='"+Code.systemPath+"/img/zhuanfa.png' /> <style type='text/css'>.hotline24{ width:60px; height:30px;border-radius: 5px; background:#eb2744; line-height:30px; text-align:center; color:#fff;font-size:13px;}</style>" +
      		"<script type='text/javascript'>function test(){alert(1);}</script><button type='button' class='hotline24' onclick='javascript:test()' data-toggle='button' style='font-size:14px;height:40px;background-color: #00B38A !important; border-color: #00B38A !important; width: 100%'>Click Me!</button>" +
      		"<br/>如果你没有注册过，可能是有人尝试使用你的邮件来进行绑定，请忽略本邮件。<br/>" +
      		"（这是一封自动发送的邮件，请不要直接回复）<br/></p>", "text/html;charset=UTF-8");

      // 发送邮件
      Transport.send(message);
   }
}
