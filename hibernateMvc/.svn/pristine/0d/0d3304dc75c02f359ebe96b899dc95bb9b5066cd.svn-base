package com.offer.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.model.OfferCollect;
import com.offer.service.OfferCollectService;
import com.offer.util.ConUtil;

@Service("offerCollectService")
public class OfferCollectServiceImpl extends BaseServiceImpl implements OfferCollectService {

   @Override
   public void saveOfferCollect(Map<String, String> map) throws Exception {
      OfferCollect offerCollect = new OfferCollect();
      String firmId = map.get("firmId");//当前企业ID
      if (firmId != null && firmId.length() > 0) {
         offerCollect.setOfferFirmId(Integer.valueOf(firmId));
      }
      String userId = map.get("userId");//候选人ID
      if (userId != null && userId.length() > 0) {
         offerCollect.setOfferUserId(Integer.valueOf(userId));
      }
      String status = map.get("status");//不感兴趣或收藏的状态
      if (status != null && status.length() > 0) {
         offerCollect.setStatus(Integer.valueOf(status));
      }
      baseDao.save(offerCollect);
   }
   
   @Override
   public List<Map<String, String>> getOfferCollectss(Map<String, String> map) throws Exception {
      StringBuffer sql = new StringBuffer();
      sql.append(" WHERE C.STATUS = '1' ");
      String firmId = map.get("firmId");//当前企业ID
      sql.append(" AND C.FIRM_ID = '" + firmId + "' ");
      String offerUserCity = map.get("offerUserCity");
      if (offerUserCity != null && offerUserCity.length() > 0) {
         sql.append(" AND U.OFFER_USER_CITY = '" + offerUserCity + "' ");
      }
      String offerJobId = map.get("jobId");
      if (offerJobId != null && offerJobId.length() > 0) {
         sql.append(" AND U.OFFER_JOB_ID in (" + offerJobId + ") ");
      }
      map.put("param", sql.toString());
      return baseDao.findByQuery("/sql/sql_collect.xml", map);
   }
   
   @Override
   public OfferCollect getOfferCollect(int id) throws Exception {
      return (OfferCollect) baseDao.findField(OfferCollect.class, id);
   }
   
   @Override
   public void updateOfferCollect(OfferCollect offerCollect) throws Exception {
      baseDao.update(offerCollect);
   }
   
   @Override
   public void deleteOfferCollect(String ids) throws Exception {
      String[] id = ids.split(",");
      Integer[] del_ids = new Integer[id.length];
      for (int i = 0; i < id.length; i++) {
         del_ids[i] = Integer.parseInt(id[i]);
      }
      baseDao.deleteByIds(del_ids, OfferCollect.class);
   }
   
   @Autowired
   private BaseDao baseDao;
   
   @Autowired
   private ConUtil conUtil;
}
