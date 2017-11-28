package com.offer.service.userData;

import java.util.List;
import java.util.Map;

public interface UserResumeSkillService {

	public List<Map<String, Object>> getByUserResumeId(int userResumeId) throws Exception;
}
