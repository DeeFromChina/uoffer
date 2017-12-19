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

import com.offer.model.baseData.FileTable;
import com.offer.model.util.CheckBox;
import com.offer.model.util.Tree;
import com.offer.service.baseData.CityService;
import com.offer.service.baseData.FileTableService;
import com.offer.service.baseData.JobService;
import com.offer.service.baseData.SkillService;
import com.offer.util.BaseUtil;
import com.offer.util.EncodeUtil;

/**
 * @author sammy
 * 基础数据管理
 *
 */
@Controller
public class BaseDataManagerAction extends TinyBuilderController {

	@Autowired
	private FileTableService fileTableService;
	
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
			
			if("getTop".equalsIgnoreCase(action)) forward = getTop();
			else if("addJob".equalsIgnoreCase(action)) forward=addJob();
			else if("getJob".equalsIgnoreCase(action)) forward=getJob();
			else if("getCity".equalsIgnoreCase(action)) forward=getCity();
			else if("getSkill".equalsIgnoreCase(action)) forward=getSkill();
			
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
		
		String userIcon = "changjinglu.jpg";
		try {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("tableName", "user");
			param.put("tableId", user.getId());
			param.put("fileType", "userPhoto");
			FileTable fileTable = fileTableService.findFileTable(param);
			if(!BaseUtil.isNull(fileTable)){
				userIcon = fileTable.getFilePath();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		StringBuffer userImg = new StringBuffer();
		userImg.append("[");
		userImg.append("{\"url\":\""+ userIcon +"\"}");
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
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("phone", user.getPhone());
		map.put("email", user.getEmail());
		map.put("username", user.getUserName());
		map.put("userid", EncodeUtil.IDEncoder(user.getId()));
		titleMap.put("information", map);
		
		String type = (String) httpSession.getAttribute("type");
		titleMap.put("type", type);
		
		return titleMap;
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
