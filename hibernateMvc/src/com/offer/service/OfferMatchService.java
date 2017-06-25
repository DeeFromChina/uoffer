package com.offer.service;

import java.util.List;
import java.util.Map;

import com.offer.model.OfferMatch;
import com.offer.model.OfferPhoto;

public interface OfferMatchService {
	
	public List<OfferMatch> getOfferMatch4offerUserId(String id) throws Exception;
	
	public void saveOfferMatch(String offerUserId,String firmId,String houxuanrenId) throws Exception;
}
