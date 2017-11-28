package com.offer.service.userData.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.common.BaseDao;
import com.offer.service.userData.UserResumeSkillService;
import com.offer.util.InitSqlXml;

@Service("userResumeSkillService")
public class UserResumeSkillServiceImpl implements UserResumeSkillService {

	@Autowired
	private BaseDao baseDao;
	
	@Override
	public List<Map<String, Object>> getByUserResumeId(int userResumeId) throws Exception {
		String param = "where 1=1 ";
		if(userResumeId > 0){
			param += " AND rs.user_resume_id = " + userResumeId;
		}
		Map<String, String> params = new HashMap<String, String>();
		params.put("param", param);
		String sql = InitSqlXml.buildSql(params, "queryUserResumeSkill");
		return baseDao.findBySql(sql);
	}

}
