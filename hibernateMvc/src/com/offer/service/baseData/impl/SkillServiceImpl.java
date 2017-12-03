package com.offer.service.baseData.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.common.BaseDao;
import com.offer.model.baseData.Skill;
import com.offer.model.util.CheckBox;
import com.offer.service.baseData.SkillService;
import com.offer.util.BaseUtil;
import com.offer.util.BuildCheckBox;

@Service("skillService")
public class SkillServiceImpl extends BaseServiceImpl implements SkillService {

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

	@Override
	public List<Map<String, Object>> findByJobId(String ids) throws Exception {
		if(BaseUtil.isNull(ids)){
			return null;
		}
		String sql = "SELECT j.job_id as jobId,s.id as skillId,s.name as skillName FROM job_skill j LEFT JOIN skill s ON j.skill_id = s.id WHERE j.job_id IN(" + ids + ")";
		sql += "GROUP BY s.id";
		List<Map<String, Object>> list = baseDao.findBySql(sql);
		return list;
	}


	public List<CheckBox> getCheckBox(List<Map<String, Object>> list) throws Exception{
		List<CheckBox> checkBoxs = new ArrayList<CheckBox>();
		List<CheckBox> returnCheckBoxs = new ArrayList<CheckBox>();
		
		for(Map<String, Object> map : list){
			CheckBox checkBox = new CheckBox();
			checkBox.setTitle(BaseUtil.returnString(map.get("skillName")));
			checkBox.setValue(BaseUtil.returnString(map.get("skillId")));
			checkBox.setPatherId(null);
			checkBoxs.add(checkBox);
		}
		returnCheckBoxs = BuildCheckBox.buildCheckBox(checkBoxs);
		return returnCheckBoxs;
	}
}
