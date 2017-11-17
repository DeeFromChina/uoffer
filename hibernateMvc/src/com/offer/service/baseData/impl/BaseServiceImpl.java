package com.offer.service.baseData.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.offer.service.baseData.BaseService;

@Service("baseService1")
public class BaseServiceImpl implements BaseService {

	public int ListSize(List list){
		if(list != null && list.size() == 0){
			return 0;
		}
		return list.size();
	}

}
