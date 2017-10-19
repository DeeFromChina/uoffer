package com.offer.service.baseData.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.common.BaseDao;
import com.offer.model.baseData.Skill;
import com.offer.service.baseData.SkillService;

@Service("skillService")
public class SkillServiceImpl implements SkillService {

	@Autowired
	private BaseDao baseDao;
	
	@Override
	public Skill getById(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Skill skill) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Map<String, Object>> getMap(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> list = baseDao.findBySql("From Skill");
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
