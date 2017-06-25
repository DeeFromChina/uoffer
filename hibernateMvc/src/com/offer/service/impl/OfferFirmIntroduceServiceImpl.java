package com.offer.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.model.OfferFirmIntroduce;
import com.offer.service.OfferFirmIntroduceService;
import com.offer.util.ConUtil;

@Service("offerFirmIntroduceService")
public class OfferFirmIntroduceServiceImpl extends BaseServiceImpl implements OfferFirmIntroduceService {

   public List<OfferFirmIntroduce> getOfferFirmIntroduces(String id) throws Exception {
      Map<String, String> map = new HashMap<String, String>();
      map.put("firm_id", id);
      return (List<OfferFirmIntroduce>) baseDao.findField(OfferFirmIntroduce.class, map);
   }

   @Override
   public void saveOrUpdateOfferFirmIntroduce(String id, HttpServletRequest request) throws Exception {
      List<OfferFirmIntroduce> offerFirmIntroduces = getOfferFirmIntroduces(id);
      String firmDescript = request.getParameter("firmDescript");
      String isphoto = request.getParameter("isphoto");

      if (offerFirmIntroduces.size() > 0) {
         OfferFirmIntroduce offerFirmIntroduce = offerFirmIntroduces.get(0);
         offerFirmIntroduce.setCreateTime(new Date());
         offerFirmIntroduce.setFirmDescript(firmDescript);
         offerFirmIntroduce.setIsphoto(isphoto);
         baseDao.update(offerFirmIntroduce);
      }
      else {
         OfferFirmIntroduce offerFirmIntroduce = new OfferFirmIntroduce();
         offerFirmIntroduce.setCreateTime(new Date());
         offerFirmIntroduce.setFirmDescript(firmDescript);
         offerFirmIntroduce.setFirmId(Integer.valueOf(id));
         offerFirmIntroduce.setIsphoto(isphoto);
         baseDao.save(offerFirmIntroduce);
      }

   }
   
   @Override
   public List<OfferFirmIntroduce> getOfferFirmIntroduces(int id) throws Exception {
      return (List<OfferFirmIntroduce>) baseDao.findField(OfferFirmIntroduce.class, id);
   }
   
   @Override
   public void updateOfferFirmIntroduce(OfferFirmIntroduce offerFirmIntroduce) throws Exception {
      baseDao.update(offerFirmIntroduce);
   }
   
   @Override
   public void saveOfferFirmIntroduce(Map<String, String> map) throws Exception {
      OfferFirmIntroduce offerFirmIntroduce = new OfferFirmIntroduce();
      conUtil.mapToObject(offerFirmIntroduce, map);
      baseDao.save(offerFirmIntroduce);
   }
   
   @Override
   public void deleteOfferFirmIntroduce(String ids) throws Exception {
      String[] id = ids.split(",");
      Integer[] del_ids = new Integer[id.length];
      for (int i = 0; i < id.length; i++) {
         del_ids[i] = Integer.parseInt(id[i]);
      }
      baseDao.deleteByIds(del_ids, OfferFirmIntroduce.class);
   }

   @Autowired
   private BaseDao baseDao;
   
   @Autowired
   private ConUtil conUtil;
}
