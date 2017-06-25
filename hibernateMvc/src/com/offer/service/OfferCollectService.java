package com.offer.service;

import java.util.List;
import java.util.Map;

import com.offer.model.OfferCollect;

public interface OfferCollectService {

   public void saveOfferCollect(Map<String, String> map) throws Exception;
   
   public List<Map<String, String>> getOfferCollectss(Map<String, String> map) throws Exception;
   
   public OfferCollect getOfferCollect(int id) throws Exception;
   
   public void updateOfferCollect(OfferCollect offerCollect) throws Exception;
   
   public void deleteOfferCollect(String ids) throws Exception;
}
