package com.offer.service.baseData.impl;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.model.baseData.City;
import com.offer.model.baseData.Job;
import com.offer.model.util.CheckBox;
import com.offer.model.util.Tree;
import com.offer.service.baseData.CityService;
import com.offer.service.impl.BaseServiceImpl;
import com.offer.util.BuildTree;
import com.offer.util.CacheClass;

@Service("cityService")
public class CityServiceImpl extends BaseServiceImpl implements CityService{
	
	@Autowired
	private BaseDao baseDao;

	@Override
	public City getById(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Hashtable<String, Object> table) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(City city) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Hashtable<String, Object>> getMap(Hashtable<String, Object> table) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteByIds(String ids) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteById(String ids) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Tree> getTree(Hashtable<String, Object> table) throws Exception {
		List<Tree> trees = new ArrayList<Tree>();
		List<Tree> returnTree = new ArrayList<Tree>();
		if(CacheClass.getCache("cityTree") == null){
			List<City> cities = new ArrayList<City>();
			if(CacheClass.getCache("city") == null){
				cities = (List<City>) baseDao.findByHql("From City");
			}else {
				cities = (List<City>) CacheClass.getCache("city");
			}
			trees = BuildTree.setTree(cities, "name", "id", "pid");
			returnTree = BuildTree.buildTree(trees);
			//保存job的树形数据
			CacheClass.setCache("cityTree",returnTree);
			//保存job的数据
			CacheClass.setCache("city",cities);
		}else if(table.get("all") != null){
			returnTree = (List<Tree>) CacheClass.getCache("cityTree");
		}
		return returnTree;
	}

	@Override
	public List<CheckBox> getCheckBox(Hashtable<String, Object> table) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Map<String, String>> getCityList(Hashtable<String, Object> table) throws Exception {
		
		return null;
	}

}
