package com.offer.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.offer.model.userData.User;
import com.offer.util.RedisJava;



public class TinyBuilderController{

	public HttpSession httpSession;
	public static String FILE_PATH = "";
	
	public List<Map<String, Object>> homeList = new ArrayList<Map<String, Object>>();
	public Map<String, Object> form = new HashMap<String, Object>();
	public Map<String, Object> redisMap = new HashMap<String, Object>();
	public User user = null;
	
	protected SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	protected SimpleDateFormat sdt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	protected SimpleDateFormat ymd = new SimpleDateFormat("yyyy年MM月dd日");
	protected SimpleDateFormat ymdhms = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
	
	public static String SUCCESS = "success";
	public static String ERROR = "error";
	public static String SAVEERROR = "保存失败";
	public static String SESSIONERROR = "session数据有误";
	public static String NORMAL = "normal";
	public boolean isMsg = false;
	public String isRedirect = "0";
	
	public Map<String, Object> getForm() {
		return form;
	}

	public void setForm(Map<String, Object> form) {
		this.form = form;
	}
	
	public String setMap(HttpServletRequest request, String data) throws Exception{
		if(request == null){
			return "request error";
		}
		if("".equals(FILE_PATH)){
			FILE_PATH = request.getSession().getServletContext().getRealPath("");
		}
		Map<String, String[]> map = request.getParameterMap();
		if(map == null){
			return "map error";
		}
		if(map.get("action") == null || map.get("action").length == 0){
			return "action error";
		}
		form.clear();
		for(Map.Entry<String, String[]> entry : map.entrySet()){
			if(entry.getKey() == null){
				return entry.getValue()+" error";
			}
			if(entry.getValue() == null){
				return entry.getKey()+" error";
			}
			if("undefined".equals(entry.getValue()[0].toString().trim())){
				form.put(entry.getKey(), "");
			}
			if("null".equals(entry.getValue()[0].toString().trim())){
				form.put(entry.getKey(), "");
			}
			form.put(entry.getKey(), entry.getValue()[0]);
		}
		if(data != null){
			putToForm(data);
		}
		httpSession = request.getSession();
		user = (User) httpSession.getAttribute("user");
		return SUCCESS;
	}
	
	private void sessionToForm(HttpServletRequest request){
		RedisJava.openRedis(redisMap);
	}
	
	private void homeData() throws Exception{
		try{
			Map<String, Object> detailmap = new HashMap<String, Object>();
			detailmap.put("identity", "user");
			detailmap.put("tab1", "面试邀请");
			detailmap.put("tab2", "我的简历");
			detailmap.put("tab3", "个人设置");
			detailmap.put("tab4", "");
			homeList.add(detailmap);
			detailmap.clear();
			detailmap.put("identity", "firm");
			detailmap.put("tab1", "候选人");
			detailmap.put("tab2", "已发邀请");
			detailmap.put("tab3", "企业信息");
			detailmap.put("tab4", "个人设置");
			homeList.add(detailmap);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public String addMessage(String msg){
		isMsg = true;
		return msg;
	}
	
	/**
	 * frame里的页面跳转
	 * @return
	 */
	public Object[] redirect(String str, Object param, String msg) {
		isRedirect = "2";
		Object[] returnMsg = new Object[3];
		returnMsg[0] = str;
		returnMsg[1] = param;
		returnMsg[2] = msg;
		return returnMsg;
	}
	
	/**
	 * 最外层跳转
	 * isTop: 1在top层跳转,2在frame层跳转()
	 * @return
	 */
	public Object[] redirect(String str, Object param, String msg, boolean isTop) {
		if(isTop){
			isRedirect = "3";
		}else{
			isRedirect = "2";
		}
		Object[] returnMsg = new Object[3];
		returnMsg[0] = str;
		returnMsg[1] = param;
		returnMsg[2] = msg;
		return returnMsg;
	}
	
	/**
	 * 先在top层跳转,再在frame层跳转
	 * @return
	 */
//	public Object[] redirect(String topPath, String framePath, Object param, String msg){
//		isRedirect = "4";
//		Object[] returnMsg = new String[4];
//		returnMsg[0] = topPath;
//		returnMsg[1] = framePath;
//		returnMsg[2] = msg;
//		returnMsg[3] = param;
//		return returnMsg;
//	}
	
	public Map<String, Object> toJson(Object obj){
		Map<String, Object> map = new HashMap<String, Object>();
		String status = "1";
		if(obj != null){
			status = isRedirect;
			isRedirect = "0";
		}
		map.put("time", sdt.format(new Date()));
		map.put("status", status);
		if (isMsg) {
			map.put("msg", obj);
		}else {
			map.put("data", obj);
		}
		isMsg = false;
		return map;
	}
	
	public void putToForm(String record){
		Map<String, Object> dataForm = JSON.parseObject(record, new TypeReference<Map<String, Object>>(){});
		form.putAll(dataForm);
	}
	
	public boolean isIntegeter(Object obj){
		try {
			Integer.valueOf(obj.toString());
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	public String returnString(Object obj){
		try {
			if(obj != null){
				return obj.toString();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
		return "";
	}
	
	public void checkRequired(String... params) throws Exception {
		for(int i = 0; i < params.length; i++){
			if(form.get(params[i]) == null){
				throw new Exception(params[i]+"不能为空!");
			}
			if("".equals(form.get(params[i]))){
				throw new Exception(params[i]+"不能为空!");
			}
		}
	}
	
}
