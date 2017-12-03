package com.offer.service.impl;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.model.OfferJob;
import com.offer.model.OfferUser;
import com.offer.model.OfferUserInformation;
import com.offer.model.OfferUserPlanWorkPlace;
import com.offer.service.OfferJobService;
import com.offer.service.OfferUserInformationService;
import com.offer.service.OfferUserService;
import com.offer.util.ConUtil;
import com.offer.util.Encryption;

@Service("offerUserService")
public class OfferUserServiceImpl extends BaseServiceImpl implements OfferUserService{

	@Autowired
	private BaseDao baseDao;
	
	@Autowired
	private ConUtil conUtil;
	
	@Autowired
   private OfferJobService offerJobService;
	
	@Autowired
	private OfferUserInformationService offerUserInformationService;
	
	@Autowired
   private Encryption encryption;
	
	@Override
	public OfferUser islogin(Map<String, String> map) throws Exception {
		try {
			String userName = map.get("name");
			String password = map.get("password");
         String isoffer = map.get("type");
		   StringBuffer sql = new StringBuffer();
		   
	      sql.append(" WHERE (ou.offer_user_email = '"+userName+"' OR ou.offer_user_phone = '"+userName+"') ");
	      sql.append("and ou.offer_user_password = '"+encryption.encryption(password)+"'");
	      sql.append("and ou.isoffer = '"+isoffer+"'");
	      map.put("param", sql.toString());
	      List<Map<String, String>> list = baseDao.findByQuery("/sql/sql_islogin.xml", map);
	        if(list != null && list.size() == 1){
	            OfferUser offerUser = new OfferUser();
	            
//	            offerUser.setId(Integer.parseInt(String.valueOf(list.get(0).get("id"))));
//	            offerUser.setOfferUserName(String.valueOf(list.get(0).get("offerUserName")));
//	            offerUser.setOfferUserPassword(String.valueOf(list.get(0).get("offerUserPassword")));
//	            offerUser.setStatus(String.valueOf(list.get(0).get("status")));
//	            offerUser.setIsoffer(String.valueOf(list.get(0).get("isoffer")));

	            offerUser = (OfferUser) conUtil.mapToObject(offerUser, list.get(0));
	            offerUser.setLastLoginTime(new Date());
	            baseDao.update(offerUser);
	            return offerUser;
	         }
		} catch (Exception e) {
			e.printStackTrace();
		}
      return null;
	}
   
   @Override
   public List<Map<String, String>> isUserLogin(Map<String, String> map) throws Exception {
      try {
         String userName = map.get("name");
         String password = map.get("password");
         String isoffer = map.get("type");
         StringBuffer sql = new StringBuffer();
         
         sql.append(" WHERE (ou.offer_user_email = '"+userName+"' OR ou.offer_user_phone = '"+userName+"') ");
         sql.append("and ou.offer_user_password = '"+encryption.encryption(password)+"'");
         sql.append("and ou.isoffer = '"+isoffer+"'");
         map.put("param", sql.toString());
         return baseDao.findByQuery("/sql/sql_islogin.xml", map);
      } catch (Exception e) {
         e.printStackTrace();
      }
      return null;
   }
	
	public OfferUser getOfferUser(Serializable id) throws Exception {
	   try {
	      List<OfferUser> offerUsers = (List<OfferUser>) baseDao.findField(OfferUser.class, id);
	      return offerUsers.get(0);
	   } catch (Exception e) {
         e.printStackTrace();
      }
      return null;	   
	}
	
	public List<OfferUser> getAllsOfferUser() throws Exception {
		   try {
			   Map<String, String> map = new HashMap<String, String>();
		      List<OfferUser> offerUsers = (List<OfferUser>) baseDao.findField(OfferUser.class, map);
		      return offerUsers;
		   } catch (Exception e) {
	         e.printStackTrace();
	      }
	      return null;	   
		}
	
