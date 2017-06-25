package com.offer.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.offer.model.Add;

@Repository
public class AddMapperImpl implements AddMapper {
	@Autowired
	private HibernateTemplate template;

	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Add record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Add record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Add selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Add record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Add record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Add> getAll() {
		String sql = "FROM Add";
		return (List<Add>) template.find(sql);
	}

}
