package com.offer.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Service;

import com.offer.dao.BaseDao;
import com.offer.model.OfferPhoto;
import com.offer.service.OfferPhotoService;

@Service("offerPhotoService")
public class OfferPhotoServiceImpl extends BaseServiceImpl implements OfferPhotoService{

	@Autowired
	private BaseDao baseDao;

	@Override
	public void saveOfferPhoto(OfferPhoto offerPhoto) throws Exception {
		baseDao.saveOrUpdate(offerPhoto);
	}

	@Override
	public List<OfferPhoto> findByFirmIId(String offerFirmId) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("tableId", offerFirmId);
		map.put("tableName", "offer_firm_information");
		return (List<OfferPhoto>) baseDao.findField(OfferPhoto.class, map);
	}

	@Override
	public List<OfferPhoto> findByFirmdId(String offerFirmId) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("tableId", offerFirmId);
		map.put("tableName", "offer_firm_introduce");
		return (List<OfferPhoto>) baseDao.findField(OfferPhoto.class, map);
	}
	
	@Override
	public List<OfferPhoto> findByCandidateId(String candidateId) throws Exception {
	   Map<String, String> map = new HashMap<String, String>();
	   map.put("tableId", candidateId);
	   map.put("tableName", "offer_candidate_photo");
	   return (List<OfferPhoto>) baseDao.findField(OfferPhoto.class, map);
	}

	@Override
	public void deletePhoto(OfferPhoto photo) throws Exception {
		baseDao.delete(photo);
	}

	@Override
	public OfferPhoto getOfferPhotos(Integer id) throws Exception {
		return (OfferPhoto) baseDao.findField(OfferPhoto.class, id);
	}

	@Override
	public void deletePhoto(Integer[] ids) throws Exception {
		baseDao.deleteByIds(ids, OfferPhoto.class);
	}

	@Override
	public void deletePhotoBySql(String sql) throws Exception {
		baseDao.findBySql(sql);
	}

}
