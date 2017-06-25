package com.offer.dao;

import java.util.List;

import com.offer.model.Add;

public interface AddMapper {
	public int deleteByPrimaryKey(String id);

	public int insert(Add record);

	public int insertSelective(Add record);

	public Add selectByPrimaryKey(String id);

	public int updateByPrimaryKeySelective(Add record);

	public int updateByPrimaryKey(Add record);
    
	public List<Add> getAll();
}