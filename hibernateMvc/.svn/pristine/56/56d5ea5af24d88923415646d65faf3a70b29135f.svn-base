package com.offer.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.offer.model.OfferUser;
import com.offer.service.BaseService;
import com.offer.service.OfferFirmService;
import com.offer.service.OfferUserService;

//@Controller
public class BaseController {
	@Autowired
	private BaseService baseService;
	
	@Autowired
	private OfferUserService offerUserService;
	
	@Autowired
	private OfferFirmService offerFirmService;
	
	public HttpSession httpSession;
	
	protected SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	protected SimpleDateFormat sdt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	protected SimpleDateFormat zwsdf = new SimpleDateFormat("yyyy年MM月dd日");
	protected SimpleDateFormat zwsdff = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
	
	public Map<String, String> form = new HashMap<String, String>();
	
	public Map<String, String> getForm() {
		return form;
	}

	public void setForm(Map<String, String> form) {
		this.form = form;
	}

	public static String SUCCESS = "success";

   public static String ERROR = "error";
	
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
	
	public boolean isEmpty(HttpServletRequest request){
		try {
			if(request == null){
				return false;
			}
			Map<String, String[]> map = request.getParameterMap();
			if(map == null){
				return false;
			}
			for(Map.Entry<String, String[]> entry : map.entrySet()){
				if(entry.getValue() == null){
					return false;
				}
			}
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public void putToForm(String record){
		form.clear();
		form = JSON.parseObject(record, new TypeReference<Map<String, String>>(){});
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
	
	public void putUserName(Map<String, Object> map, HttpServletRequest request){
		try {
			String userId = request.getSession().getAttribute("id").toString();
			OfferUser user = offerUserService.getOfferUser(Integer.valueOf(userId));
			if(user.getOfferUserName() != null && !"".equals(user.getOfferUserName())){
				map.put("userName", user.getOfferUserName());
			}else{
				map.put("userName", user.getOfferUserEmail());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean isResetLogin(HttpServletRequest request) {
	   boolean flag = false;
	   try {
	      String userId = request.getSession().getAttribute("id") == null ? "" : request.getSession().getAttribute("id") + "";
	      if ("".equals(userId)) {
            return true;
         }
	      OfferUser offerUser = offerUserService.getOfferUser(Integer.valueOf(userId));
	      request.getSession().setAttribute("status", offerUser.getStatus());
	   }
	   catch (Exception e) {
         e.printStackTrace();
      }
	   return flag;
	}
	
	  public Map<String, Object> isResetLogin1(HttpServletRequest request) {
	     Map<String, Object> map = new HashMap<String, Object>();
	     try {
	         String userId = request.getSession().getAttribute("id") == null ? "" : request.getSession().getAttribute("id") + "";
	         if ("".equals(userId)) {
	            map.put("flag", true);
	         }else {
	            map.put("flag", false);
		         OfferUser offerUser = offerUserService.getOfferUser(Integer.valueOf(userId));
		         map.put("isoffer", offerUser.getIsoffer());
		         map.put("username", offerUser.getOfferUserName());
		         request.getSession().setAttribute("status", offerUser.getStatus());
            }
	         

	      }
	      catch (Exception e) {
	         e.printStackTrace();
	      }
	      return map;
	   }
}
