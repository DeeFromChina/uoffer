package com.offer.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_match")
public class OfferMatch {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;

	@Column(name = "firm_id")
	private String firmId;

	@Column(name = "user_id")
	private String userId;
	
	@Column(name = "firm_user_id")
	private String firmUserId;
	
	@Column(name = "status")
	private String status;
	
	@Column(name = "match_time")
	private Date matchTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirmId() {
		return firmId;
	}

	public void setFirmId(String firmId) {
		this.firmId = firmId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Date getMatchTime() {
		return matchTime;
	}

	public void setMatchTime(Date matchTime) {
		this.matchTime = matchTime;
	}

	public String getFirmUserId() {
		return firmUserId;
	}

	public void setFirmUserId(String firmUserId) {
		this.firmUserId = firmUserId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
