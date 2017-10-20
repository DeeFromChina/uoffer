package com.offer.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.offer.model.userData.User;
import com.offer.service.baseData.JobService;
import com.offer.service.userData.UserService;
import com.offer.util.BaseUtil;


@Controller
public class LoginAction extends TinyBuilderController{
	
	@Autowired
	private JobService jobService;
	
	@Autowired
	private UserService userService;
	
	@ResponseBody
	@RequestMapping(value = "/login", produces = "application/json")
	public Map<String, Object> doAction(HttpServletRequest request, @RequestBody String data) {
		try {
			setMap(request, data);
			Object forward = null;
			String action = form.get("action").toString();
			
			if("login".equalsIgnoreCase(action)) forward = login();
			if("register".equalsIgnoreCase(action)) forward = register();
			
			return toJson(forward);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toJson(SUCCESS);
	}

	private Object login() {
		String pageName = "userData/add_information_frame.jsp";
		try {
			if(form.get("type") == null){
				return ERROR;
			}
			if(!"1".equals(form.get("type")) && !"2".equals(form.get("type"))){
				return ERROR;
			}
//			checkRequired("email", "goJobId", "cityId", "password");
			String account = BaseUtil.returnString(form.get("name"));
			String password = BaseUtil.returnString(form.get("password"));
			User user = userService.getByAccount(account, password);
			if(user == null){
				throw new Exception("用户不存在");
			}
			int pageNum = userService.checkUserResume(user.getId());
			switch (pageNum) {
				case 1: pageName = "resume_add_information.jsp";
				case 2: pageName = "resume_add_planjob.jsp";
				case 3: pageName = "resume_add_questionnaire.jsp";
				case 4: pageName = "resume_add_workexperience.jsp";
				case 5: pageName = "resume_add_information.jsp";
				case 6: 
					pageName = "resume_add_information.jsp";
					return redirect("login/login.jsp", "保存成功", true);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return addMessage(e.getMessage());
		}
		return redirect(pageName, "", true);
	}
	
	private Object register() {
		try {
			if(form.get("type") == null){
				return ERROR;
			}
			if(!"1".equals(form.get("type")) && !"2".equals(form.get("type"))){
				return ERROR;
			}
			if("1".equals(form.get("type"))){
//				checkRequired("email", "goJobId", "cityId", "password");
			}
			if("2".equals(form.get("type"))){
//				checkRequired("companyName", "userName", "jobId", "email", "phone", "password");
			}
//			userService.save(form);
		} catch (Exception e) {
			e.printStackTrace();
			return addMessage(e.getMessage());
		}
		return redirect("login/login.jsp", "保存成功", true);
	}
}
