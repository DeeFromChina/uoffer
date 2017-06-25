package com.offer.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_user_plan_job")
public class OfferUserPlanJob {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "create_time")
	private Date createTime;
	
	@Column(name = "offer_job_id")
	private Integer offerJobId;
	
	@Column(name = "offer_user_id")
	private Integer offerUserId;
	
	@Column(name = "offer_job_descript")
	private String offerJobDescript;

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

	public Integer getOfferJobId() {
		return offerJobId;
	}

	public void setOfferJobId(Integer offerJobId) {
		this.offerJobId = offerJobId;
	}

	public Integer getOfferUserId() {
		return offerUserId;
	}

	public void setOfferUserId(Integer offerUserId) {
		this.offerUserId = offerUserId;
	}

	public String getOfferJobDescript() {
		return offerJobDescript;
	}

	public void setOfferJobDescript(String offerJobDescript) {
		this.offerJobDescript = offerJobDescript;
	}
}
