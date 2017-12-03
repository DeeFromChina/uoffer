package com.offer.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.model.OfferFirmSelect;
import com.offer.service.OfferFirmSelectService;

@Service("offerFirmSelectService")
public class OfferFirmSelectServiceImpl extends BaseServiceImpl implements
		OfferFirmSelectService {

	@Override
	public Map<String, List<Map<String, String>>> findList(String firmId)
			throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("firm_id", firmId);
		List<OfferFirmSelect> offerFirmSelects = (List<OfferFirmSelect>) baseDao.findField(OfferFirmSelect.class, map);
		String cityIds = "";
		String jobIds = "";
		String yearIds = "";
		if(offerFirmSelects != null && offerFirmSelects.size() == 1){
			cityIds = offerFirmSelects.get(0).getCityIds();
			jobIds = offerFirmSelects.get(0).getJobIds();
			yearIds = offerFirmSelects.get(0).getYearIds();
		}else{
			return null;
		}
		Map<String, List<Map<String, String>>> listMap = new HashMap<String, List<Map<String, String>>>();
		baseDao.findBySql("select city.id,city.city_name as value from offer_city city where city.id in ("+cityIds+")");
		baseDao.findBySql("select job.id,job.job_name as value from offer_job job where job.id in ("+cityIds+")");
		baseDao.findBySql("select city.id,city.city_name as value from offer_city city where city.id in ("+cityIds+")");
		return null;
	}

	@Override
	public Map<String, List<Map<String, String>>> findList1(String firmId)
			throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_id", firmId);
		List<OfferFirmSelect> offerFirmSelects = (List<OfferFirmSelect>) baseDao.findField(OfferFirmSelect.class, map);
		String cityIds = "";
		String jobIds = "";
		String yearIds = "";
		if(offerFirmSelects != null && offerFirmSelects.size() == 1){
			cityIds = offerFirmSelects.get(0).getCityIds();
			jobIds = offerFirmSelects.get(0).getJobIds();
			yearIds = offerFirmSelects.get(0).getYearIds();
		}else{
			return null;
		}
		Map<String, List<Map<String, String>>> listMap = new HashMap<String, List<Map<String, String>>>();
		baseDao.findBySql("select city.id,city.city_name as value from offer_city city where city.id in ("+cityIds+")");
		baseDao.findBySql("select job.id,job.job_name as value from offer_job job where job.id in ("+cityIds+")");
		baseDao.findBySql("select city.id,city.city_name as value from offer_city city where city.id in ("+cityIds+")");
		return null;
	}
	
	@Override
	public void saveOfferFirmSelect(OfferFirmSelect offerFirmSelect) throws Exception {
		try {
			 baseDao.saveOrUpdate(offerFirmSelect);
		} catch (Exception e) {
			e.printStackTrace();
		}
		     
		
	}
	
   @Override
   public List<OfferFirmSelect> getOfferSelect(String id) throws Exception {
      Map<String, String> newMap = new HashMap<String, String>();
      newMap.put("user_id", id);
      return (List<OfferFirmSelect>) baseDao.findField(OfferFirmSelect.class, newMap);
   }
   
   @Override
   public List<Map<String, String>> getOfferSelectByFirmId(String firmId, String limit) throws Exception {
      Map<String, String> map = new HashMap<String, String>();
      StringBuffer param = new StringBuffer();
//      param.append("WHERE 1=1 AND F.ID = '" + firmId + "' AND U.ID = S.USER_ID ");
      param.append("WHERE 1=1 AND F.ID = '" + firmId + "' ");
      if (!"".equals(limit)) {
         param.append(" LIMIT " + (Integer.valueOf(limit) - 1) * 20 + "," + Integer.valueOf(limit) * 20 + " ");
      }
      map.put("param", param.toString());
      return baseDao.findByQuery("/sql/sql_firm_select.xml", map);
   }
	
	@Autowired
	private BaseDao baseDao;




}
