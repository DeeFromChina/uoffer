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

import com.offer.model.util.Tree;
import com.offer.service.baseData.JobService;


@Controller
public class LoginAction extends TinyBuilderController{
	
	@Autowired
	private JobService jobService;
	
	@ResponseBody
	@RequestMapping(value = "/login", produces = "application/json")
	public Map<String, Object> doAction(HttpServletRequest request, @RequestBody String data) {
		try {
			setMap(request, data);
			Object forward = null;
			String action = form.get("action").toString();
			if("register".equalsIgnoreCase(action)) forward=register();
			
			return toJson(forward);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toJson(SUCCESS);
	}

	public Object register() {
		List<Tree> trees = new ArrayList<Tree>();
		try {
			Hashtable<String, Object> table = new Hashtable<String, Object>();
			table.put("all", "true");
			trees = jobService.getTree(table);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return trees;
	}
}