	  public List<OfferUser> getOfferUserforEmail(String email) throws Exception {
        try {
           Map<String, String> map = new HashMap<String, String>();
           map.put("offer_user_email", email);
           List<OfferUser> offerUsers = (List<OfferUser>) baseDao.findField(OfferUser.class, map);
           return offerUsers;
        } catch (Exception e) {
           e.printStackTrace();
        }
        return null;      
     }
	
	public void saveOfferUser(Map<String, String> map) throws Exception {
		   try {
			   OfferUser offerUser = new OfferUser();
			   offerUser = (OfferUser) conUtil.mapToObject(offerUser, map);
			   offerUser.setOfferUserPassword(encryption.encryption(offerUser.getOfferUserPassword()));
//			   offerUser.setStatus("1");
			   offerUser.setCreateTime(new Date());
			   baseDao.save(offerUser);
		   } catch (Exception e) {
	         e.printStackTrace();
	      } 
	}
	
	  public void saveOfferUser4oj(OfferUser offerUser) throws Exception {
        try {
           offerUser.setOfferUserPassword(encryption.encryption(offerUser.getOfferUserPassword()));
//         offerUser.setStatus("1");
           offerUser.setCreateTime(new Date());
           baseDao.save(offerUser);
        } catch (Exception e) {
           e.printStackTrace();
        } 
  }
	
	public void updateOfferUser(OfferUser offerUser) throws Exception {
		   try {
			   
			   baseDao.update(offerUser);
		   } catch (Exception e) {
	         e.printStackTrace();
	      } 
	}
	
	public List<OfferUser> getOfferFirmTeam(Map<String, String> map) throws Exception {
      try {
         Map<String, String> nowMap = new HashMap<String, String>();
         nowMap.put("firmId", map.get("firmId"));
         return (List<OfferUser>) baseDao.findField(OfferUser.class, nowMap);
      } catch (Exception e) {
         e.printStackTrace();
      }
      return null;      
   }
	
	public List<Map<String, String>> getCandidate(Map<String, String> map) throws Exception {
	   try {
         StringBuffer sql = new StringBuffer();
//         sql.append("SELECT U.ID, U.OFFER_USER_NAME, U.OFFER_USER_CITY, U.OFFER_JOB_ID, I.OFFER_USER_PLAN_YEAR_WAGES, "); 
//         sql.append("I.OFFER_USER_DESCRIPTION, I.OFFER_USER_EDUCATION, I.OFFER_USER_NOW_YEAR_WAGES, ");
//         sql.append("I.OFFER_USER_ADDRESS, I.OFFER_USER_JOB1, I.OFFER_USER_JOB2, I.OFFER_PHOTO_ID, ");
//         sql.append("I.OFFER_USER_WORK_PLACE, I.OFFER_USER_SEX, I.OFFER_ADVISER_REMARK ");
//         sql.append("FROM OFFER_USER_INFOMATION I ");
//         sql.append("LEFT JOIN OFFER_USER U ON U.ID = I.OFFER_USER_ID ");
         sql.append(" WHERE U.ISOFFER = '1' ");
         String offerUserCity = map.get("offerUserCity") == null ? "" : map.get("offerUserCity");
         if (!"".equals(offerUserCity)) {
            sql.append(" AND U.OFFER_USER_CITY = '" + offerUserCity + "' ");
         }
         String offerJobId = map.get("jobId") == null ? "" : map.get("jobId");
         if (!"".equals(offerJobId)) {
            sql.append(" AND U.OFFER_JOB_ID in (" + offerJobId + ") ");
         }
         String id = map.get("id");
         if (!"".equals(id)) {
            sql.append(" AND U.ID = '" + id + "' ");
         }
         map.put("param", sql.toString());
         return baseDao.findByQuery("/sql/sql_candidate.xml", map);
	   } catch (Exception e) {
         e.printStackTrace();
      }
      return null;
	}
	
