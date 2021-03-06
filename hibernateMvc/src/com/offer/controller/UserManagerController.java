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

import com.offer.model.baseData.FileTable;
import com.offer.model.baseData.Job;
import com.offer.model.userData.UserExperience;
import com.offer.model.userData.UserResume;
import com.offer.service.baseData.FileTableService;
import com.offer.service.baseData.JobService;
import com.offer.service.userData.UserExperienceService;
import com.offer.service.userData.UserResumeService;
import com.offer.service.userData.UserResumeSkillService;
import com.offer.service.userData.UserService;
import com.offer.util.BaseUtil;
import com.offer.util.EncodeUtil;

@Controller
public class UserManagerController extends TinyBuilderController {
	
	@Autowired
	private JobService jobService;

	@Autowired
	private FileTableService fileTableService;

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
			
			if("userToPage".equalsIgnoreCase(action)) forward = userToPage();
			else if("queryUserInformation".equalsIgnoreCase(action)) forward = queryUserInformation();
			else if("queryUserResumeSkills".equalsIgnoreCase(action)) forward = queryUserResumeSkills();
			else if("saveUserInformation".equalsIgnoreCase(action)) forward = saveUserInformation();
			
			else if("userPlanjob".equalsIgnoreCase(action)) forward = userPlanjob();

			else if("userExperienceList".equalsIgnoreCase(action)) forward = userExperienceList();
			else if("queryUserExperience".equalsIgnoreCase(action)) forward = queryUserExperience();
			else if("queryUserExperienceDemo".equalsIgnoreCase(action)) forward = queryUserExperienceDemo();
			else if("saveUserExperience".equalsIgnoreCase(action)) forward = saveUserExperience();
			else if("delUserExperience".equalsIgnoreCase(action)) forward = delUserExperience();
			
			else if("userQuestion".equalsIgnoreCase(action)) forward = userQuestion();
			
			return toJson(forward);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toJson(SUCCESS);
	}
	
	private Object userToPage(){
//		String pageName = "resume_add_information";
//		Map<String, String> map = new HashMap<String, String>();
//		try {
//			map = userService.checkUserResume(user.getId());
//			if(map.get("param") == null){
//				throw new Exception("userToPage Map is null!");
//			}
//			String pageNum = map.get("param");
//			switch (pageNum) {
//			case "1": pageName = "resume_add_information";break;
//			case "2": pageName = "resume_add_planjob.jsp";break;
//			case "3": pageName = "resume_add_questionnaire.jsp";break;
//			case "4": pageName = "resume_add_workexperience.jsp";break;
//			case "6": 
//				pageName = "resume_add_information.jsp";
//				return redirect("common/frame.jsp", "", "很多份简历", true);
//			}
//		} catch (Exception e) {
//			System.err.println(e.getMessage());
//			e.printStackTrace();
//		}
//		map.put("pageName", pageName);
//		return redirect("userData/add_information_frame.jsp", map, "", false);
//		return redirect("userInterview/user_resumes.jsp", "", "", false);
		return redirect("userInterview/user_interview.jsp", "", "", false);
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
			return NORMAL;
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
			return NORMAL;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private Object saveUserInformation(){
		try {
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
			form.put("userId", user.getId());
			int userResumeId = 0;
			if(BaseUtil.isNull(form.get("userResumeId"))){
				userResumeId = userResumeService.save(form);
			}else{
				userResumeId = EncodeUtil.changeId(form.get("userResumeId").toString());
				UserResume userResume = userResumeService.getById(userResumeId);
				BaseUtil.mapToObject(userResume, form);
				userResumeService.update(userResume);
			}
			return EncodeUtil.IDEncoder(userResumeId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 简历工作经历
	 * @return
	 */
	private Object userExperienceList(){
		try {
			if(!BaseUtil.isNull(form.get("userResumeId")) && !BaseUtil.isNull(form.get("type"))){
				int userResumeId = EncodeUtil.changeId(form.get("userResumeId").toString());
				List<Map<String, Object>> list = userExperienceService.getByUserResumeIdAndType(userResumeId, form.get("type").toString());
				for(Map<String, Object> map : list){
					String id = EncodeUtil.IDEncoder(Integer.valueOf(map.get("id").toString()));
					map.put("id", id);
				}
				return list;
			}
			return NORMAL;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private Object queryUserExperience(){
		try {
			if(BaseUtil.isNull(form.get("userExperienceId"))){
				return NORMAL;
			}else{
				int userExperienceId = EncodeUtil.changeId(form.get("userExperienceId").toString());
				UserExperience userExperience = userExperienceService.getById(userExperienceId);
				Map<String, Object> map = new HashMap<String, Object>();
				BaseUtil.objectToMap(map, userExperience);
				if(userExperience.getJobBelong() != null){
					Job job = jobService.getById(userExperience.getJobBelong());
					map.put("jobBelongName", job.getName());
				}
				map.put("userExperienceId",EncodeUtil.IDEncoder(userExperience.getId()));
				return map;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private Object queryUserExperienceDemo(){
		try {
			if(!BaseUtil.isNull(form.get("type"))){
				List<Map<String, Object>> list = userExperienceService.getDemo(user.getId(), form.get("type").toString());
				for(Map<String, Object> map : list){
					String id = EncodeUtil.IDEncoder(Integer.valueOf(map.get("id").toString()));
					map.put("id", id);
				}
				return list;
			}
			return NORMAL;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private Object saveUserExperience(){
		try {
			form.put("userId", user.getId());
			int userResumeId;
			if(BaseUtil.isNull(form.get("userExperienceId"))){
				userResumeId = userExperienceService.save(form);
			}else{
				int userExperienceId = EncodeUtil.changeId(form.get("userExperienceId").toString());
				UserExperience userExperience = userExperienceService.getById(userExperienceId);
				userResumeId = EncodeUtil.changeId(form.get("userResumeId").toString());
				form.put("userResumeId",userResumeId);
				BaseUtil.mapToObject(userExperience, form);
				userExperienceService.update(userExperience);
				userResumeId = userExperience.getUserResumeId();
			}
			
			return EncodeUtil.IDEncoder(userResumeId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private Object delUserExperience(){
		try {
			if(!BaseUtil.isNull(form.get("userExperienceId"))){
				int userResumeId = EncodeUtil.changeId(form.get("userExperienceId").toString());
				userExperienceService.deleteById(userResumeId);
			}else{
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return NORMAL;
	}
	
	private Object userQuestion(){
		try {
			form.put("userId", user.getId());
			
			int phone = BaseUtil.returnInt(form.get("phone"));
			if(phone != 0){
				user.setPhone(phone);
				userService.update(user);
			}
			
			int userResumeId = 0;
			if(BaseUtil.isNull(form.get("userResumeId"))){
				userResumeId = userResumeService.save(form);
			}else{
				userResumeId = EncodeUtil.changeId(form.get("userResumeId").toString());
				UserResume userResume = userResumeService.getById(userResumeId);
				BaseUtil.mapToObject(userResume, form);
				userResumeService.update(userResume);
			}
			return EncodeUtil.IDEncoder(userResumeId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
