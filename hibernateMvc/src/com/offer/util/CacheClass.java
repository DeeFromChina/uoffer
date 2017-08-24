package com.offer.util;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class CacheClass {

	private static Map<String, Object> cache = new ConcurrentHashMap<String, Object>();
	
	public static void setCache(String key, Object object){
		cache.put(key, object);
	}
	
	public static Object getCache(String key){
		return cache.get(key);
	}
	
	public static void removeCache(String key){
		cache.remove(key);
	}
}
