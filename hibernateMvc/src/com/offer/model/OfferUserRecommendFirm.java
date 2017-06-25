package com.offer.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_user_recommend_firm")
public class OfferUserRecommendFirm {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "create_time")
	private Date createTime;
	
	@Column(name = "offer_firm_id")
	private Integer offerFirmId;
	
	@Column(name = "offer_user_id")
	private Integer offerUserId;
	
	@Column(name = "status")
	private String status;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getOfferFirmId() {
		return offerFirmId;
	}

	public void setOfferFirmId(Integer offerFirmId) {
		this.offerFirmId = offerFirmId;
	}

	public Integer getOfferUserId() {
		return offerUserId;
	}

	public void setOfferUserId(Integer offerUserId) {
		this.offerUserId = offerUserId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
