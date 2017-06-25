package com.offer.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface BaseDao {

	public Object findField(Class<?> t, Serializable id) throws Exception;

	public List<?> findField(Class<?> t, Map<String, String> map) throws Exception;

	public List<Map<String, String>> findBySql(String sql) throws Exception;

	public void save(Object object) throws Exception;
	
	public void saveOrUpdate(Object object) throws Exception;

	public void update(Object object) throws Exception;

	public void delete(Object object) throws Exception;

	public void deleteByIds(Serializable[] ids, Class<?> t) throws Exception;
	
	public List<Map<String, String>> findByQuery(String path, Map<String, String> params) throws Exception;
	
	public void deleteBySql(String sql) throws Exception;
}
