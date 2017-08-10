package com.offer.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.mysql.fabric.xmlrpc.base.Array;
import com.offer.controller.BaseController;
import com.offer.model.OfferUser;
import com.sun.accessibility.internal.resources.accessibility;


@Controller
public class TinyBuilderController{

	public HttpSession httpSession;
	
	public List<Map<String, Object>> homeList = new ArrayList<Map<String, Object>>();
	public Hashtable<String, String> form = new Hashtable<String, String>();
	
	protected SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	protected SimpleDateFormat sdt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	protected SimpleDateFormat zwsdf = new SimpleDateFormat("yyyy年MM月dd日");
	protected SimpleDateFormat zwsdff = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
	
	public static String SUCCESS = "success";
	public static String ERROR = "error";
	
	public Hashtable<String, String> getForm() {
		return form;
	}

	public void setForm(Hashtable<String, String> form) {
		this.form = form;
	}
	
	@ResponseBody
	@RequestMapping(value = "/controller", produces = "application/json")
	public Map<String, Object> actionAllocator(HttpServletRequest request, @RequestBody String data) {
		try {
			setMap(request, data);
//			homeData();
			if("login".equalsIgnoreCase(form.get("action"))) return goAction();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toJson(SUCCESS);
	}
	
	private String setMap(HttpServletRequest request, String data){
		if(request == null){
			return "request error";
		}
		Map<String, String[]> map = request.getParameterMap();
		if(map == null){
			return "map error";
		}
		if(map.get("action") == null || map.get("action").length == 0){
			return "action error";
		}
		for(Map.Entry<String, String[]> entry : map.entrySet()){
			if(entry.getKey() == null){
				return entry.getValue()+" error";
			}
			if(entry.getValue() == null){
				return entry.getKey()+" error";
			}
			form.clear();
			form.put(entry.getKey(), entry.getValue()[0]);
			putToForm(data);
		}
		return SUCCESS;
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
	
	public Map<String, Object> goAction(){
		return null;
	}
	
	public Map<String, Object> toJson(Object obj){
		Map<String, Object> map = new HashMap<String, Object>();
		String status = "1";
		if(obj != null){
			status = "0";
		}
		map.put("time", sdt.format(new Date()));
		map.put("status", status);
		map.put("data", obj);
		return map;
	}
	
	public void putToForm(String record){
		form = JSON.parseObject(record, new TypeReference<Hashtable<String, String>>(){});
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
	
}
