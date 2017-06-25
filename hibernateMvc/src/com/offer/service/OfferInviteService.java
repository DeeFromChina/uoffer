package com.offer.service;

import java.util.List;
import java.util.Map;

import com.offer.model.OfferInvite;

public interface OfferInviteService {

   public void saveOfferInviteWithChat(Map<String, String> map) throws Exception;
   
   public List<Map<String, String>> getOfferInvites(Map<String, String> map) throws Exception;
   
   public List<OfferInvite> getOfferInvites(String id) throws Exception;
   
   public List<OfferInvite> getOfferInvitesforUserId(String id) throws Exception;
   
   public void updateOfferInvite(OfferInvite offerInvite) throws Exception;
   
   public void updateOfferInvite(Map<String, String> map) throws Exception;
   
   public void deleteOfferInvite(String ids) throws Exception;
   
   public List<OfferInvite> getOfferInvitesforcandaId(String id,String firmId) throws Exception;
   
   public List<Map<String, String>> getOfferInvitesByFirmIdAndUserId(String offerUserId,String firmId) throws Exception;
   
   public List<Map<String, String>> getOfferInvitesByFirmIdAndUserId(String offerUserId, String firmId, String inviteId) throws Exception;
}
