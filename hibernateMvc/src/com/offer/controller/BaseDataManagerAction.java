package com.offer.controller;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.offer.model.util.CheckBox;
import com.offer.service.baseData.JobService;

/**
 * @author sammy
 * 基础数据管理
 *
 */
@Controller
public class BaseDataManagerAction extends TinyBuilderController{
	
	@Autowired
	private JobService jobService;

	@ResponseBody
	@RequestMapping(value = "/baseData", produces = "application/json")
	public Map<String, Object> doAction(HttpServletRequest request, @RequestBody String data) {
		try {
			setMap(request, data);
			Object forward = null;
			String action = form.get("action").toString();
			
			if("addJob".equalsIgnoreCase(action)) forward=addJob();
			if("getJob".equalsIgnoreCase(action)) forward=getJob();
			if("getCity".equalsIgnoreCase(action)) forward=getCity();
			
			toJson(forward);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toJson(SUCCESS);
	}
	
	public Object addJob() {
		try {
			jobService.save(form);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Object getJob() {
		try {
			jobService.getMap(form);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Object getCity() {
		List<CheckBox> checkBoxs = new ArrayList<CheckBox>();
		try {
			Hashtable<String, Object> table = new Hashtable<String, Object>();
			table.put("count", "4");
			checkBoxs = jobService.getCheckBox(table);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return checkBoxs;
	}
}
