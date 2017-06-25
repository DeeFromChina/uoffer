package com.offer.util;

import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

public interface Code {

	public static String systemPath = Code.class.getClassLoader().getResource("").getPath().replace("WEB-INF/classes/", "");
	
	public static String CURRENT_SERVER = "119.23.66.37";
//	public static String CURRENT_SERVER = "localhost";
	
	public static String fangwenPath = "http://"+CURRENT_SERVER+":8080/hibernateMvc/" ;
	
	public static String[] welfares = new String[]{ "股票期权","绩效奖金","弹性工作","年底双薪","带薪年假","定期体检","年终分红","员工分享","午餐补贴","专项奖金" };
	
	public static String[] status = new String[]{ "未确认", "未提交", "待审批", "审批不通过", "审批通过", "已下线", "", "", "", "禁用" };
	
	public static String[] firmMianShiStatus = new String[]{ "等待候选人回复", "等待候选人回复", "待面试安排", "待反馈结果", "面试通过", "归档" };
	
	public static String[] houTaiFirmMianShiStatus = new String[]{ "等待候选人回复", "与候选人沟通", "待面试安排", "待反馈结果", "面试通过", "面试不通过", "候选人拒绝邀请", "企业撤销面试", "系统自动拒绝面试邀请" };
	
	public static String[] candidateMianShiStatus = new String[]{ "新的面试邀请", "待沟通", "待面试安排", "已安排面试", "面试结果", "面试结果", "已拒绝面试邀请" };
	
	public static String[] houTaiCandidateMianShiStatus = new String[]{ "新的面试邀请", "待沟通", "待面试安排", "已安排面试", "面试通过", "面试不通过", "已拒绝面试邀请", "企业撤销面试", "系统自动拒绝面试邀请" };
	
	public static String[] collectStatus = new String[]{ "不感兴趣", "收藏" };
	
	public static String[] gongZuoNianXian = new String[]{ "3年以下", "3年", "4年", "5年", "6年", "7年", "8年", "9年", "10年", "10年以上" };
	
	public static String[] shaixuanhouxuanrennianxian = new String[]{ "3年以下", "3-5年", "5-8年", "8-10年", "10年以上" };
	
	public static String[] qiyezhiwei = new String[]{ "联合创始人/CEO/公司高管", "Team Leader/Tech Leader", "HR", "其他" };
	
	public static String[] qiyexuqiuwenjuangongzuojingyan = new String[]{ "3年以下", "3-5年", "5-10年", "10年以上", "不限" };
   
   public static String[] houxuanrenzhiwei = new String[]{ "技术", "产品", "设计" };
   
   public static String[] zhaopinxuqiu = new String[]{ "5人以下", "5-10人", "10-15人", "15-20人", "20-50人", "50人以下" };
	
	public static Map<String, String> tj =new HashMap<String, String>() {{    
	    put("1天", "1");
	    put("两天", "2");
	    put("三天", "3"); 
	    put("一个星期", "7"); 
	    put("15天", "15");
	    put("一个月", "30");
	    put("半年", "182");
	}};  
 
}
