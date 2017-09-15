package com.offer.dao.common;

import java.io.Serializable;
import java.util.Hashtable;
import java.util.List;

public interface BaseDao {

	public Object findField(Class<?> t, Serializable id) throws Exception;

	public List<?> findField(Class<?> t, Hashtable<String, Object> map) throws Exception;

	public List<Hashtable<String, Object>> findBySql(String sql) throws Exception;

	public void save(Object object) throws Exception;
	
	public void saveOrUpdate(Object object) throws Exception;

	public void update(Object object) throws Exception;

	public void delete(Object object) throws Exception;

	public void deleteByIds(Serializable[] ids, Class<?> t) throws Exception;
	
	public List<Hashtable<String, Object>> findByQuery(String path, Hashtable<String, Object> params) throws Exception;
	
	public void deleteBySql(String sql) throws Exception;
	
	public void updateBySql(String sql) throws Exception;
	
	public void sendByBatchSql(String[] sqls) throws Exception;
	
	public List<?> findByHql(String hql) throws Exception;
}
