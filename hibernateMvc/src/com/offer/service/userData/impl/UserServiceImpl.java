package com.offer.service.userData.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.test.context.jdbc.Sql;

import com.offer.dao.common.BaseDao;
import com.offer.model.userData.User;
import com.offer.model.util.CheckBox;
import com.offer.model.util.Tree;
import com.offer.service.impl.BaseServiceImpl;
import com.offer.service.userData.UserService;
import com.offer.util.BaseUtil;

@Service("userService")
public class UserServiceImpl extends BaseServiceImpl implements UserService {
	
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
		if(user != null){
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
		Integer phone = BaseUtil.returnInt(account);
		if(phone != 0){
			hql.append("phone=" + phone);
		}else{
			account = BaseUtil.returnString(account);
			if("".equals(account)){
				throw new Exception("账号有误");
			}
			hql.append("email='" + account + "'");
		}
		User user = new User();
		List<User> users = (List<User>) baseDao.findByHql(hql.toString());
		if(users != null && users.size() == 1){
			user = users.get(0);
			password = BaseUtil.returnString(password);
			if(!password.equals(user.getPassword())){
				throw new Exception("密码有误");
			}
		}else{
			throw new Exception("账号有误");
		}
		return user;
	}

}
