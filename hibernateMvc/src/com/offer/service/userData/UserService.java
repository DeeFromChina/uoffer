package com.offer.service.userData;

import java.util.Hashtable;
import java.util.List;

import com.offer.model.userData.User;
import com.offer.model.util.CheckBox;
import com.offer.model.util.Tree;

public interface UserService {

	public User getById(int id) throws Exception;

	public void save(Hashtable<String, Object> table) throws Exception;

	public void update(User user) throws Exception;

	public List<Hashtable<String, Object>> getMap(Hashtable<String, Object> table) throws Exception;

	public void deleteByIds(String ids) throws Exception;

	public void deleteById(String ids) throws Exception;

	public List<Tree> getTree(Hashtable<String, Object> table) throws Exception;

	public List<CheckBox> getCheckBox(Hashtable<String, Object> table) throws Exception;
}
