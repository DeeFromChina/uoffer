package com.offer.service.baseData;

import java.util.Hashtable;
import java.util.List;

import com.offer.model.baseData.Skill;

public interface SkillService {

	public Skill getById(int id) throws Exception;
	
	public void save(Hashtable<String, Object> table) throws Exception;
	   
	public void update(Skill skill) throws Exception;
   
	public List<Hashtable<String, Object>> getTable(Hashtable<String, Object> table) throws Exception;
   
	public void deleteByIds(String ids) throws Exception;
   
	public void deleteById(String ids) throws Exception;
}
