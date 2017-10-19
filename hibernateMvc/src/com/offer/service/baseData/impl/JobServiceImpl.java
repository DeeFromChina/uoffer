package com.offer.service.baseData.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.model.baseData.Job;
import com.offer.model.util.CheckBox;
import com.offer.model.util.Tree;
import com.offer.service.baseData.JobService;
import com.offer.service.impl.BaseServiceImpl;
import com.offer.util.BuildCheckBox;
import com.offer.util.BuildTree;
import com.offer.util.CacheClass;

@Service("jobService")
public class JobServiceImpl extends BaseServiceImpl implements JobService{

	@Autowired
	private BaseDao baseDao;
	   
	@Override
	public Job getById(int id) throws Exception {
		
		return null;
	}

	@Override
	public void save(Map<String, Object> map) throws Exception {
		Job job = new Job();
		baseDao.save(job);
	}

	@Override
	public void update(Job job) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Map<String, Object>> getMap(Map<String, Object> map) throws Exception {
		
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
	public List<Tree> getTree(Map<String, Object> map) throws Exception {
		List<Tree> trees = new ArrayList<Tree>();
		List<Tree> returnTree = new ArrayList<Tree>();
		if(CacheClass.getCache("jobTree") == null){
			List<Job> jobs = (List<Job>) baseDao.findByHql("From Job");
//			for(Job job : jobs){
//				Tree tree = new Tree();
//				tree.setTitle(job.getName());
//				tree.setValue(String.valueOf(job.getId()));
//				tree.setVisibility("1");
//				tree.setPatherId(job.getPid() == null ? null : String.valueOf(job.getPid()));
//				trees.add(tree);
//			}
			//将jobs变成trees
			trees = BuildTree.setTree(jobs, "name", "id", "pid");
			returnTree = BuildTree.buildTree(trees);
			//保存job的树形数据
			CacheClass.setCache("jobTree",returnTree);
			//保存job的数据
			CacheClass.setCache("job",jobs);
		}else if(map.get("all") != null){
			returnTree = (List<Tree>) CacheClass.getCache("jobTree");
		}
		if(map.get("id") != null){
			List<Job> jobs = (List<Job>) CacheClass.getCache("job");
			for(Job job : jobs){
				Tree tree = new Tree();
				tree.setTitle(job.getName());
				tree.setValue(String.valueOf(job.getId()));
				if(map.get("id").equals(String.valueOf(job.getId()))){
					tree.setVisibility("0");
				}else{
					tree.setVisibility("1");
				}
				tree.setPatherId(job.getPid() == null ? null : String.valueOf(job.getPid()));
				trees.add(tree);
			}
			returnTree = BuildTree.buildTree(trees);
		}
		return returnTree;
	}
	
	public List<CheckBox> getCheckBox(Map<String, Object> map) throws Exception{
		List<CheckBox> checkBoxs = new ArrayList<CheckBox>();
		List<CheckBox> returnCheckBoxs = new ArrayList<CheckBox>();
		if(CacheClass.getCache("jobCheckBox") == null){
			List<Job> jobs = (List<Job>) baseDao.findByHql("From Job");
			for(Job job : jobs){
				CheckBox checkBox = new CheckBox();
				checkBox.setTitle(job.getName());
				checkBox.setValue(String.valueOf(job.getId()));
				checkBox.setPatherId(job.getPid() == null ? null : String.valueOf(job.getPid()));
				checkBoxs.add(checkBox);
			}
			returnCheckBoxs = BuildCheckBox.buildCheckBox(checkBoxs);
			//保存job的树形数据
			CacheClass.setCache("jobCheckBox",returnCheckBoxs);
			//保存job的数据
			CacheClass.setCache("job",jobs);
		}else if(map.get("all") != null){
			returnCheckBoxs = (List<CheckBox>) CacheClass.getCache("jobCheckBox");
		}
		if(map.get("count") != null){
			returnCheckBoxs = (List<CheckBox>) CacheClass.getCache("jobCheckBox");
			BuildCheckBox.selectCheckBox(returnCheckBoxs, returnInt(map.get("count")));
		}
		return returnCheckBoxs;
	}
	
}
