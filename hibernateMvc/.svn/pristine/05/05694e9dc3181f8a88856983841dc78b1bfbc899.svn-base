package com.offer.job.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.offer.dao.BaseDao;
import com.offer.job.CheckArtAuction;
import com.offer.model.OfferUserEmail;
import com.offer.service.impl.BaseServiceImpl;

public class OfferEmailStatus extends BaseServiceImpl implements CheckArtAuction {

	@Autowired
	private BaseDao baseDao;
	
	@Override
	public void executeCheck() throws Exception {
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("status", "1");
			List<OfferUserEmail> offerUserEmails = (List<OfferUserEmail>) baseDao.findField(OfferUserEmail.class, map);
			for(OfferUserEmail email : offerUserEmails){
				if(email.getSendTime() == null){
					continue;
				}
				if(hoursBetween(email.getSendTime(), new Date()) > 24){
					email.setStatus("2");
					saveObject(email);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
