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
	private UserService userService;
	
	@ResponseBody
	@RequestMapping(value = "/login", produces = "application/json")
	public Map<String, Object> doAction(HttpServletRequest request, @RequestBody String data) {
		try {
			setMap(request, data);
			Object forward = null;
			String action = form.get("action").toString();
			
			if("login".equalsIgnoreCase(action)) forward = login();
			else if("register".equalsIgnoreCase(action)) forward = register();
			else if("fileUpload".equalsIgnoreCase(action)) forward = fileUpload();
			
			return toJson(forward);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toJson(SUCCESS);
	}
	
	private Object fileUpload(){
		return null;
	}

	private Object login() {
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
			httpSession.setAttribute("type", form.get("type"));
			httpSession.setAttribute("user", user);
			httpSession.setAttribute("islogin", "true");
		} catch (Exception e) {
			e.printStackTrace();
			return addMessage(e.getMessage());
		}
		return redirect("common/frame.jsp", "", "", true);
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
				checkRequired("email", "goJobId", "cityId", "password");
			}
			if("2".equals(form.get("type"))){
				checkRequired("companyName", "userName", "jobId", "email", "phone", "password");
			}
			userService.save(form);
		} catch (Exception e) {
			e.printStackTrace();
			return addMessage(e.getMessage());
		}
		return redirect("login/login.jsp", "", "保存成功", true);
	}
}
