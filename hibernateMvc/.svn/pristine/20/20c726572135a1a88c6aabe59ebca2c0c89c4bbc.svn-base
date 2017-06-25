package com.offer.service;

import java.io.File;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.offer.model.OfferFirm;

public interface OfferFirmService {

	public List<OfferFirm> getOfferFirms(Serializable id) throws Exception;
	
	public void saveOfferFirm(HttpServletRequest request) throws Exception;
	
	public void saveOfferFirm(OfferFirm offerFirm) throws Exception;
	
	public void updateOfferFirm(OfferFirm offerFirm) throws Exception;
	
	public void deleteOfferFirm(OfferFirm offerFirm) throws Exception;
	
	public List<OfferFirm> findAllOfferFirms() throws Exception;
	
	public List<OfferFirm> findByNameAndEmail(String name, String email) throws Exception;
	
	public String findByName(String name) throws Exception;
	
	public List<Map<String, String>> findByEmail(String email) throws Exception;
	
	public List<Map<String, String>> getFirmInformation(String id) throws Exception;

	public void saveOfferFirm(Map<String, String> map) throws Exception;
	
	public void saveOfferFirmPhoto(String FILE_PATH, File fileLogo, List<File> fileEnvironment) throws Exception;
	
	public void saveOfferFirmChoose(Map<String, String> map) throws Exception;
	
	public void selectfindusersum1(Map<String, String> map) throws Exception;
	
	public void saveOfferInvite(Map<String, String> map) throws Exception;
	
	public List<Map<String, String>> getAllFirmInformation(Map<String, String> nowMap) throws Exception;
	
	public void changefirmStatus(Map<String, String> map) throws Exception;
	
	public void saveexaminefirm1(Map<String, String> map) throws Exception;
}
