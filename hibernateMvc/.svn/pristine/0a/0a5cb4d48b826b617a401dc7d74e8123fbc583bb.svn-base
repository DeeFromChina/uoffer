package com.offer.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.offer.model.OfferJob;
import com.offer.model.OfferUser;

public interface OfferUserService {

	public OfferUser islogin(Map<String, String> map) throws Exception;
	
	public List<Map<String, String>> isUserLogin(Map<String, String> map) throws Exception;
	
	public OfferUser getOfferUser(Serializable id) throws Exception;
	
	public void saveOfferUser(Map<String, String> map) throws Exception;
	
	public void saveOfferUser4oj(OfferUser offerUser) throws Exception;
	
	public List<OfferUser> getAllsOfferUser() throws Exception;
	
	public List<OfferUser> getOfferUserByfirmId(String firmId) throws Exception;
	
	public void updateOfferUser(OfferUser offerUser) throws Exception;

	public List<OfferUser> getOfferFirmTeam(Map<String, String> map) throws Exception;
   
	public List<Map<String, String>> getCandidate(Map<String, String> map) throws Exception;
   
	public List<OfferJob> editOfferUserJobId(Serializable id) throws Exception;
   
	public List<Map<String, String>> getOfferUserInformationWithEducations(Map<String, String> map) throws Exception;
	
	public void changeUserStatus(Map<String, String> map) throws Exception;
	
	public boolean haveEmail(String email) throws Exception;
}