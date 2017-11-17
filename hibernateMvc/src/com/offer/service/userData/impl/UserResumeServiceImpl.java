package com.offer.service.userData.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.common.BaseDao;
import com.offer.model.userData.UserResume;
import com.offer.service.impl.BaseServiceImpl;
import com.offer.service.userData.UserResumeService;
import com.offer.util.BaseUtil;

@Service("userResumeService")
public class UserResumeServiceImpl implements UserResumeService {

	@Autowired
	private BaseDao baseDao;
	
	@Override
	public UserResume getById(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer save(Map<String, Object> map) throws Exception {
		UserResume userResume = new UserResume();
		BaseUtil.mapToObject(userResume, map);
		if(userResumeInformation(userResume)){
			userResume.setFinish1(1);
		}else{
			userResume.setFinish1(0);
		}
		baseDao.save(userResume);
		return userResume.getId();
	}

	@Override
	public void update(UserResume userResume) throws Exception {
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
		if(BaseUtil.isNull(userResume.getGoJobId2())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getWorkTime1())){
			return false;
		}
		if(BaseUtil.isNull(userResume.getWorkTime2())){
			return false;
		}
		return true;
	}

}
