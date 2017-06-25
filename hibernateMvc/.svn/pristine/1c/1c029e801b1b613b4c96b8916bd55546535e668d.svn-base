package com.offer.dao.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.CriteriaSpecification;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.offer.dao.BaseDao;
import com.offer.util.ConUtil;
import com.offer.util.Dom4jXml;

@Repository
public class BaseDaoImpl implements BaseDao{

	@Autowired
	private Dom4jXml dom4jXml;
	
	@Autowired
	private ConUtil conUtil;
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	private String FILE_PATH = this.getClass().getClassLoader().getResource("").getPath();
	
	public Object findField(Class<?> t, Serializable id) throws Exception{
		try {
			StringBuffer hql = new StringBuffer();
			hql.append("FROM ");
			String tableName = t.getName();
			tableName = tableName.substring(tableName.lastIndexOf(".")+1, tableName.length());
			hql.append(tableName+" a ");
			hql.append(" WHERE a.id=");
			hql.append(id);
			return hibernateTemplate.find(hql.toString());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<?> findField(Class<?> t, Map<String, String> map) throws Exception{
		try {
			Object vo = t.newInstance();
			conUtil.mapToObject(vo, map);
			Map<String, Object> target = new HashMap<String, Object>();
			conUtil.stringChangeObject(target, vo);
			return findFields(t, target);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private List<?> findFields(Class<?> t, Map<String, Object> map) throws Exception{
		try {
			String[] keyParams = new String[map.size()];
			Object[] valueParams = new Object[map.size()];
			StringBuffer hql = new StringBuffer();
			hql.append("FROM ");
			String tableName = t.getName();
			tableName = tableName.substring(tableName.lastIndexOf(".")+1, tableName.length());
			hql.append(tableName+" a ");
			if(map != null){
				hql.append(" WHERE 1=1 ");
				int i = 0;
				for(Map.Entry<String, Object> entry : map.entrySet()){
					hql.append(" AND ");
					hql.append(" a."+entry.getKey()+"=:"+entry.getKey());
					keyParams[i] = entry.getKey();
					valueParams[i] = entry.getValue();
					i++;
				}
			}
			return (List<?>)hibernateTemplate.findByNamedParam(hql.toString(), keyParams, valueParams);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<Map<String, String>> findBySql(String sql) throws Exception{
		SessionFactory sessionFactory = hibernateTemplate.getSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		SQLQuery query = session.createSQLQuery(sql);
		query.setResultTransformer(CriteriaSpecification.ALIAS_TO_ENTITY_MAP);
		List<Map<String, String>> list = query.list();
		return list;
	}
	
	public List<?> findByHql(String hql) throws Exception{
		return (List<?>)hibernateTemplate.find(hql.toString());
	}
	
	public void save(Object object) throws Exception{
		try {
			hibernateTemplate.save(object);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void saveOrUpdate(Object object) throws Exception{
      try {
         hibernateTemplate.saveOrUpdate(object);
      } catch (Exception e) {
         e.printStackTrace();
      }
   }
	
	public void update(Object object) throws Exception{
		try {
			hibernateTemplate.update(object);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void delete(Object object) throws Exception{
		try {
			hibernateTemplate.delete(object);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteByIds(Serializable[] ids,Class<?> t) throws Exception{
		try {
			List<Object> list = new ArrayList<Object>();
			for(Serializable id : ids){
				Object l = hibernateTemplate.get(t, id);
				list.add(l);
			}
			hibernateTemplate.deleteAll(list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Map<String, String>> findByQuery(String path, Map<String, String> params) throws Exception{
		try {
			FILE_PATH = FILE_PATH.replace("/WEB-INF/classes/", "");
			path = FILE_PATH + path;
			String sql = dom4jXml.initSqlXml(path, params);
			return findBySql(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void deleteBySql(String sql) throws Exception{
		findBySql(sql);
	}
}
