package com.offer.interceptor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import com.offer.util.BaseUtil;
import com.offer.util.InitSqlXml;

public class InitDataLoadFilter {

	private String FILE_PATH = this.getClass().getClassLoader().getResource("").getPath();
	
	public static Map<String, String> initData = new HashMap<String, String>();
	
	@PostConstruct 
	public void initData() {
		FILE_PATH = FILE_PATH.replace("WEB-INF/classes/", "");
		String sqlPath = FILE_PATH + "sql";
		List<String> resultList = new ArrayList<String>();
		BaseUtil.findFiles(sqlPath, "sql_*.xml", resultList, 5000);
		for(String path : resultList){
			try {
				InitSqlXml.init(initData,path,"sql");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
//		Map<String, String> params = new HashMap<String, String>();
//		params.put("param", "where 1=1");
//		String sql = InitSqlXml.buildSql(params, "queryUserExperienceName");
	}

}
