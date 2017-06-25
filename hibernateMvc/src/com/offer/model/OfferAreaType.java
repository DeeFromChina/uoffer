package com.offer.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_area_type")
public class OfferAreaType {
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;

	@Column(name = "offer_area_type")
	private String offerAreaType;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOfferAreaType() {
		return offerAreaType;
	}

	public void setOfferAreaType(String offerAreaType) {
		this.offerAreaType = offerAreaType;
	}
}
