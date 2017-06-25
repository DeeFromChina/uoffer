package com.offer.service.impl;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.model.OfferFirmInformation;
import com.offer.model.OfferJob;
import com.offer.model.OfferUser;
import com.offer.service.OfferFirmInformationService;
import com.offer.service.OfferFirmIntroduceService;
import com.offer.service.OfferFirmProduceService;
import com.offer.service.OfferFirmReportService;
import com.offer.service.OfferFirmTechnologyService;
import com.offer.service.OfferJobService;
import com.offer.service.OfferUserService;
import com.offer.util.ConUtil;

@Service("offerFirmInformationService")
public class OfferFirmInformationServiceImpl extends BaseServiceImpl implements OfferFirmInformationService {

   @Override
   public OfferFirmInformation getOfferFirmInformation(Serializable id) throws Exception {
      return (OfferFirmInformation) baseDao.findField(OfferFirmInformation.class, id);
   }

   public List<OfferFirmInformation> getOfferFirmInformation(String id) throws Exception {
      Map<String, String> map = new HashMap<String, String>();
      map.put("firm_id", id);
      return (List<OfferFirmInformation>) baseDao.findField(OfferFirmInformation.class, map);
   }

   public List<OfferFirmInformation> getOfferFirmInformationById(String id) throws Exception {
      return (List<OfferFirmInformation>) baseDao.findField(OfferFirmInformation.class, id);
   }

   @Override
   public void updateOfferFirmInformation(Serializable id, HttpServletRequest request) throws Exception {
      OfferUser offerUser = offerUserService.getOfferUser(id);
      int isoffer = Integer.valueOf(offerUser.getIsoffer());
      if (isoffer == 1) {
         String firmId = offerUser.getFirmId().toString();
         String firmAllName = request.getParameter("firmAllName");
         String firmSimpleName = request.getParameter("firmSimpleName");
         String firmWebLink = request.getParameter("firmWebLink");
         String firmCity = request.getParameter("firmCity");
         String firmAddress = request.getParameter("firmAddress");
         String areaId = request.getParameter("areaId");
         String firmCreateYear = request.getParameter("firmCreateYear");
         String firmSize = request.getParameter("firmSize");
         String firmStage = request.getParameter("firmStage");
         String firmDescript = request.getParameter("firmDescript");
         List<OfferFirmInformation> offerFirmInformations = getOfferFirmInformation(firmId);
         if (offerFirmInformations.size() > 0) {
            OfferFirmInformation offerFirmInformation = offerFirmInformations.get(0);
            offerFirmInformation.setFirmAllName(firmAllName);
            offerFirmInformation.setFirmSimpleName(firmSimpleName);
            offerFirmInformation.setFirmWebLink(firmWebLink);
            offerFirmInformation.setFirmCity(firmCity);
            offerFirmInformation.setFirmAddress(firmAddress);
            offerFirmInformation.setAreaId(String.valueOf(areaId));
            offerFirmInformation.setFirmCreateYear(firmCreateYear);
            offerFirmInformation.setFirmSize(firmSize);
            offerFirmInformation.setFirmStage(firmStage);
            offerFirmInformation.setFirmDescript(firmDescript);//一句话介绍公司
            //缺了一个技术团队规模、Logo、图片
            baseDao.update(offerFirmInformation);//公司基本信息

            offerFirmTechnologyService.saveOrUpdateOfferFirmTechnology(firmId, request);//公司技术

            offerFirmIntroduceService.saveOrUpdateOfferFirmIntroduce(firmId, request);//公司介绍

            offerFirmProduceService.saveOrUpdateOfferFirmProduce(firmId, request);//产品介绍

            offerFirmReportService.saveOrUpdateOfferFirmReport(firmId, request);//新闻报导
         }
      }
   }

