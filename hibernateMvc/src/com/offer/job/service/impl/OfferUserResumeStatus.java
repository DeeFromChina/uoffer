package com.offer.job.service.impl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.job.CheckArtAuction;
import com.offer.model.OfferUser;
import com.offer.model.OfferUserInformation;
import com.offer.service.OfferUserInformationService;
import com.offer.service.OfferUserService;
import com.offer.service.impl.BaseServiceImpl;

public class OfferUserResumeStatus extends BaseServiceImpl implements
		CheckArtAuction {

	@Autowired
	private BaseDao baseDao;
	
	@Autowired
	private OfferUserService offerUserService;

	@Autowired
	private OfferUserInformationService offerUserInformationService;

	@Override
	public void executeCheck() throws Exception {
		try {
			Map<String, String> conditionMap = new HashMap<String, String>();
			List<OfferUserInformation> informations = (List<OfferUserInformation>) baseDao.findField(OfferUserInformation.class, conditionMap);
			for(OfferUserInformation information : informations){
				if(information.getCreate_time() == null){
					continue;
				}
				if(daysBetween(information.getCreate_time(), new Date()) > 30){
					OfferUser user = offerUserService.getOfferUser(information.getOfferUserId());
					user.setStatus("5");
					offerUserService.updateOfferUser(user);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int daysBetween(Date smdate, Date bdate) {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			smdate = sdf.parse(sdf.format(smdate));
			bdate = sdf.parse(sdf.format(bdate));
			Calendar cal = Calendar.getInstance();
			cal.setTime(smdate);
			long time1 = cal.getTimeInMillis();
			cal.setTime(bdate);
			long time2 = cal.getTimeInMillis();
			long between_days = (time2 - time1) / (1000 * 3600 * 24);
			return Integer.parseInt(String.valueOf(between_days));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 40;
	}
}
