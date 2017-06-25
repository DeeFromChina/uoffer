package com.offer.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_user_firm_stage")
public class OfferUserFirmStage {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "firm_id")
	private Integer firmId;
	
	@Column(name = "offer_user_id")
	private Integer offerUserId;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getFirmId() {
		return firmId;
	}

	public void setFirmId(Integer firmId) {
		this.firmId = firmId;
	}

	public Integer getOfferUserId() {
		return offerUserId;
	}

	public void setOfferUserId(Integer offerUserId) {
		this.offerUserId = offerUserId;
	}
}
