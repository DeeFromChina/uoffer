package com.offer.service.impl;

import java.io.File;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.AddMapper;
import com.offer.dao.BaseDao;
import com.offer.model.Add;
import com.offer.model.Guwen;
import com.offer.model.OfferEmail;
import com.offer.model.OfferFirmSelect;
import com.offer.model.OfferFirmWelfare;
import com.offer.model.OfferUserEmail;
import com.offer.model.jlzssz;
import com.offer.model.OfferCity;
import com.offer.model.OfferCollect;
import com.offer.model.OfferFirmChoose;
import com.offer.model.OfferInvite;
import com.offer.model.OfferUserEducation;
import com.offer.model.OfferUserWorks;
import com.offer.model.TJ;
import com.offer.service.BaseService;
import com.offer.service.OfferFirmSelectService;
import com.offer.util.Dom4jXml;

@Service("baseService")
public class BaseServiceImpl implements BaseService {
	@Autowired
	private AddMapper addMapper;
	
	@Autowired
	private BaseDao baseDao;
	
	@Autowired
	private Dom4jXml dom4jXml;
	
	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	private SimpleDateFormat sdt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	public String getAll() {
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("param", "WHERE 1=1 ");
			String path = "/sql/test.xml";
			List<Map<String, String>> list = baseDao.findByQuery(path, map);
			return list.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public int returnInt(Object obj){
		try {
			if(obj != null){
				return Integer.valueOf(obj.toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public String returnString(Object obj){
		try {
			if(obj != null){
				return obj.toString();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	public Double returnDouble(Object obj, boolean isNull){
		try {
			if(obj != null){
				return Double.valueOf(obj.toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(!isNull){
			return 0D;
		}
		return null;
	}
	
	public String returnDateType(Object obj, boolean isHour){
		try {
			if(obj != null){
				if(isHour){
					return sdt.format(obj);
				}else{
					return sdf.format(obj);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	@Override
	public List<Map<String, String>> getDiShiCity(String provinceId) throws Exception {//地市城市
		try {
			StringBuffer param = new StringBuffer();
			Map<String, String> map = new HashMap<String, String>();
			param.append(" WHERE 1=1 ");
			/*if (provinceId != null && provinceId.length() > 0) {
	      param.append(" AND oc.province_id IS NOT NULL ");
      }*/
			map.put("param", param.toString());
			List<Map<String, String>> list = baseDao.findByQuery("/sql/sql_job.xml", map);
			return list;
		} catch (Exception e) {
			// TODO': handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	@Override
	public void delEducation(String id) throws Exception {
	   List<OfferUserEducation> offerUserEducations = (List<OfferUserEducation>) baseDao.findField(OfferUserEducation.class, id);
	   baseDao.delete(offerUserEducations.get(0));
	}
	
	@Override
	public void delWork(String id) throws Exception {
	   List<OfferUserWorks> offerUserWorks = (List<OfferUserWorks>) baseDao.findField(OfferUserWorks.class, id);
      baseDao.delete(offerUserWorks.get(0));
	}
	
	@Override
	public List<Map<String, String>> getDiShiCityName(String id) throws Exception {//地市城市
		try {
			return baseDao.findBySql("SELECT id, city_name AS cityName FROM offer_city WHERE id = '" + id + "'");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	@Override
	public List<Map<String, String>> getOfferStage() throws Exception {
		try {
			return baseDao.findBySql("SELECT id, OFFER_STAGE AS offerStage FROM OFFER_STAGE");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<Map<String, String>> getOfferStage(String type) throws Exception {
		try {
			return baseDao.findBySql("SELECT id, OFFER_STAGE AS offerStage, type FROM offer_stage WHERE type = '" + type + "'");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<Map<String, String>> getOfferMoneyType() throws Exception {
		try {
			return baseDao.findBySql("SELECT id, offer_money_type AS offerMoneyType FROM offer_money_type");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<Map<String, String>> getOfferFirmSizeType() throws Exception {
		try {
			return baseDao.findBySql("SELECT id, offer_firm_size_type AS offerFirmSizeType, type FROM offer_firm_size_type");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<Map<String, String>> getOfferAreaType() throws Exception {
		try {
			return baseDao.findBySql("SELECT id, offer_area_type AS offerAreaType FROM offer_area_type");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<OfferUserWorks> getOfferUserWorks(Serializable id) throws Exception {
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("offerUserId", id + "");
			return (List<OfferUserWorks>) baseDao.findField(OfferUserWorks.class, map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
   public List<OfferUserEducation> getOfferUserEducations(Serializable id) throws Exception {
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("offerUserId", id + "");
			return (List<OfferUserEducation>) baseDao.findField(OfferUserEducation.class, map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
   }
	
	@Override
   public List<OfferFirmChoose> getOfferFirmChooses(Serializable offerUserId, Serializable offerFirmId) throws Exception {
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("offerUserId", offerUserId + "");
			map.put("offerFirmId", offerFirmId + "");
			return (List<OfferFirmChoose>) baseDao.findField(OfferFirmChoose.class, map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
   }
	
	@Override
	public List<OfferFirmChoose> getOfferFirmChooses(Map<String, String> map) throws Exception {
		try {
			String str = map.get("offerFirmId") == null ? "" : map.get("offerFirmId");
			if (str != null & str.length() > 0) {
				map.put("offerFirmId", str + "");
			}
			str = map.get("offerFirmChooseCity") == null ? "" : map.get("offerFirmChooseCity");
			if (str != null & str.length() > 0) {
				map.put("offerFirmChooseCity", str + "");
			}
			str = map.get("offerLastChoose") == null ? "" : map.get("offerLastChoose");
			if (str != null & str.length() > 0) {
				map.put("offerLastChoose", str + "");
			}
			/*str = map.get("");
      if (str != null & str.length() > 0) {
         map.put("offerFirmChooseJob", str + "");
      }
      str = map.get("");
      if (str != null & str.length() > 0) {
         map.put("offerFirmId", str + "");
      }
      str = map.get("");
      if (str != null & str.length() > 0) {
         map.put("offerFirmId", str + "");
      }*/
			str = map.get("id");
			if (str != null & str.length() > 0) {
				map.put("id", str + "");
			}
			return (List<OfferFirmChoose>) baseDao.findField(OfferFirmChoose.class, map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	public List<OfferCity> getOfferCities(Serializable id) throws Exception {
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("id", id + "");
			return (List<OfferCity>) baseDao.findField(OfferCity.class, map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	public List<OfferCollect> getOfferCollects(Map<String, String> map) throws Exception {
		try {
			Map<String, String> newMap = new HashMap<String, String>();
			String str = map.get("offerUserId");
			if (str != null && str.length() > 0) {
				newMap.put("offerUserId", str);
			}
			str = map.get("offerFirmId");
			if (str != null && str.length() > 0) {
				newMap.put("offerFirmId", str);
			}
			str = map.get("offerCandidateId");
			if (str != null && str.length() > 0) {
				newMap.put("offerCandidateId", str);
			}
			
			return (List<OfferCollect>) baseDao.findField(OfferCollect.class, newMap);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<Map<String, String>> getOfferInvite(Map<String, String> map) throws Exception {
		try {
			StringBuffer param = new StringBuffer();
			param.append(" WHERE 1=1 ");
			String str = map.get("offerUserId");
			if (str != null && str.length() > 0) {
				param.append(" AND I.USER_ID = '" + str + "'");
			}
			str = map.get("offerFirmId");
			if (str != null && str.length() > 0) {
				param.append(" AND I.FIRM_ID = '" + str + "'");
			}
			str = map.get("status");
			if (str != null && str.length() > 0) {
				param.append(" AND I.STATUS IN (" + str + ")");
			}
			str = map.get("offerCandidateId");
			if (str != null && str.length() > 0) {
				param.append(" AND I.CANDIDATE_ID = '" + str + "'");
			}
			str = map.get("inviteId");
			if (str != null && str.length() > 0) {
				param.append(" AND I.ID IN (" + str + ")");
			}
			map.put("param", param.toString());
			return baseDao.findByQuery("/sql/sql_invite.xml", map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<OfferInvite> getOfferInvite1(Map<String, String> map) throws Exception {
		try {
			Map<String, String> newMap = new HashMap<String, String>();
			String str = map.get("offerUserId");
			if (str != null && str.length() > 0) {
				newMap.put("offerUserId", str);
			}
			str = map.get("offerFirmId");
			if (str != null && str.length() > 0) {
				newMap.put("offerFirmId", str);
			}
			str = map.get("offerCandidateId");
			if (str != null && str.length() > 0) {
				newMap.put("offerCandidateId", str);
			}
			return (List<OfferInvite>) baseDao.findField(OfferInvite.class, newMap);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
   public List<Map<String, String>> getOfferInviteChat(Map<String, String> map) throws Exception {//地市城市
		try {
			StringBuffer param = new StringBuffer();
			param.append(" WHERE 1=1 ");
			String str = map.get("offerUserId");
			if (str != null && str.length() > 0) {
				param.append(" AND I.USER_ID = '" + str + "'");
			}
			str = map.get("offerFirmId");
			if (str != null && str.length() > 0) {
				param.append(" AND I.FIRM_ID = '" + str + "'");
			}
			str = map.get("offerCandidateId");
			if (str != null && str.length() > 0) {
				param.append(" AND I.CANDIDATE_ID = '" + str + "'");
			}
			str = map.get("offerCandidateId");
			if (str != null && str.length() > 0) {
				param.append(" AND I.CANDIDATE_ID = '" + str + "'");
			}
			str = map.get("inviteId");
			if (str != null && str.length() > 0) {
				param.append(" AND I.ID = '" + str + "'");
			}
			str = map.get("status");
			if (str != null && str.length() > 0) {
				param.append(" AND C.STATUS = '" + str + "'");
			}
			str = map.get("interviewtime");
			if (str != null && str.length() > 0) {
				param.append(" AND C.INTERVIEWTIME = '" + str.substring(0, 10) + "'");
			}
			str = map.get("needGroupBy");
			if (str != null && str.length() > 0) {
				param.append(" GROUP BY C.INTERVIEWTIME ");
			}
			map.put("param", param.toString());
			return baseDao.findByQuery("/sql/sql_invite_chat.xml", map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
   }
   
   @Override
   public List<Map<String, String>> getOfferInviteFirm(Map<String, String> map) throws Exception {
	   try {
		   StringBuffer param = new StringBuffer();
		   param.append(" WHERE 1=1 ");
		   String str = map.get("offerUserId");
		   if (str != null && str.length() > 0) {
			   param.append(" AND I.USER_ID = '" + str + "'");
		   }
		   str = map.get("offerFirmId");
		   if (str != null && str.length() > 0) {
			   param.append(" AND I.FIRM_ID = '" + str + "'");
		   }
		   str = map.get("offerCandidateId");
		   if (str != null && str.length() > 0) {
			   param.append(" AND I.CANDIDATE_ID = '" + str + "'");
		   }
		   str = map.get("status");
		   if (str != null && str.length() > 0) {
			   param.append(" AND I.STATUS IN (" + str + ")");
		   }
		   map.put("param", param.toString());
		   return baseDao.findByQuery("/sql/sql_invite_firm.xml", map);
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
		return null;
	}
   }
	
	@Override
	public List<Map<String, String>> getOfferInviteCandidate(Map<String, String> map) throws Exception {
		try {
			StringBuffer param = new StringBuffer();
			param.append(" WHERE 1=1 ");
			String str = map.get("offerUserId");
			if (str != null && str.length() > 0) {
				param.append(" AND I.USER_ID = '" + str + "'");
			}
			str = map.get("offerFirmId");
			if (str != null && str.length() > 0) {
				param.append(" AND I.FIRM_ID = '" + str + "'");
			}
			str = map.get("offerCandidateId");
			if (str != null && str.length() > 0) {
				param.append(" AND I.CANDIDATE_ID = '" + str + "'");
			}
			str = map.get("status");
			if (str != null && str.length() > 0) {
				param.append(" AND I.STATUS IN (" + str + ")");
			}
			map.put("param", param.toString());
			return baseDao.findByQuery("/sql/sql_invite_candidate.xml", map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<TJ> getTJ(Serializable id) throws Exception {
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("id", id + "");
			return (List<TJ>) baseDao.findField(TJ.class, map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Guwen> getGuwen(Serializable id) throws Exception {
		// TODO Auto-generated method stub
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("id", id + "");
			return (List<Guwen>) baseDao.findField(Guwen.class, map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<jlzssz> getJLTYXQ(Serializable id) throws Exception {
		// TODO Auto-generated method stub
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("id", id + "");
			return (List<jlzssz>) baseDao.findField(jlzssz.class, map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void saveGuwen(Guwen guwen) throws Exception {
		// TODO Auto-generated method stub
		try {
			baseDao.saveOrUpdate(guwen);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	@Override
	public void saveJLTYXQ(jlzssz jltjyxq) throws Exception {
		// TODO Auto-generated method stub
		try {
			
			baseDao.saveOrUpdate(jltjyxq);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	@Override
	public List<OfferEmail> getEmailContent(Serializable id) throws Exception {
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("id", id + "");
			return (List<OfferEmail>) baseDao.findField(OfferEmail.class, map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void saveObject(Object obj) throws Exception {
		try {
			//baseDao.save(obj);
			baseDao.update(obj);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	  @Override
	   public void saveOfferUserEmail(Object obj) throws Exception {
	      try {
	         //baseDao.save(obj);
	         baseDao.saveOrUpdate(obj);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	   }
	
	@Override
	public List<OfferFirmWelfare> getwelfare(Serializable id) throws Exception {
		// TODO Auto-generated method stub
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("firm_id", id + "");
			return (List<OfferFirmWelfare>) baseDao.findField(OfferFirmWelfare.class, map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}

	public int daysBetween(Date smdate, Date bdate) {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			smdate = sdf.parse(sdf.format(smdate));
			bdate = sdf.parse(sdf.format(bdate));
			Calendar cal = Calendar.getInstance();
			cal.setTime(smdate);
			long time1 = cal.getTimeInMillis();
			cal.setTime(bdate);
			long time2 = cal.getTimeInMillis();
			long between_days = (time2 - time1) / (1000 * 3600 * 24);
			return Integer.parseInt(String.valueOf(between_days));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 40;
	}
	
	public int hoursBetween(Date smdate, Date bdate) {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			smdate = sdf.parse(sdf.format(smdate));
			bdate = sdf.parse(sdf.format(bdate));
			Calendar cal = Calendar.getInstance();
			cal.setTime(smdate);
			long time1 = cal.getTimeInMillis();
			cal.setTime(bdate);
			long time2 = cal.getTimeInMillis();
			long between_hours = (time2 - time1) / (1000 * 3600);
			return Integer.parseInt(String.valueOf(between_hours));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 40;
	}
	  @Override
	   public List<OfferUserEmail> getOfferUserEmail(Serializable id) throws Exception {
		  try {
			  Map<String, String> map = new HashMap<String, String>();
			  map.put("id", id + "");
			  return (List<OfferUserEmail>) baseDao.findField(OfferUserEmail.class, map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	   }
	
	  public List<OfferUserEmail> getOfferUserEmail4senduser(Serializable id) throws Exception{
		  try {
			  Map<String, String> map = new HashMap<String, String>();
			  map.put("shou_user_id", id + "");
			  return (List<OfferUserEmail>) baseDao.findField(OfferUserEmail.class, map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	  }
	  

}
