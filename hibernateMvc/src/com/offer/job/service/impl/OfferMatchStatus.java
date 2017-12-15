package com.offer.job.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.job.CheckArtAuction;
import com.offer.service.impl.BaseServiceImpl;

public class OfferMatchStatus extends BaseServiceImpl implements CheckArtAuction {

	@Autowired
	private BaseDao baseDao;

	@Override
	public void executeCheck() throws Exception {
		String[] aStrings={"1天","两天","三天","一个星期","15天","一个月","半年"};
		String[] bStrings={"1","2","3","7","15","30","183"};
		Map<String, String> map = new HashMap<String, String>();
		for(int i = 0; i < aStrings.length; i++){
			map.put(aStrings[i], bStrings[i]);
		}
		//String[] times={"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"};
//		List<Map<String, String>> list = baseDao.findBySql("select * from tj");
		String days = "14";
//		if(list != null && list.size() > 0){
//			days  = map.get(list.get(0).get("TJ_T"));
//		}
		String editsql = "update offer_match m set status='2' where datediff(now(), m.match_time) > " + days;
		String delsql = "delete from offer_match WHERE datediff(now(), match_time) > 30";
//		baseDao.updateBySql(editsql);
//		baseDao.deleteBySql(delsql);
		String[] sqls = {editsql, delsql};
		baseDao.sendByBatchSql(sqls);
	}
}
