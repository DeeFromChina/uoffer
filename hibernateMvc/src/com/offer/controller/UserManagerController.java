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
			
			if("getTop".equalsIgnoreCase(action)) forward = getTop();
			if("userInformation".equalsIgnoreCase(action)) forward = userInformation();
			
			return toJson(forward);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toJson(SUCCESS);
	}
	
	private Object getTop(){
		Map<String, Object> titleMap = new HashMap<String, Object>();
		
		StringBuffer centerTitle = new StringBuffer();
		centerTitle.append("[");
		centerTitle.append("{\"title\":\"面试邀请\",\"url\":\"go(\'\')\"}");
		centerTitle.append(",");
		centerTitle.append("{\"title\":\"我的简历\",\"url\":\"go(\'\')\"}");
		centerTitle.append("]");
		
		StringBuffer userImg = new StringBuffer();
		userImg.append("[");
		userImg.append("{\"url\":\"changjinglu.jpg\"}");
		userImg.append("]");
		
		StringBuffer rightTitle = new StringBuffer();
		rightTitle.append("[");
		rightTitle.append("{\"title\":\"个人设置\",\"url\":\"go(\'\')\"}");
		rightTitle.append(",");
		rightTitle.append("{\"title\":\"退出\",\"url\":\"go(\'\')\"}");
		rightTitle.append("]");
		
		titleMap.put("centerTitle", centerTitle);
		titleMap.put("userImg", userImg);
		titleMap.put("rightTitle", rightTitle);
		
		return titleMap;
	}
	
	private Object userInformation(){
		return null;
	}
}
