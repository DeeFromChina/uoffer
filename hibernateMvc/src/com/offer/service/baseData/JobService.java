package com.offer.service.baseData;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import com.offer.model.baseData.Job;
import com.offer.model.util.Tree;

public interface JobService {

	public Job getById(int id) throws Exception;
	
	public void save(Hashtable<String, Object> table) throws Exception;
	   
	public void update(Job job) throws Exception;
   
	public List<Hashtable<String, Object>> getMap(Hashtable<String, Object> table) throws Exception;
   
	public void deleteByIds(String ids) throws Exception;
   
	public void deleteById(String ids) throws Exception;
	
	public List<Tree> getTree(Hashtable<String, Object> table) throws Exception;
}
