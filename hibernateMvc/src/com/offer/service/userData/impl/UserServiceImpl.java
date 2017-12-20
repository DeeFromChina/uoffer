package com.offer.service.userData.impl;

import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.common.BaseDao;
import com.offer.dao.common.impl.BaseDaoImpl;
import com.offer.model.baseData.FileTable;
import com.offer.model.userData.User;
import com.offer.model.userData.UserResume;
import com.offer.model.util.CheckBox;
import com.offer.model.util.Tree;
import com.offer.service.userData.UserService;
import com.offer.util.BaseUtil;
import com.offer.util.EncodeUtil;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private BaseDao baseDao;

	@Override
	public User getById(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Map<String, Object> map) throws Exception {
		User user = new User();
		BaseUtil.mapToObject(user, map);
		if((user.getEmail() != null || user.getPhone() != null) && user.getPassword() != null){
			user.setUserType(BaseUtil.returnInt(map.get("type")));
			baseDao.save(user);
		}
	}

	@Override
	public void update(User user) throws Exception {
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
	public List<Tree> getTree(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CheckBox> getCheckBox(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getByAccount(String account, String password) throws Exception {
		StringBuffer hql = new StringBuffer();
		hql.append("FROM User WHERE ");
		if(!BaseUtil.isEmail(account)){
			Integer phone = BaseUtil.returnInt(account);
			if(phone != 0){
				hql.append("phone=" + phone);
			}else{
				throw new Exception("账号有误");
			}
		}else{
			hql.append("email='" + account + "'");
		}
		User user = null;
		List<User> users = (List<User>) baseDao.findByHql(hql.toString());
		if(users != null && users.size() == 1){
			user = users.get(0);
			if(!password.equals(user.getPassword())){
				throw new Exception("密码有误");
			}
		}else if(users.size() > 1){
			throw new Exception("用户有误");
		}
		return user;
	}

	@Override
	public Map<String, String> checkUserResume(int userId) throws Exception {
		String hql = "FROM UserResume WHERE userId=" + String.valueOf(userId);
		List<UserResume> userResumes = (List<UserResume>) baseDao.findByHql(hql);
		Map<String, String> map = new HashMap<String, String>();
		if(userResumes == null || userResumes.size() == 0){
			map.put("param", "1");
		}else if(userResumes.size() == 1){
			UserResume userResume = userResumes.get(0);
			map.put("userResumeId", EncodeUtil.IDEncoder(userResume.getId()));
			if(BaseUtil.returnInt(userResume.getFinish1()) == 0){
				map.put("param", "1");
			}else if(BaseUtil.returnInt(userResume.getFinish2()) == 0){
				map.put("param", "2");
			}else if(BaseUtil.returnInt(userResume.getFinish3()) == 0){
				map.put("param", "3");
			}else if(BaseUtil.returnInt(userResume.getFinish4()) == 0){
				map.put("param", "4");
			}else{
				map.put("param", "1");
			}
		}else{
			map.put("param", "6");
		}
		return map;
	}
	
	@Override
	public void updateUserPhoto(ArrayList<FileTable> fileTables, HashMap<String, Object> form) throws Exception{
		if(fileTables.size() == 0){
			return;
		}
		FileTable fileTable = fileTables.get(0);
		String sql = "DELETE FROM file_table WHERE table_id = " + fileTable.getTableId() + " AND id != " + fileTable.getId();
		baseDao.deleteBySql(sql);
	}

	public BaseDao getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
	
}
