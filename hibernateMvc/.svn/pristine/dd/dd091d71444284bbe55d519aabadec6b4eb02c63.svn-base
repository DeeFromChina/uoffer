package com.offer.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.model.OfferFirmWelfare;
import com.offer.service.OfferFirmWelfareService;
@Service("offerFirmWelfareService")
public class OfferFirmWelfareServiceImpl extends BaseServiceImpl implements OfferFirmWelfareService{

	@Autowired
	private BaseDao baseDao;
	
	@Override
	public List<OfferFirmWelfare> findWelfaresByFirmId(String firmId) throws Exception {
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("firm_id", firmId);
			baseDao.findField(OfferFirmWelfare.class, map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
