package com.offer.service.baseData;

import java.util.List;
import java.util.Map;

import com.offer.model.baseData.Skill;
import com.offer.model.util.CheckBox;

public interface SkillService {

	public Skill getById(int id) throws Exception;
	
	public void save(Map<String, Object> map) throws Exception;
	   
	public void update(Skill skill) throws Exception;
   
	public List<Map<String, Object>> getMap(Map<String, Object> map) throws Exception;
   
	public void deleteByIds(String ids) throws Exception;
   
	public void deleteById(String ids) throws Exception;
	
	public List<CheckBox> getCheckBox(List<Map<String, Object>> list) throws Exception;
	
	public List<Map<String, Object>> findByJobId(String ids) throws Exception;
}
