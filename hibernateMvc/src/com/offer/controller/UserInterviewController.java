package com.offer.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.offer.model.baseData.FileTable;
import com.offer.model.userData.User;
import com.offer.service.baseData.FileTableService;
import com.offer.service.userData.UserResumeService;
import com.offer.util.BaseUtil;

@Controller
public class UserInterviewController extends TinyBuilderController {

	@Autowired
	private FileTableService fileTableService;
	
	@Autowired
	private UserResumeService userResumeService;
	
	@ResponseBody
	@RequestMapping(value = "/userInterview", produces = "application/json")
	public Map<String, Object> doAction(HttpServletRequest request, @RequestBody String data) {
		try {
			setMap(request, data);
			Object forward = null;
			String action = form.get("action").toString();
			
			if("getTop".equalsIgnoreCase(action)) forward = getTop();
			else if("userInformation".equalsIgnoreCase(action)) forward = userInformation();
			else if("userResumeList".equalsIgnoreCase(action)) forward = userResumeList();
			
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
			param.put("table_id", user.getId());
			param.put("file_type", "photo");
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
		titleMap.put("information", map);
		
		String type = (String) httpSession.getAttribute("type");
		titleMap.put("type", type);
		
		return titleMap;
	}
	
	private Object userInformation(){
		try {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("tableName", "user");
			param.put("table_id", user.getId());
			param.put("file_type", "photo");
			FileTable fileTable = fileTableService.findFileTable(param);
			if(!BaseUtil.isNull(fileTable)){
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("filePath", fileTable.getFilePath());
				map.put("fileName", fileTable.getFileRealName());
				return map;
			}else{
				return NORMAL;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	private Object userResumeList(){
		try {
			return userResumeService.queryUserResumeList(user.getId());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