	public List<OfferJob> editOfferUserJobId(Serializable id) throws Exception {
	   OfferUser offerUser = getOfferUser(id);
	   String jobId = offerUser.getOfferJobId() == null ? "" : offerUser.getOfferJobId().toString();
	   List<OfferJob> offerJobs = offerJobService.getAllJob("1");
	   if (!"".equals(jobId)) {
	      int i = 0;
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
	   else {
	      for (OfferJob offerJob : offerJobs) {
            Map<String, Object> map = new HashMap<String, Object>();
            conUtil.objectToMap(map, offerJob);
            map.put("CHECKED", "");
         }
	   }
	   return offerJobs;
	}
	
	public List<Map<String, String>> getOfferUserInformationWithEducations(Map<String, String> map) throws Exception {
	   try{
	      StringBuffer sql1 = new StringBuffer();
	      String offerUserId = map.get("offerUserId");
         sql1.append("WHERE om.firm_user_id = '"+offerUserId+"' ");
	      String str = map.get("all");
	      
	      if (!"true".equals(str)) {
	         sql1.append(" AND oco.STATUS = '1'");
         }else {         
//               sql1.append("And oin.`status` IS NULL AND oco.STATUS !='0'");
               sql1.append("AND (oco.STATUS = '1' or oco.STATUS is null) And oin.STATUS IS NULL");
            
         }
	      
	      String offerUserCity = map.get("offerUserCity") == null ? "" : map.get("offerUserCity");
	      if (!"".equals(offerUserCity)) {
	         sql1.append(" AND ou.OFFER_USER_CITY = '" + offerUserCity + "'");
	      }
	      String offerJobId = map.get("jobId") == null ? "" : map.get("jobId");
	      if (!"".equals(offerJobId)) {
	         sql1.append(" AND (ou.OFFER_JOB_ID ='" + offerJobId + "' or oui.OFFER_USER_JOB1 = '" + offerJobId + "' OR oui.OFFER_USER_JOB2 = '" + offerJobId + "')");
	      }
	      String workTime = map.get("workTime") == null ? "" : map.get("workTime");
	      if (!"".equals(workTime)) {
	    	  if (workTime.equals("3年以下")) {
	    		  sql1.append(" AND oui.OFFER_USER_WORKTIME ='" + workTime + "'");
	    	  }
	    	  else if (workTime.equals("3-5年")) {
	    		  sql1.append(" AND oui.OFFER_USER_WORKTIME IN('3年','4年','5年')");
	    	  }
	    	  else if (workTime.equals("5-8年")) {
	    		  sql1.append(" AND oui.OFFER_USER_WORKTIME IN('5年','6年','7年','8年')");
	    	  }
	    	  else if (workTime.equals("8-10年")) {
	    		  sql1.append(" AND oui.OFFER_USER_WORKTIME IN('8年','9年','10年')");
	    	  }
	    	  else if (workTime.equals("10年以上")) {
	    		  sql1.append(" AND oui.OFFER_USER_WORKTIME ='" + workTime + "'");
	    	  }
         }
         str = map.get("uStatus");
         if (!"".equals(str)) {
            sql1.append(" AND ou.STATUS ='" + str + "'");
         }
         str = map.get("lastChoose");
         if (!"".equals(str)) {
            sql1.append(" AND (ou.OFFER_USER_NAME like '%" + str + "%' or oui.OFFER_USER_WORK_PLACE like '%" + str + "%' or oui.OFFER_USER_ADDRESS like '%" + str + "%' or E.SCHOOL_NAME like '%" + str + "%' or E.USER_MAJOR like '%" + str + "%' or E.OFFER_USER_XUELI like '%" + str + "%' or oj1.job_name like'%" + str + "%')");
         }
         str = map.get("limit");
         if (!"".equals(str)) {
            sql1.append(" LIMIT " + (Integer.valueOf(str) - 1) * 20 + "," + Integer.valueOf(str) * 20 + " ");
         }
	      map.put("param", sql1.toString());
	      return baseDao.findByQuery("/sql/sql_candidate_education.xml", map);
	   } catch (Exception e) {
         e.printStackTrace();
      }
      return null;
	}
	
	public void changeUserStatus(Map<String, String> map) throws Exception {
	   try {
	      String beizhu = map.get("beizhu");
         OfferUser offerUser = getOfferUser(map.get("offerCandidateId"));
         offerUser.setStatus(map.get("status"));
         baseDao.saveOrUpdate(offerUser);
         
         List<OfferUserInformation> offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.valueOf(map.get("offerCandidateId")));
         OfferUserInformation offerUserInformation = offerUserInformations.get(0);
         offerUserInformation.setOfferAdviserRemark(beizhu);
         baseDao.saveOrUpdate(offerUserInformation);
      }
      catch (Exception e) {
         e.printStackTrace();
      }
	}
	
