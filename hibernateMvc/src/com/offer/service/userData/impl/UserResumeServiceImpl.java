package com.offer.service.userData.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.common.BaseDao;
import com.offer.model.userData.UserResume;
import com.offer.service.userData.UserResumeService;
import com.offer.util.BaseUtil;
import com.offer.util.InitSqlXml;

@Service("userResumeService")
public class UserResumeServiceImpl implements UserResumeService {

	@Autowired
	private BaseDao baseDao;
	
	@Override
	public UserResume getById(int id) throws Exception {
		return (UserResume) baseDao.getById(UserResume.class, id);
	}

	@Override
	public Integer save(Map<String, Object> map) throws Exception {
		UserResume userResume = new UserResume();
		if(!BaseUtil.isNull(map.get("gojobId"))){
			if(map.get("gojobId").toString().indexOf(",") > -1){
				map.put("goJobId1", map.get("gojobId").toString().split(",")[0]);
				map.put("goJobId2", map.get("gojobId").toString().split(",")[1]);
			}else{
				map.put("goJobId1", map.get("gojobId").toString());
			}
		}
		BaseUtil.mapToObject(userResume, map);
		if(userResumeInformation(userResume)){
			userResume.setFinish1(1);
		}else{
			userResume.setFinish1(0);
		}
		if(userResumePlanJob(userResume)){
			userResume.setFinish2(1);
		}else{
			userResume.setFinish2(0);
		}
		if(userResumeQuestion(userResume)){
			userResume.setFinish4(1);
		}else{
			userResume.setFinish4(0);
		}
		baseDao.save(userResume);
		return userResume.getId();
	}

	@Override
	public void update(UserResume userResume) throws Exception {
		try{
			if(userResumeInformation(userResume)){
				userResume.setFinish1(1);
			}else{
				userResume.setFinish1(0);
			}
			if(userResumePlanJob(userResume)){
				userResume.setFinish2(1);
			}else{
				userResume.setFinish2(0);
			}
			if(userResumeQuestion(userResume)){
				userResume.setFinish4(1);
			}else{
				userResume.setFinish4(0);
			}
			baseDao.update(userResume);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	@Override
	public List<Map<String, Object>> queryUserResumeList(int userId) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("param", " WHERE r.user_id="+userId);
		String sql = InitSqlXml.buildSql(map, "queryUserResumeList");
		return baseDao.findBySql(sql);
	}

	@Override
	public void deleteByIds(String ids) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteById(String ids) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
	private boolean userResumeInformation(UserResume userResume){
		if(BaseUtil.isNull(userResume.getName())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getSex())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getWorkTime())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getGoJobId1())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getWorkTime1())){
			return false;
		}
		return true;
	}
	
	private boolean userResumePlanJob(UserResume userResume){
		if(BaseUtil.isNull(userResume.getNowResidence())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getGoJobCity())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getCompanyNature())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getCompanyScale())){
			return false;
		}
		return true;
	}

	private boolean userResumeQuestion(UserResume userResume){
		if(BaseUtil.isNull(userResume.getNowJobStatus())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getSex())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getInTime())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getCurrency1())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getCurrency2())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getMonthMoney1())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getMonthMoney2())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getMonth1())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getMonth2())){
			return false;
		}
		return true;
	}
}
