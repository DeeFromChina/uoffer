package com.offer.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.offer.model.OfferFirmReport;

public interface OfferFirmReportService {

   public List<OfferFirmReport> getOfferFirmReports(String id) throws Exception;
   
   public void saveOrUpdateOfferFirmReport(String id, HttpServletRequest request) throws Exception;
   
   public List<OfferFirmReport> getOfferFirmReports(int id) throws Exception;
   
   public void updateOfferFirmReport(OfferFirmReport offerFirmReport) throws Exception;
   
   public void deleteOfferFirmReport(String ids) throws Exception;
   
   public void saveOfferFirmReport(Map<String, String> map) throws Exception;
}
