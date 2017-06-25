package com.offer.job.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.offer.dao.BaseDao;
import com.offer.job.CheckArtAuction;
import com.offer.model.OfferFirmSelect;
import com.offer.model.OfferInvite;
import com.offer.service.impl.BaseServiceImpl;

public class OfferInviteChangeStatus extends BaseServiceImpl implements CheckArtAuction {

   @Autowired
   private BaseDao baseDao;
   
   @Override
   public void executeCheck() throws Exception {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("SELECT I.ID AS id, I.STATUS AS status, I.CREATE_TIME AS createTime FROM OFFER_INVITE I WHERE I.STATUS < 2");
      List<Map<String, String>> offerFirmSelects = baseDao.findBySql(stringBuffer.toString());
      for (Map<String, String> map : offerFirmSelects) {
         String id = returnString(map.get("id"));
         OfferInvite offerInvite = ((List<OfferInvite>) baseDao.findField(OfferInvite.class, id)).get(0);
         if(daysBetween(offerInvite.getCreateTime(), new Date()) > 14){
            offerInvite.setStatus(8);
            baseDao.saveOrUpdate(offerInvite);
         }
      }

   }

}