   @Override
   public List<Map<String, String>> editOfferFirmInformation(Serializable id) throws Exception {
      OfferUser offerUser = offerUserService.getOfferUser(id);
      int isoffer = Integer.valueOf(offerUser.getIsoffer());
      if (isoffer == 1) {
         String firmId = offerUser.getFirmId().toString();
         StringBuffer sql = new StringBuffer();
         sql.append("SELECT I.ID, I.FIRM_ALL_NAME, I.FIRM_SIMPLE_NAME, I.FIRM_WEB_LINK, I.FIRM_CITY,I.FIRM_ADDRESS, ");
         sql.append(" I.AREA_ID, I.FIRM_CREATE_YEAR, I.FIRM_SIZE, I.FIRM_STAGE, I.FIRM_DESCRIPT, T.FIRM_SEO, ");
         sql.append("II.FIRM_DESCRIPT AS FIRM_DESCRIPT_INTRODUCE, II.ISPHOTO, P.PRODUCE_DESCRIPT, R.REPORT_LINK ");
         sql.append("FROM OFFER_FIRM_INFORMATION I ");
         sql.append("LEFT JOIN OFFER_FIRM F ON F.ID = I.FIRM_ID ");
         sql.append("LEFT JOIN OFFER_FIRM_TECHNOLOGY T ON T.FIRM_ID = F.ID ");
         sql.append("LEFT JOIN OFFER_FIRM_INTRODUCE II ON II.FIRM_ID = F.ID ");
         sql.append("LEFT JOIN OFFER_FIRM_PRODUCE P ON P.FIRM_ID = F.ID ");
         sql.append("LEFT JOIN OFFER_FIRM_REPORT R ON R.FIRM_ID = R.ID ");
         sql.append("WHERE F.ID = '" + firmId + "' ");
         return baseDao.findBySql(sql.toString());
      }
      else return null;
   }
   
   @Override
   public List<Map<String, String>> editOfferFirmJobId(Serializable id) throws Exception {
      OfferUser offerUser = offerUserService.getOfferUser(id);
      String firmId = offerUser.getFirmId().toString();
      List<OfferFirmInformation> offerFirmInformations = getOfferFirmInformation(firmId);
      if (offerFirmInformations.size() > 0) {
         OfferFirmInformation offerFirmInformation = offerFirmInformations.get(0);
         String jobId = offerFirmInformation.getFirmJobId() == null ? "": offerFirmInformation.getFirmJobId().toString();
         List<OfferJob> offerJobs = offerJobService.getAllJob("1");
         int i = 0;
         if ("".equals(jobId)) {
            for (OfferJob offerJob : offerJobs) {
               Map<String, Object> map = new HashMap<String, Object>();
               conUtil.objectToMap(map, offerJob);
               map.put("CHECKED", "");
            }
         }
         else {
            for (OfferJob offerJob : offerJobs) {
               Map<String, Object> map = new HashMap<String, Object>();
               conUtil.objectToMap(map, offerJob);
               if (offerJob.getId().toString().equals(jobId.split(";")[i])) {
                  map.put("CHECKED", "checked");
                  i++;
               }
               else map.put("CHECKED", "");
            }
         }
      }
      return null;
   }
   
   public void updateOfferFirmInformation(OfferFirmInformation offerFirmInformation) throws Exception {
      baseDao.update(offerFirmInformation);
   }
   
   public void saveOfferFirmInformation(Map<String, String> map) throws Exception {
      OfferFirmInformation offerFirmInformation = new OfferFirmInformation();
      conUtil.mapToObject(offerFirmInformation, map);
      baseDao.save(offerFirmInformation);
   }
   
   public void deleteOfferFirmInformation(String ids) throws Exception {
      String[] id = ids.split(",");
      Integer[] del_ids = new Integer[id.length];
      for (int i = 0; i < id.length; i++) {
         del_ids[i] = Integer.parseInt(id[i]);
      }
      baseDao.deleteByIds(del_ids, OfferFirmInformation.class);
   }

   @Autowired
   private BaseDao                    baseDao;
   
   @Autowired
   private ConUtil                    conUtil;

   @Autowired
   private OfferUserService           offerUserService;

   @Autowired
   private OfferFirmIntroduceService  offerFirmIntroduceService;

   @Autowired
   private OfferFirmProduceService    offerFirmProduceService;

   @Autowired
   private OfferFirmReportService     offerFirmReportService;

   @Autowired
   private OfferFirmTechnologyService offerFirmTechnologyService;
   
   @Autowired
   private OfferJobService            offerJobService;
}
