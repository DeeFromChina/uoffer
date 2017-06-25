package com.offer.service;

import java.util.List;
import java.util.Map;

import com.offer.model.OfferUserEducation;
import com.offer.model.OfferUserInformation;
import com.offer.model.OfferUserShield;
import com.offer.model.OfferUserWorks;

public interface OfferUserInformationService {

	public void saveOfferUserInfo(Map<String, String> map) throws Exception;
	
	public List<OfferUserInformation> getOfferUserInformation(int id) throws Exception;
	
	public List<OfferUserInformation> getOfferUserInformation4UserId(int id) throws Exception;
	
	public List<OfferUserWorks> getOfferUserWorks4UserId(int id) throws Exception;
	
	public List<OfferUserEducation> getOfferUserEducation4UserId(int id) throws Exception;
	
	public List<OfferUserShield> getOfferUserShield4UserId(int id) throws Exception;
   
   public void updateOfferUserInformation(OfferUserInformation offerUserInformation) throws Exception;
   
   public void deleteOfferUserInformation(String ids) throws Exception;
   
   public List<Map<String, String>> getOfferUserInformationByOfferUserId(Map<String, String> findMap) throws Exception;
   
   public void saveResumeAddInformation1(Map<String, String> map) throws Exception;
   
   public void saveResumeAddPlanjob1(Map<String, String> map) throws Exception;
   
   public void saveResumeAddWorkexperience1(Map<String, String> map) throws Exception;
   
   public void saveresumeAddWorkexperience2(Map<String, String> map) throws Exception;
   
   public void saveresumeAddQuestionnaire1(Map<String, String> map) throws Exception;
   
   public void updateOfferUserShield(OfferUserShield offerUserShield) throws Exception;
   
   public List<Map<String, String>> getOfferUserInformations(Map<String, String> findMap) throws Exception;
}