	public boolean haveEmail(String email) throws Exception {
	   String sql = "SELECT u.id FROM offer_user u WHERE u.offer_user_email = '" + email + "'";
	   return baseDao.findBySql(sql).size() > 0 ? true : false;
	}
	
	public List<Map<String, String>> getHouXuanRenHouTaiTuijianQiYe(Map<String, String> nowMap) throws Exception {
	   Map<String, String> map = new HashMap<String, String>();
      StringBuffer param = new StringBuffer();
//      StringBuffer param1 = new StringBuffer();
//      StringBuffer param2 = new StringBuffer();
      param.append(" WHERE om.user_id = '" + nowMap.get("offerUserId") + "' ");
      String str = nowMap.get("firmCity");
      if (str != null && str.length() > 0) {
         param.append(" AND ofi.firm_city = '" + str + "' ");
      }
      str = nowMap.get("firmjob");
      if (str != null && str.length() > 0) {
         param.append(" AND ofs.job_ids like '%" + str + "%' ");
      }
      str = nowMap.get("firmstatusValue");
      if (str != null && str.length() > 0) {
         param.append(" AND cs.code_name like '%" + str + "%' ");
      }
      str = nowMap.get("firmName");
      if (str != null && str.length() > 0) {
         param.append(" AND (ofi.FIRM_ALL_NAME LIKE '%" + str + "%' OR ofi.FIRM_SIMPLE_NAME LIKE '%" + str + "%')");
      }
      str = nowMap.get("limit");
      if (str != null && str.length() > 0) {
         param.append(" GROUP BY om.firm_id LIMIT " + (Integer.valueOf(str) - 1) * 20 + "," + Integer.valueOf(str) * 20 + " ");
      }

      map.put("param", param.toString());

      return baseDao.findByQuery("/sql/sql_houxuanren_tuijianqiye.xml", map);
	}
	
