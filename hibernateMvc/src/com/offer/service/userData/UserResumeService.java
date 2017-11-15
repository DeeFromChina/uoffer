package com.offer.service.userData;

import java.util.List;
import java.util.Map;

import com.offer.model.userData.UserResume;

public interface UserResumeService {

	public UserResume getById(int id) throws Exception;

	public Integer save(Map<String, Object> map) throws Exception;

	public void update(UserResume userResume) throws Exception;

	public List<Map<String, Object>> getMap(Map<String, Object> map) throws Exception;

	public void deleteByIds(String ids) throws Exception;

	public void deleteById(String ids) throws Exception;
}
