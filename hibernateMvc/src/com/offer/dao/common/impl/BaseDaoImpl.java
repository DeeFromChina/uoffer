package com.offer.dao.common.impl;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.CriteriaSpecification;
import org.hibernate.jdbc.Work;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Service;

import com.offer.dao.common.BaseDao;
import com.offer.util.BaseUtil;
@Service("BaseDaoImpl")
public class BaseDaoImpl implements BaseDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	private String FILE_PATH = this.getClass().getClassLoader().getResource("").getPath();
	
	public Object getById(Class<?> t, Serializable id) throws Exception{
		try{
			return this.hibernateTemplate.get(t, id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	public Object findField(Class<?> t, Serializable id) throws Exception{
		try {
			StringBuffer hql = new StringBuffer();
			hql.append("FROM ");
			String tableName = t.getName();
			tableName = tableName.substring(tableName.lastIndexOf(".")+1, tableName.length());
			hql.append(tableName+" a ");
			hql.append(" WHERE a.id=");
			hql.append(id);
			List list = hibernateTemplate.find(hql.toString());
			if(list != null && list.size() == 1){
				return list.get(0);
			}else{
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<?> findField(Class<?> t, Map<String, Object> map) throws Exception{
		try {
			Object vo = t.newInstance();
			BaseUtil.mapToObject(vo, map);
			return findFields(t, map);
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
	
	public List<Map<String, Object>> findBySql(String sql) throws Exception{
		SessionFactory sessionFactory = hibernateTemplate.getSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		SQLQuery query = session.createSQLQuery(sql);
		query.setResultTransformer(CriteriaSpecification.ALIAS_TO_ENTITY_MAP);
		List<Map<String, Object>> list = query.list();
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
	
	public void deleteById(int id, Class<?> t) throws Exception{
		try {
			Object object = hibernateTemplate.get(t, id);
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
	
	public List<Map<String, Object>> findByQuery(String path, Map<String, Object> params) throws Exception{
		try {
			FILE_PATH = FILE_PATH.replace("/WEB-INF/classes/", "");
			path = FILE_PATH + path;
			Map<String, String> map = new HashMap<String, String>();
			params.putAll(map);
//			String sql = dom4jXml.initSqlXml(path, map);
//			return findBySql(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void deleteBySql(String sql) throws Exception{
		SessionFactory sessionFactory = hibernateTemplate.getSessionFactory();
		Session session = sessionFactory.getCurrentSession(); 
        SQLQuery query = session.createSQLQuery(sql);    
        query.executeUpdate(); 
	}
	
	public void updateBySql(String sql) throws Exception{
		SessionFactory sessionFactory = hibernateTemplate.getSessionFactory();
		Session session = sessionFactory.getCurrentSession(); 
        SQLQuery query = session.createSQLQuery(sql);    
        query.executeUpdate(); 
	}
	
	public void sendByBatchSql(final String[] sqls) throws Exception{
		SessionFactory sessionFactory = hibernateTemplate.getSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		try{
//			session.beginTransaction();
			session.doWork(new Work(){
				@Override
				public void execute(Connection connection) throws SQLException {
					Statement stmt = connection.createStatement();
					try {
						for(int i = 0; i < sqls.length; i++){
							stmt.addBatch(sqls[i]);
						}
						stmt.executeBatch();
						connection.commit();
						stmt.clearBatch();
					} catch (Exception e) {
						e.printStackTrace();
						connection.rollback();
					}
//					PreparedStatement ps = connection.prepareStatement(sql);
//					ps.addBatch(sql);
//					//ResultSet rs = .executeQuery();
//					try {
//						ResultSetMetaData metaData = rs.getMetaData();
//					}finally{
//						doClose(null, ps, rs);
//					}
//					session.getTransaction().commit();
				}
			});
		}catch(Exception e){
			e.printStackTrace();
		}
//		finally{
//            this.doClose(session, null, null);
//        }
	}
	protected void doClose(Session session, Statement stmt, ResultSet rs){
        if(rs != null){
            try {
                rs.close();
                rs=null;
            } catch (Exception ex) {
                rs=null;
                ex.printStackTrace();
            }
        }
        if(stmt != null){
            try {
                stmt.close();
                stmt=null;
            } catch (Exception ex) {
                stmt=null;
                ex.printStackTrace();
            }
        }
    }
}
