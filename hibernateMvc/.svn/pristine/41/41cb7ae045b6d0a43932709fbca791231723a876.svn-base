package com.offer.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.offer.dao.BaseDao;
import com.offer.model.OfferWelfare;
import com.offer.service.OfferWelfareService;

public class OfferWelfareServiceImpl extends BaseServiceImpl implements OfferWelfareService{

	@Autowired
	private BaseDao baseDao;
	
	@Override
	public List<OfferWelfare> findAll() throws Exception {
		try {
			Map<String, String> map = new HashMap<String, String>();
			return (List<OfferWelfare>) baseDao.findField(OfferWelfare.class, map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
