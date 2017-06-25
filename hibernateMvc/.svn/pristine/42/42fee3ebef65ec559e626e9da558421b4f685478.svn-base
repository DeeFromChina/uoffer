package com.offer.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.offer.model.Guwen;
import com.offer.model.OfferEmail;
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

public interface BaseService {
   
   public List<Map<String, String>> getDiShiCity(String provinceId) throws Exception;
   
   public List<Map<String, String>> getOfferStage() throws Exception;
   
   public List<Map<String, String>> getOfferMoneyType() throws Exception;
   
   public List<Map<String, String>> getOfferFirmSizeType() throws Exception;
   
   public List<Map<String, String>> getOfferAreaType() throws Exception;
   
   public List<OfferUserWorks> getOfferUserWorks(Serializable id) throws Exception;
   
   public List<OfferUserEducation> getOfferUserEducations(Serializable id) throws Exception;
   
   public List<OfferFirmChoose> getOfferFirmChooses(Serializable offerUserId, Serializable offerFirmId) throws Exception;
   
   public List<OfferFirmChoose> getOfferFirmChooses(Map<String, String> map) throws Exception;
   
   public List<OfferCity> getOfferCities(Serializable id) throws Exception;
   
   public List<OfferCollect> getOfferCollects(Map<String, String> map) throws Exception;
   
   public List<Map<String, String>> getOfferInvite(Map<String, String> map) throws Exception;
   
   public List<OfferInvite> getOfferInvite1(Map<String, String> map) throws Exception;
   
   public List<Map<String, String>> getOfferInviteChat(Map<String, String> map) throws Exception;
   
   public List<Map<String, String>> getOfferInviteFirm(Map<String, String> map) throws Exception;
   
   public List<Map<String, String>> getOfferInviteCandidate(Map<String, String> map) throws Exception;
   
   public List<TJ> getTJ(Serializable id) throws Exception;
   
   public List<Guwen> getGuwen(Serializable id) throws Exception;
   
   public List<OfferFirmWelfare> getwelfare(Serializable id) throws Exception;
   
   public List<jlzssz> getJLTYXQ(Serializable id) throws Exception;
   
   public List<OfferEmail> getEmailContent(Serializable id) throws Exception;
   
   public List<OfferUserEmail> getOfferUserEmail(Serializable id) throws Exception;
   
   public List<OfferUserEmail> getOfferUserEmail4senduser(Serializable id) throws Exception;
   
   public void saveGuwen(Guwen guwen) throws Exception;
   
   public void saveJLTYXQ(jlzssz jltjyxq) throws Exception;
   
   public void saveObject(Object obj) throws Exception;
   
   public void saveOfferUserEmail(Object obj) throws Exception;
   
   public List<Map<String, String>> getDiShiCityName(String id) throws Exception;

   public void delEducation(String id) throws Exception;
   
   public void delWork(String id) throws Exception;
   
   public List<Map<String, String>> getOfferStage(String type) throws Exception;
}
