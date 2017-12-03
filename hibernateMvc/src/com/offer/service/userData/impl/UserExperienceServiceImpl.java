package com.offer.service.userData.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.common.BaseDao;
import com.offer.model.userData.UserExperience;
import com.offer.model.userData.UserResume;
import com.offer.service.userData.UserExperienceService;
import com.offer.service.userData.UserResumeService;
import com.offer.util.BaseUtil;
import com.offer.util.EncodeUtil;
import com.offer.util.InitSqlXml;

@Service("userExperienceService")
public class UserExperienceServiceImpl implements UserExperienceService {

	@Autowired
	private BaseDao baseDao;
	
	@Autowired
	private UserResumeService userResumeService;
	
	@Override
	public UserExperience getById(int id) throws Exception {
		return (UserExperience) baseDao.getById(UserExperience.class, id);
	}

	@Override
	public Integer save(Map<String, Object> map) throws Exception {
		int userResumeId;
		UserResume userResume = new UserResume();
		if(map.get("userResumeId") == null){
			baseDao.save(userResume);
			userResumeId = userResume.getId();
		}else{
			userResumeId = EncodeUtil.changeId(map.get("userResumeId").toString());
		}
		map.put("userResumeId", userResumeId);
		
		UserExperience userExperience = new UserExperience();
		BaseUtil.mapToObject(userExperience, map);
		baseDao.save(userExperience);
		
		userResume = userResumeService.getById(userExperience.getUserResumeId());
		userResume.setFinish3(1);
		baseDao.update(userResume);
		
		return userResumeId;
	}

	@Override
	public void update(UserExperience userExperience) throws Exception {
		baseDao.update(userExperience);
		UserResume userResume = userResumeService.getById(userExperience.getUserResumeId());
		userResume.setFinish3(1);
		baseDao.update(userResume);
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
		baseDao.findByQuery("sql/userData/sql_user", map);
		List<UserExperience> userExperiences = (List<UserExperience>) baseDao.findField(UserExperience.class, map);
		return userExperiences;
	}
	
	@Override
	public List<Map<String, Object>> getByUserResumeIdAndType(int userResumeId, String type) throws Exception {
		String param = "where 1=1 ";
		if(userResumeId > 0){
			param += " AND e.user_resume_id = " + userResumeId;
		}
		if(!"".equals(type)){
			param += " AND e.type = '" + type + "'";
		}
		Map<String, String> params = new HashMap<String, String>();
		params.put("param", param);
		String sql = InitSqlXml.buildSql(params, "queryUserExperience");
		return baseDao.findBySql(sql);
	}

}
