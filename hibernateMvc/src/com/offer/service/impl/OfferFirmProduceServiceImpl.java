package com.offer.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.model.OfferFirmProduce;
import com.offer.service.OfferFirmProduceService;
import com.offer.util.ConUtil;

@Service("offerFirmProduceService")
public class OfferFirmProduceServiceImpl extends BaseServiceImpl implements OfferFirmProduceService {
   
   public List<OfferFirmProduce> getOfferFirmProduces(String id) throws Exception {
      Map<String, String> map = new HashMap<String, String>();
      map.put("firm_id", id);
      return (List<OfferFirmProduce>) baseDao.findField(OfferFirmProduce.class, map); 
   }

   @Override
   public void saveOrUpdateOfferFirmProduce(String id, HttpServletRequest request) throws Exception {
      List<OfferFirmProduce> offerFirmProduces = getOfferFirmProduces(id);
      String produceDescript = request.getParameter("produceDescript");
      if (offerFirmProduces.size() > 0) {
         OfferFirmProduce offerFirmProduce = offerFirmProduces.get(0);
         offerFirmProduce.setCreateTime(new Date());
         offerFirmProduce.setProduceDescript(produceDescript);
         baseDao.update(offerFirmProduce);
      }
      else {
         OfferFirmProduce offerFirmProduce = new OfferFirmProduce();
         offerFirmProduce.setCreateTime(new Date());
         offerFirmProduce.setProduceDescript(produceDescript);
         offerFirmProduce.setFirmId(Integer.valueOf(id));
         baseDao.save(offerFirmProduce);
      }
   }
   
   @Override
   public List<OfferFirmProduce> getOfferFirmProduces(int id) throws Exception {
      return (List<OfferFirmProduce>) baseDao.findField(OfferFirmProduce.class, id);
   }
   
   @Override
   public void updateOfferFirmProduce(OfferFirmProduce offerFirmProduce) throws Exception {
      baseDao.update(offerFirmProduce);
   }
   
   @Override
   public void deleteOfferFirmProduce(String ids) throws Exception {
      String[] id = ids.split(",");
      Integer[] del_ids = new Integer[id.length];
      for (int i = 0; i < id.length; i++) {
         del_ids[i] = Integer.parseInt(id[i]);
      }
      baseDao.deleteByIds(del_ids, OfferFirmProduce.class);
   }
   
   @Override
   public void saveOfferFirmProduce(Map<String, String> map) throws Exception {
      OfferFirmProduce offerFirmProduce = new OfferFirmProduce();
      conUtil.mapToObject(offerFirmProduce, map);
      baseDao.save(offerFirmProduce);
   }
   
   @Autowired
   private BaseDao          baseDao;
   
   @Autowired
   private ConUtil conUtil;
}
