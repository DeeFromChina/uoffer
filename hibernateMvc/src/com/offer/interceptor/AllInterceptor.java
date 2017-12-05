package com.offer.interceptor;

import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

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
			if(user == null){
				if(!islogin){
					if(gologin(request)){
						return true;
					}
				}
				httpSession.setAttribute("islogin", null);
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

	private boolean gologin(HttpServletRequest request){
    	String url = request.getRequestURL().toString();
    	if(url.indexOf("/login.do") > -1){
    		Map<String, String[]> map = request.getParameterMap();
    		if(map == null){
    			return false;
    		}
    		if(map.get("action") == null || map.get("action").length == 0){
    			return false;
    		}
    		if(!"login".equalsIgnoreCase(map.get("action")[0]) && !"register".equalsIgnoreCase(map.get("action")[0])){
    			return false;
    		}
		}
    	return true;
    }
}
