package com.offer.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.model.OfferFirmReport;
import com.offer.service.OfferFirmReportService;
import com.offer.util.ConUtil;

@Service("offerFirmReportService")
public class OfferFirmReportServiceImpl extends BaseServiceImpl implements OfferFirmReportService {

   @Override
   public List<OfferFirmReport> getOfferFirmReports(String id) throws Exception {
      Map<String, String> map = new HashMap<String, String>();
      map.put("firm_id", id);
      return (List<OfferFirmReport>) baseDao.findField(OfferFirmReport.class, map);
   }
   
   @Override
   public void saveOrUpdateOfferFirmReport(String id, HttpServletRequest request) throws Exception {
      List<OfferFirmReport> offerFirmReports = getOfferFirmReports(id);
      String reportLink = request.getParameter("reportLink");
      if (offerFirmReports.size() > 0) {
         OfferFirmReport offerFirmReport = offerFirmReports.get(0);
         offerFirmReport.setReportLink(reportLink);
         baseDao.update(offerFirmReport);
      }
      else {
         OfferFirmReport offerFirmReport = new OfferFirmReport();
         offerFirmReport.setFirmId(Integer.valueOf(id));
         offerFirmReport.setReportLink(reportLink);
         baseDao.save(offerFirmReport);
      }
   }
   
   @Override
   public List<OfferFirmReport> getOfferFirmReports(int id) throws Exception {
      return (List<OfferFirmReport>) baseDao.findField(OfferFirmReport.class, id);
   }
   
   @Override
   public void updateOfferFirmReport(OfferFirmReport offerFirmReport) throws Exception {
      baseDao.update(offerFirmReport);
   }
   
   @Override
   public void deleteOfferFirmReport(String ids) throws Exception {
      String[] id = ids.split(",");
      Integer[] del_ids = new Integer[id.length];
      for (int i = 0; i < id.length; i++) {
         del_ids[i] = Integer.parseInt(id[i]);
      }
      baseDao.deleteByIds(del_ids,OfferFirmReport.class);
   }
   
   @Override
   public void saveOfferFirmReport(Map<String, String> map) throws Exception {
      OfferFirmReport offerFirmReport = new OfferFirmReport();
      conUtil.mapToObject(offerFirmReport, map);
      baseDao.save(offerFirmReport);
   }
   
   @Autowired
   private BaseDao baseDao;
   
   @Autowired
   private ConUtil conUtil;
}
