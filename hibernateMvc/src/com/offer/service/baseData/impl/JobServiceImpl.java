package com.offer.service.baseData.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.model.OfferCollect;
import com.offer.model.baseData.Job;
import com.offer.model.util.Tree;
import com.offer.service.baseData.JobService;
import com.offer.service.impl.BaseServiceImpl;
import com.offer.util.BuildTree;
import com.offer.util.CacheClass;
import com.offer.util.ChinaInitial;
import com.offer.util.ConUtil;

@Service("jobService")
public class JobServiceImpl extends BaseServiceImpl implements JobService{

	@Autowired
	private BaseDao baseDao;
	   
	@Autowired
	private ConUtil conUtil;

	@Override
	public Job getById(int id) throws Exception {
		
		return null;
	}

	@Override
	public void save(Hashtable<String, Object> table) throws Exception {
		Job job = new Job();
//		job = (Job) conUtil.tableToObject(job, table);
		baseDao.save(job);
	}

	@Override
	public void update(Job job) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Hashtable<String, Object>> getMap(Hashtable<String, Object> table) throws Exception {
		
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
		if(CacheClass.getCache("job") == null){
			List<Job> jobs = (List<Job>) baseDao.findByHql("From job Order By pid ASC");
			for(Job job : jobs){
				Tree tree = new Tree();
				tree.setTitle(job.getName());
				tree.setValue(String.valueOf(job.getId()));
				tree.setVisibility("1");
				tree.setPatherId(String.valueOf(job.getPid()));
				trees.add(tree);
			}
			returnTree = BuildTree.buildTree(trees);
			//保存job的树形数据
			CacheClass.setCache("jobTree",returnTree);
			//保存job的数据
			CacheClass.setCache("job",jobs);
		}
		if(table.get("pid") != null){
			List<Job> jobs = (List<Job>) CacheClass.getCache("job");
			for(Job job : jobs){
				Tree tree = new Tree();
				tree.setTitle(job.getName());
				tree.setValue(String.valueOf(job.getId()));
				if(table.get("pid").equals(String.valueOf(job.getId()))){
					tree.setVisibility("0");
				}else{
					tree.setVisibility("1");
				}
				tree.setPatherId(String.valueOf(job.getPid()));
				trees.add(tree);
			}
			returnTree = BuildTree.buildTree(trees);
		}
		return returnTree;
	}
	
}
