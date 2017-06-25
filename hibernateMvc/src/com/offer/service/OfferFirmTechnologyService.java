package com.offer.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.offer.model.OfferFirmTechnology;

public interface OfferFirmTechnologyService {

   public List<OfferFirmTechnology> getOfferFirmTechnologies(String id) throws Exception;
   
   public void saveOrUpdateOfferFirmTechnology(String id, HttpServletRequest request) throws Exception;
   
   public List<OfferFirmTechnology> getOfferFirmTechnology(int id) throws Exception;
   
   public void updateOfferFirmTechnology(OfferFirmTechnology offerFirmTechnology) throws Exception;
   
   public void deleteOfferFirmTechnology(String ids) throws Exception;
   
   public void saveOfferFirmTechnology(Map<String, String> map) throws Exception;
}
