package com.offer.service.baseData.impl;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.stereotype.Service;

import com.offer.service.baseData.BaseService;

@Service("baseService1")
public class BaseServiceImpl implements BaseService {
	
	protected SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	protected SimpleDateFormat sdt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	protected SimpleDateFormat ymd = new SimpleDateFormat("yyyy年MM月dd日");
	protected SimpleDateFormat ymdhms = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");

	public int ListSize(List list){
		if(list != null && list.size() == 0){
			return 0;
		}
		return list.size();
	}

}
