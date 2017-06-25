package com.offer.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_user_shield")
public class OfferUserShield {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "offer_user_id")
	private String offerUserId;
	
	@Column(name = "shield")
	private String shield;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOfferUserId() {
		return offerUserId;
	}

	public void setOfferUserId(String offerUserId) {
		this.offerUserId = offerUserId;
	}

	public String getShield() {
		return shield;
	}

	public void setShield(String shield) {
		this.shield = shield;
	}
	
	
}
