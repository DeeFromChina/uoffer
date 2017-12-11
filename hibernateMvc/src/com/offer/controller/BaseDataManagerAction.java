package com.offer.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.offer.model.util.CheckBox;
import com.offer.model.util.Tree;
import com.offer.service.baseData.CityService;
import com.offer.service.baseData.JobService;
import com.offer.service.baseData.SkillService;

/**
 * @author sammy
 * 基础数据管理
 *
 */
@Controller
public class BaseDataManagerAction extends TinyBuilderController {
	
	@Autowired
	private JobService jobService;
	
	@Autowired
	private CityService cityService;
	
	@Autowired
	private SkillService skillService;

	@ResponseBody
	@RequestMapping(value = "/baseData", produces = "application/json")
	public Map<String, Object> doAction(HttpServletRequest request, @RequestBody String data) {
		try {
			setMap(request, data);
			Object forward = null;
			String action = form.get("action").toString();
			
			if("addJob".equalsIgnoreCase(action)) forward=addJob();
			else if("getJob".equalsIgnoreCase(action)) forward=getJob();
			else if("getCity".equalsIgnoreCase(action)) forward=getCity();
			else if("getSkill".equalsIgnoreCase(action)) forward=getSkill();
			
			return toJson(forward);
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
		List<CheckBox> checkBoxs = new ArrayList<CheckBox>();
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("count", "4");
			checkBoxs = jobService.getCheckBox(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return checkBoxs;
	}
	
	public Object getCity() {
		List<Tree> trees = new ArrayList<Tree>();
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("all", "true");
			trees = cityService.getTree(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return trees;
	}
	
	public Object getSkill() {
		try {
			List<Map<String, Object>> list = skillService.findByJobId(form.get("ids").toString());
			if(list != null){
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("skillName", "其他");
				map.put("skillId", "other");
				list.add(map);
				List<CheckBox> checkBoxs = skillService.getCheckBox(list);
				return checkBoxs;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
}
