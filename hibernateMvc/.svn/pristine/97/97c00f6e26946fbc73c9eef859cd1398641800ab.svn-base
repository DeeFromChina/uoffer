package com.offer.job.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.offer.dao.BaseDao;
import com.offer.job.CheckArtAuction;
import com.offer.model.OfferFirmSelect;
import com.offer.service.impl.BaseServiceImpl;

public class OfferFirmSelectStatus extends BaseServiceImpl implements CheckArtAuction {

	@Autowired
	private BaseDao baseDao;

	@Override
	public void executeCheck() throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("status", "1");
		List<OfferFirmSelect> offerFirmSelects = (List<OfferFirmSelect>) baseDao.findField(OfferFirmSelect.class, map);
		for(OfferFirmSelect offerFirmSelect : offerFirmSelects){
			if(offerFirmSelect.getCreateTime() == null){
				continue;
			}
			if(daysBetween(offerFirmSelect.getCreateTime(), new Date()) > 7){
				offerFirmSelect.setStatus("2");
				saveObject(offerFirmSelect);
			}
		}
	}

}
