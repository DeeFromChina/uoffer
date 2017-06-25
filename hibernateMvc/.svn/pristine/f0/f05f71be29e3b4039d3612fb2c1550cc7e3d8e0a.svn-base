package com.offer.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.model.OfferJob;
import com.offer.model.OfferMatch;
import com.offer.service.OfferMatchService;
import com.offer.service.OfferPhotoService;

@Service("offerMatchService")
public class OfferMatchServiceImpl extends BaseServiceImpl implements OfferMatchService{

	@Override
	public void saveOfferMatch(String offerUserId, String firmId,
			String houxuanrenId) throws Exception {
	      OfferMatch offerMatch = new OfferMatch();
	      offerMatch.setFirmUserId(offerUserId);
	      offerMatch.setFirmId(firmId);
	      offerMatch.setUserId(houxuanrenId);
	      offerMatch.setStatus("1");
	      offerMatch.setMatchTime(new Date());
	      baseDao.save(offerMatch);
		
	}
	
   @Override
   public List<OfferMatch> getOfferMatch4offerUserId(String id) throws Exception {
      Map<String, String> map = new HashMap<String, String>();//所有的工作数据,不添加任何条件
      map.put("firmUserId", id);
      return (List<OfferMatch>) baseDao.findField(OfferMatch.class, map);
   }

   @Autowired
   private BaseDao baseDao;

}
