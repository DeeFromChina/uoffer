package com.offer.interceptor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import com.offer.util.BaseUtil;
import com.offer.util.InitSqlXml;

public class InitTypeMappingFilter {

private String FILE_PATH = this.getClass().getClassLoader().getResource("").getPath();
	
	public static Map<String, String> initTypeMapping = new HashMap<String, String>();
	
	@PostConstruct 
	public void initData() {
		FILE_PATH = FILE_PATH.replace("WEB-INF/classes/properties", "");
		String sqlPath = FILE_PATH + "sql";
		List<String> resultList = new ArrayList<String>();
		BaseUtil.findFiles(sqlPath, "mapping_*.xml", resultList, 5000);
		for(String path : resultList){
			try {
				InitSqlXml.init(initTypeMapping,path,"mapping");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}

}
