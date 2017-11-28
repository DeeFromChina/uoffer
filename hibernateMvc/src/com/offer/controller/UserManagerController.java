package com.offer.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.druid.sql.visitor.functions.Isnull;
import com.mysql.fabric.HashShardMapping;
import com.offer.model.userData.User;
import com.offer.model.userData.UserExperience;
import com.offer.model.userData.UserResume;
import com.offer.service.userData.UserExperienceService;
import com.offer.service.userData.UserResumeService;
import com.offer.service.userData.UserResumeSkillService;
import com.offer.service.userData.UserService;
import com.offer.util.BaseUtil;
import com.offer.util.EncodeUtil;

@Controller
public class UserManagerController extends TinyBuilderController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private UserResumeService userResumeService;
	
	@Autowired
	private UserResumeSkillService userResumeSkillService;
	
	@Autowired
	private UserExperienceService userExperienceService;
	
	@ResponseBody
	@RequestMapping(value = "/userData", produces = "application/json")
	public Map<String, Object> doAction(HttpServletRequest request, @RequestBody String data) {
		try {
			setMap(request, data);
			Object forward = null;
			String action = form.get("action").toString();
			
			if("getTop".equalsIgnoreCase(action)) forward = getTop();
			if("userToPage".equalsIgnoreCase(action)) forward = userToPage();
			if("queryUserInformation".equalsIgnoreCase(action)) forward = queryUserInformation();
			if("queryUserResumeSkills".equalsIgnoreCase(action)) forward = queryUserResumeSkills();
			if("saveUserInformation".equalsIgnoreCase(action)) forward = saveUserInformation();
			if("userPlanjob".equalsIgnoreCase(action)) forward = userPlanjob();
			if("userExperienceList".equalsIgnoreCase(action)) forward = userExperienceList();
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
			case 1: pageName = "resume_add_information";break;
			case 2: pageName = "resume_add_planjob.jsp";break;
			case 3: pageName = "resume_add_questionnaire.jsp";break;
			case 4: pageName = "resume_add_workexperience.jsp";break;
			case 6: 
				pageName = "resume_add_information.jsp";
				return redirect("common/frame.jsp", "", "很多份简历", true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return redirect("userData/add_information_frame.jsp", pageName, "", false);
	}
	
	private Object queryUserInformation(){
		try {
			if(!BaseUtil.isNull(form.get("userResumeId"))){
				int userResumeId = EncodeUtil.changeId(form.get("userResumeId").toString());
				UserResume userResume = userResumeService.getById(userResumeId);
				Map<String, Object> map = new HashMap<String, Object>();
				BaseUtil.objectToMap(map, userResume);
				String goJobId = "";
				if(!BaseUtil.isNull(userResume.getGoJobId1())){
					goJobId = userResume.getGoJobId1().toString();
				}
				if(!BaseUtil.isNull(userResume.getGoJobId2())){
					if(!"".equals(goJobId)){
						goJobId += ",";
					}
					goJobId += userResume.getGoJobId2().toString();
				}
				map.put("gojobId", goJobId);
				map.remove("id");
				return map;
			}
			return "";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private Object queryUserResumeSkills(){
		try {
			if(!BaseUtil.isNull(form.get("userResumeId"))){
				Integer userResumeId = EncodeUtil.changeId(form.get("userResumeId").toString());
				return userResumeSkillService.getByUserResumeId(userResumeId);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private Object saveUserInformation(){
		try {
			User user = (User) httpSession.getAttribute("user");
			if(user == null){
				return SESSIONERROR;
			}
			form.put("userId", user.getId());
			Integer userResumeId = 0;
			if(!BaseUtil.isNull(form.get("userResumeId"))){
				userResumeId = EncodeUtil.changeId(form.get("userResumeId").toString());
				UserResume userResume = userResumeService.getById(userResumeId);
				BaseUtil.mapToObject(userResume, form);
				userResumeService.update(userResume);
			}else{
				userResumeId = userResumeService.save(form);
			}
			if(userResumeId == 0){
				return addMessage(SAVEERROR);
			}
			return EncodeUtil.IDEncoder(userResumeId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private Object userPlanjob(){
		try {
			if(BaseUtil.isNull(form.get("userResumeId"))){
				return null;
			}
			int userResumeId = EncodeUtil.changeId(form.get("userResumeId").toString());
			UserResume userResume = userResumeService.getById(userResumeId);
			BaseUtil.mapToObject(userResume, form);
			userResumeService.update(userResume);
			return EncodeUtil.IDEncoder(1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private Object userExperienceList(){
		try {
			if(!BaseUtil.isNull(form.get("userResumeId")) && !BaseUtil.isNull(form.get("type"))){
				int userResumeId = EncodeUtil.changeId(form.get("userResumeId").toString());
				return userExperienceService.getByUserResumeIdAndType(userResumeId,form.get("type").toString());
			}
			return "";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private Object userExperience(){
		try {
			int userResumeId;
			if(BaseUtil.isNull(form.get("userExperienceId"))){
				userResumeId = userExperienceService.save(form);
			}else{
				int userExperienceId = EncodeUtil.changeId(form.get("userExperienceId").toString());
				UserExperience userExperience = userExperienceService.getById(userExperienceId);
				userExperienceService.update(userExperience);
				userResumeId = userExperience.getUserResumeId();
			}
			return EncodeUtil.IDEncoder(userResumeId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private Object userQuestion(){
		try {
			if(BaseUtil.isNull(form.get("userResumeId"))){
				return null;
			}
			int userResumeId = EncodeUtil.changeId(form.get("userResumeId").toString());
			UserResume userResume = userResumeService.getById(userResumeId);
			BaseUtil.mapToObject(userResume, form);
			userResumeService.update(userResume);
			return EncodeUtil.IDEncoder(1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
