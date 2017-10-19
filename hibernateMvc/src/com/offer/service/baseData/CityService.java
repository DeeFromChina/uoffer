package com.offer.service.baseData;

import java.util.List;
import java.util.Map;

import com.offer.model.baseData.City;
import com.offer.model.util.CheckBox;
import com.offer.model.util.Tree;

public interface CityService {

	public City getById(int id) throws Exception;
	
	public void save(Map<String, Object> map) throws Exception;
	   
	public void update(City city) throws Exception;
   
	public List<Map<String, Object>> getMap(Map<String, Object> map) throws Exception;
   
	public void deleteByIds(String ids) throws Exception;
   
	public void deleteById(String ids) throws Exception;
	
	public List<Tree> getTree(Map<String, Object> map) throws Exception;
	
	public List<CheckBox> getCheckBox(Map<String, Object> map) throws Exception;
	
	public List<Map<String, String>> getCityList(Map<String, Object> map) throws Exception;
}
