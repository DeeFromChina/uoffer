package com.offer.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.model.OfferFirmTechnology;
import com.offer.service.OfferFirmTechnologyService;
import com.offer.util.ConUtil;

@Service("offerFirmTechnologyService")
public class OfferFirmTechnologyServiceImpl extends BaseServiceImpl implements OfferFirmTechnologyService {

   @Override
   public List<OfferFirmTechnology> getOfferFirmTechnologies(String id) throws Exception {
      Map<String, String> map = new HashMap<String, String>();
      map.put("firm_id", id);
      return (List<OfferFirmTechnology>) baseDao.findField(OfferFirmTechnology.class, map);
   }
   
   @Override
   public void saveOrUpdateOfferFirmTechnology(String id, HttpServletRequest request) throws Exception {
      List<OfferFirmTechnology> offerFirmTechnologies = getOfferFirmTechnologies(id);
      String firmSeo = request.getParameter("firmSeo");
      
      if (offerFirmTechnologies.size() > 0) {
         OfferFirmTechnology offerFirmTechnology = offerFirmTechnologies.get(0);
         offerFirmTechnology.setCreateTime(new Date());
         offerFirmTechnology.setFirmSeo(firmSeo);
         baseDao.update(offerFirmTechnology);
      }
      else {
         OfferFirmTechnology offerFirmTechnology = new OfferFirmTechnology();
         offerFirmTechnology.setCreateTime(new Date());
         offerFirmTechnology.setFirmSeo(firmSeo);
         offerFirmTechnology.setFirmId(Integer.valueOf(id));
         baseDao.save(offerFirmTechnology);
      }
   }
   
   @Override
   public List<OfferFirmTechnology> getOfferFirmTechnology(int id) throws Exception {
      return (List<OfferFirmTechnology>) baseDao.findField(OfferFirmTechnology.class, id);
   }

   @Override
   public void updateOfferFirmTechnology(OfferFirmTechnology offerFirmTechnology) throws Exception {
      baseDao.save(offerFirmTechnology);
   }

   @Override
   public void deleteOfferFirmTechnology(String ids) throws Exception {
      String[] id = ids.split(",");
      Integer[] del_ids = new Integer[id.length];
      for (int i = 0; i < id.length; i++) {
         del_ids[i] = Integer.parseInt(id[i]);
      }
      baseDao.deleteByIds(del_ids, OfferFirmTechnology.class);
   }

   @Override
   public void saveOfferFirmTechnology(Map<String, String> map) throws Exception {
      OfferFirmTechnology offerFirmTechnology = new OfferFirmTechnology();
      conUtil.mapToObject(offerFirmTechnology, map);
      baseDao.save(offerFirmTechnology);
   }
   
   @Autowired
   private BaseDao baseDao;
   
   @Autowired
   private ConUtil conUtil;
}