	public void saveresumeedit1(Map<String, String> map) throws Exception {
	   try {
	      String offerUserId = returnString(map.get("offerUserId"));
	      List<OfferUserInformation> offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.valueOf(offerUserId));
	      if (offerUserInformations.size() > 0) {
	         OfferUserInformation offerUserInformation = offerUserInformations.get(0);
	         map.put("offerUserNowPlace", returnString(map.get("offerUserCity")));
            conUtil.mapToObject(offerUserInformation, map);
            baseDao.update(offerUserInformation);
         }
	      OfferUser offerUser = getOfferUser(offerUserId);
	      map.put("offerUserCity", returnString(map.get("offerUserCity")));
	      conUtil.mapToObject(offerUser, map);
	      baseDao.update(offerUser);
	   }
	   catch (Exception e) {
         e.printStackTrace();
      }
	}
   
   public void saveresumeedit2(Map<String, String> map) throws Exception {
      try {
         if (!"".equals(returnString(map.get("jobstatus")))) {
            if ("j1".equals(map.get("jobstatus"))) {
               map.put("offerJobStatus", "不着急找工作，先看看机会");
            }
            else if ("j2".equals(map.get("jobstatus"))) {
               map.put("offerJobStatus", "已经有offer了，想看更好的");
            }
            else if ("j3".equals(map.get("jobstatus"))) {
               map.put("offerJobStatus", "正在找工作，还没有offer");
            }
            else if ("j4".equals(map.get("jobstatus"))) {
               map.put("offerJobStatus", "暂时不考虑换工作");
            }
         }
         if (!"".equals(returnString(map.get("intime")))) {
            if ("i1".equals(map.get("intime"))) {
               map.put("offerUserWhenWork", "目前是离职状态，随时可以入职");
            }
            else if ("i2".equals(map.get("intime"))) {
               map.put("offerUserWhenWork", "一周");
            }
            else if ("i3".equals(map.get("intime"))) {
               map.put("offerUserWhenWork", "一个月");
            }
            else if ("i4".equals(map.get("intime"))) {
               map.put("offerUserWhenWork", "不确定");
            }
         }
         map.put("offerCityId", map.get("cityIds"));
         map.put("offerUserLikeFirmStage", map.get("firmIds"));
         String offerUserId = returnString(map.get("offerUserId"));
         List<OfferUserInformation> offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.valueOf(offerUserId));
         if (offerUserInformations.size() > 0) {
            OfferUserInformation offerUserInformation = offerUserInformations.get(0);
            conUtil.mapToObject(offerUserInformation, map);
            baseDao.update(offerUserInformation);
         }

         Map<String, String> newMap = new HashMap<String, String>();
         newMap.put("offerUserId", offerUserId);
         List<OfferUserPlanWorkPlace> offerUserPlanWorkPlaces = (List<OfferUserPlanWorkPlace>) baseDao.findField(OfferUserPlanWorkPlace.class, newMap);
         OfferUserPlanWorkPlace offerUserPlanWorkPlace;
         if (offerUserPlanWorkPlaces.size() > 0) {
            offerUserPlanWorkPlace = offerUserPlanWorkPlaces.get(0);
            map.put("id", offerUserPlanWorkPlace.getId() + "");
            map.put("offerCityId", map.get("cityIds"));

            conUtil.mapToObject(offerUserPlanWorkPlace, map);
            baseDao.saveOrUpdate(offerUserPlanWorkPlace);
         }
      }
      catch (Exception e) {
         e.printStackTrace();
      }
   }
   
   public void saveresumeedit3(Map<String, String> map) throws Exception {
      try {
         String offerUserId = returnString(map.get("offerUserId"));
         List<OfferUserInformation> offerUserInformations = offerUserInformationService.getOfferUserInformation4UserId(Integer.valueOf(offerUserId));
         OfferUserInformation offerUserInformation = offerUserInformations.get(0);
         String[] jobs = map.get("jobs").split(",");
         int i = 1;
         for (String string : jobs) {
            map.put("offerUserJob" + i++, string);
         }
         if (jobs.length == 0) {
            map.put("offerUserJob1", "");
            map.put("offerUserJob2", "");
         }
         else if (jobs.length == 1) {
            map.put("offerUserJob2", "");
         }
         String jobyear1 = map.get("jobyear1");
         String jobyear2 = map.get("jobyear2");
         map.put("offerHaveExperience1", jobyear1);
         map.put("offerHaveExperience2", jobyear2);
         
         conUtil.mapToObject(offerUserInformation, map);
         baseDao.saveOrUpdate(offerUserInformation);
         
         OfferUser offerUser = getOfferUser(offerUserId);
         conUtil.mapToObject(offerUser, map);
         baseDao.saveOrUpdate(offerUser);
      }
      catch (Exception e) {
         e.printStackTrace();
      }
   }
	
	public List<OfferUser> getOfferUserByfirmId(String firmId) throws Exception {
		   try {
			   Map<String, String> map = new HashMap<String, String>();
			   map.put("firm_id", firmId);
		      List<OfferUser> offerUsers = (List<OfferUser>) baseDao.findField(OfferUser.class, map);
		      return offerUsers;
		   } catch (Exception e) {
	         e.printStackTrace();
	      }
	      return null;
	}

}
