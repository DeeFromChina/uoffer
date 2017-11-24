package com.offer.service.userData;

import java.util.List;
import java.util.Map;

import com.offer.model.userData.UserExperience;

public interface UserExperienceService {

	public UserExperience getById(int id) throws Exception;

	public Integer save(Map<String, Object> map) throws Exception;

	public void update(UserExperience userExperience) throws Exception;

	public List<Map<String, Object>> getMap(Map<String, Object> map) throws Exception;

	public void deleteByIds(String ids) throws Exception;

	public void deleteById(String ids) throws Exception;
	
	public List<UserExperience> getByUserId(int userId) throws Exception;
	
	public List<Map<String, Object>> getByUserResumeIdAndType(int userResumeId, String type) throws Exception;
}
