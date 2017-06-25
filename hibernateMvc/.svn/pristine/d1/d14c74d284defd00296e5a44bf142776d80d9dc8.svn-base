package com.offer.util.impl;

import org.springframework.stereotype.Service;

import com.offer.util.JSONString;

@Service("jsonString")
public class JSONStringImpl implements JSONString{

	public String toJson(Object obj){
		try {
			if(obj != null){
				return obj.toString();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
}
