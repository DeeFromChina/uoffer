package com.offer.service.userData.impl;

import java.util.Hashtable;
import java.util.List;

import org.springframework.stereotype.Service;

import com.offer.model.userData.User;
import com.offer.model.util.CheckBox;
import com.offer.model.util.Tree;
import com.offer.service.impl.BaseServiceImpl;
import com.offer.service.userData.UserService;

@Service("userService")
public class UserServiceImpl extends BaseServiceImpl implements UserService {

	@Override
	public User getById(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Hashtable<String, Object> table) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(User user) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Hashtable<String, Object>> getMap(Hashtable<String, Object> table) throws Exception {
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
	public List<Tree> getTree(Hashtable<String, Object> table) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CheckBox> getCheckBox(Hashtable<String, Object> table) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
