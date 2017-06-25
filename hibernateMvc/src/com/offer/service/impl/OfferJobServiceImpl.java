package com.offer.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.model.OfferJob;
import com.offer.service.OfferJobService;
import com.offer.util.ConUtil;

@Service("offerJobService")
public class OfferJobServiceImpl extends BaseServiceImpl implements OfferJobService {

   @Override
   public List<OfferJob> getAllJob(String parentId) throws Exception {
      Map<String, String> map = new HashMap<String, String>();//所有的工作数据,不添加任何条件
      map.put("parentId", parentId);
      return (List<OfferJob>) baseDao.findField(OfferJob.class, map);
   }

   @Override
   public List<OfferJob> getOfferJob(int id) throws Exception {
      return (List<OfferJob>) baseDao.findField(OfferJob.class, id);
   }

   @Override
   public void updateOfferJob(OfferJob offerJob) throws Exception {
      baseDao.update(offerJob);
   }

   @Override
   public void deleteOfferJob(String ids) throws Exception {
      String[] id = ids.split(",");
      Integer[] del_ids = new Integer[id.length];
      for (int i = 0; i < id.length; i++) {
         del_ids[i] = Integer.parseInt(id[i]);
      }
      baseDao.deleteByIds(del_ids, OfferJob.class);
   }

   @Override
   public void saveOfferJob(Map<String, String> map) throws Exception {
      OfferJob offerJob = new OfferJob();
      conUtil.mapToObject(offerJob, map);
      baseDao.save(offerJob);
   }
   
   @Autowired
   private BaseDao baseDao;
   
   @Autowired
   private ConUtil conUtil;
}
