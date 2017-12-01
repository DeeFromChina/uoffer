package com.offer.interceptor;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import com.offer.model.userData.User;

public class AllInterceptor extends HandlerInterceptorAdapter {
	
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,Object o) throws Exception{
    	try{
    		HttpSession httpSession = request.getSession();
    		User user = (User) httpSession.getAttribute("user");
    		boolean islogin = false;
    		if(httpSession.getAttribute("islogin") != null){
    			islogin = true;
    		}
			if(user == null && islogin){
				ServletOutputStream out = response.getOutputStream();
				out.print("unlogin");
    			out.flush();
                out.close();
                return false;
			}
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    	return true;
    }
}
