package com.offer.service.baseData.impl;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import com.offer.model.baseData.City;
import com.offer.model.baseData.Job;
import com.offer.model.util.CheckBox;
import com.offer.model.util.Tree;
import com.offer.service.baseData.CityService;
import com.offer.service.impl.BaseServiceImpl;
import com.offer.util.BuildTree;
import com.offer.util.CacheClass;

public class CityServiceImpl extends BaseServiceImpl implements CityService{

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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CheckBox> getCheckBox(Hashtable<String, Object> table) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Map<String, String>> getCityList() throws Exception {
		List<Tree> trees = new ArrayList<Tree>();
		List<Tree> returnTree = new ArrayList<Tree>();
		if(CacheClass.getCache("jobTree") == null){
			List<Job> jobs = (List<Job>) baseDao.findByHql("From Job");
			for(Job job : jobs){
				Tree tree = new Tree();
				tree.setTitle(job.getName());
				tree.setValue(String.valueOf(job.getId()));
				tree.setVisibility("1");
				tree.setPatherId(job.getPid() == null ? null : String.valueOf(job.getPid()));
				trees.add(tree);
			}
			returnTree = BuildTree.buildTree(trees);
			//保存job的树形数据
			CacheClass.setCache("jobTree",returnTree);
			//保存job的数据
			CacheClass.setCache("job",jobs);
		}else if(table.get("all") != null){
			returnTree = (List<Tree>) CacheClass.getCache("jobTree");
		}
		return null;
	}

}
