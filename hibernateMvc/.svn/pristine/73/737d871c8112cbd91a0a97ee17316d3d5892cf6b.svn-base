package com.offer.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_user_plan_work_place")
public class OfferUserPlanWorkPlace {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "offer_city_id")
	private String offerCityId;
	
	@Column(name = "offer_user_id")
	private Integer offerUserId;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOfferCityId() {
		return offerCityId;
	}

	public void setOfferCityId(String offerCityId) {
		this.offerCityId = offerCityId;
	}

	public Integer getOfferUserId() {
		return offerUserId;
	}

	public void setOfferUserId(Integer offerUserId) {
		this.offerUserId = offerUserId;
	}
}
