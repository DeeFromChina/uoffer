package com.offer.service.userData.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.offer.dao.common.BaseDao;
import com.offer.model.userData.UserExperience;
import com.offer.model.userData.UserResume;
import com.offer.service.impl.BaseServiceImpl;
import com.offer.service.userData.UserExperienceService;
import com.offer.util.BaseUtil;

public class UserExperienceServiceImpl extends BaseServiceImpl implements UserExperienceService {

	@Autowired
	private BaseDao baseDao;
	
	@Override
	public UserExperience getById(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Map<String, Object> map) throws Exception {
		if(map.get("userResumeId") == null){
			UserResume userResume = new UserResume();
			baseDao.save(userResume);
			map.put("userResumeId", userResume.getId());
		}
		UserExperience userExperience = new UserExperience();
		BaseUtil.mapToObject(userExperience, map);
		baseDao.save(userExperience);
	}

	@Override
	public void update(UserExperience userExperience) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Map<String, Object>> getMap(Map<String, Object> map) throws Exception {
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
	public List<UserExperience> getByUserId(int userId) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		baseDao.findByQuery("sql/userData/sql_user", params)
		List<UserExperience> userExperiences = (List<UserExperience>) baseDao.findField(UserExperience.class, map);
		return userExperiences;
	}

}
