package com.offer.service.baseData;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import com.offer.model.baseData.City;
import com.offer.model.util.CheckBox;
import com.offer.model.util.Tree;

public interface CityService {

	public City getById(int id) throws Exception;
	
	public void save(Hashtable<String, Object> table) throws Exception;
	   
	public void update(City city) throws Exception;
   
	public List<Hashtable<String, Object>> getMap(Hashtable<String, Object> table) throws Exception;
   
	public void deleteByIds(String ids) throws Exception;
   
	public void deleteById(String ids) throws Exception;
	
	public List<Tree> getTree(Hashtable<String, Object> table) throws Exception;
	
	public List<CheckBox> getCheckBox(Hashtable<String, Object> table) throws Exception;
	
	public List<Map<String, String>> getCityList(Hashtable<String, Object> table) throws Exception;
}
