package com.offer.service.baseData.impl;

import java.util.Hashtable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.offer.dao.common.BaseDao;
import com.offer.model.baseData.Skill;
import com.offer.service.baseData.SkillService;

public class SkillServiceImpl implements SkillService {

	@Autowired
	private BaseDao baseDao;
	
	@Override
	public Skill getById(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Hashtable<String, Object> table) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Skill skill) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Hashtable<String, Object>> getTable(Hashtable<String, Object> table) throws Exception {
		List<Hashtable<String, Object>> list = baseDao.findBySql("From Skill");
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

}
