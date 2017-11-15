package com.offer.controller;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.dialect.function.VarArgsSQLFunction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.offer.model.userData.User;
import com.offer.model.userData.UserResume;
import com.offer.service.userData.UserResumeService;
import com.offer.service.userData.UserService;
import com.offer.util.BaseUtil;

@Controller
public class UserManagerController extends TinyBuilderController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private UserResumeService userResumeService;
	
	@ResponseBody
	@RequestMapping(value = "/userData", produces = "application/json")
	public Map<String, Object> doAction(HttpServletRequest request, @RequestBody String data) {
		try {
			setMap(request, data);
			Object forward = null;
			String action = form.get("action").toString();
			
			if("getTop".equalsIgnoreCase(action)) forward = getTop();
			if("userToPage".equalsIgnoreCase(action)) forward = userToPage();
			if("userInformation".equalsIgnoreCase(action)) forward = userInformation();
			if("userPlanjob".equalsIgnoreCase(action)) forward = userPlanjob();
			if("userExperience".equalsIgnoreCase(action)) forward = userExperience();
			if("userQuestion".equalsIgnoreCase(action)) forward = userQuestion();
			
			return toJson(forward);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toJson(SUCCESS);
	}
	
	private Object getTop(){
		User user = (User) httpSession.getAttribute("user");
		if(user == null){
			return addMessage("没有找到用户");
		}
		
		Map<String, Object> titleMap = new HashMap<String, Object>();
		
		StringBuffer centerTitle = new StringBuffer();
		centerTitle.append("[");
		centerTitle.append("{\"title\":\"面试邀请\",\"url\":\"go(\'\')\"}");
		centerTitle.append(",");
		centerTitle.append("{\"title\":\"我的简历\",\"url\":\"go(\'\')\"}");
		centerTitle.append("]");
		
		String userIcon = "changjinglu.jpg";
		if(user.getUserType() == 1){
			
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
		
		String type = (String) httpSession.getAttribute("type");
		titleMap.put("type", type);
		
		return titleMap;
	}
	
	private Object userToPage(){
		String pageName = "resume_add_information";
		try {
			User user = (User) httpSession.getAttribute("user");
			int pageNum;
			pageNum = userService.checkUserResume(user.getId());
			switch (pageNum) {
			case 1: pageName = "resume_add_information";
			case 2: pageName = "resume_add_planjob.jsp";
			case 3: pageName = "resume_add_questionnaire.jsp";
			case 4: pageName = "resume_add_workexperience.jsp";
			case 6: 
				pageName = "resume_add_information.jsp";
				return redirect("common/frame.jsp", "", "很多份简历", true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return redirect("userData/add_information_frame.jsp", pageName, "", false);
	}
	
	private Object userInformation(){
		try {
			Integer userResumeId = userResumeService.save(form);
			if(userResumeId == 0){
				return addMessage(SAVEERROR);
			}
			return userResumeId;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private Object userPlanjob(){
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private Object userExperience(){
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private Object userQuestion(){
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
