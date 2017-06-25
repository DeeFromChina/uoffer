package com.offer.util;

import java.util.Map;

public interface ConUtil {
	
	public void stringChangeObject(Map target, Object src) throws Exception;
	
	public void objectToMap(Map target, Object src) throws Exception;

	public Object mapToObject(Object target, Map<String, String> src) throws Exception;
	
	public Object map2Object(Object target, Map<String, Object> src) throws Exception;
}
