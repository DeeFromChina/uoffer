package com.offer.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserManagerController extends TinyBuilderController {

	@ResponseBody
	@RequestMapping(value = "/userData", produces = "application/json")
	public Map<String, Object> doAction(HttpServletRequest request, @RequestBody String data) {
		try {
			setMap(request, data);
			Object forward = null;
			String action = form.get("action").toString();
			
			if("getTop".equalsIgnoreCase(action)) forward=getTop();
			
			return toJson(forward);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toJson(SUCCESS);
	}
	
	private Object getTop(){
		List<Map<String, String>> list = new ArrayList<Map<String, String>>();
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("title", "面试邀请");
		map.put("url", "go('')");
		list.add(map);
		map.clear();
		
		map.put("title", "我的简历");
		map.put("url", "go('')");
		list.add(map);
		map.clear();
		return null;
	}
}
