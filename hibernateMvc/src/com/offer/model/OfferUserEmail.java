package com.offer.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_user_email")
public class OfferUserEmail {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "imvite_email")
	private String imviteEmail;
	
	@Column(name = "status")
	private String status;
	
	@Column(name = "send_time")
	private Date sendTime;
	
	@Column(name = "shou_user_id")
	private Integer shouUserId;
	
	@Column(name = "send_user_id")
	private Integer sendUserId;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getImviteEmail() {
		return imviteEmail;
	}

	public void setImviteEmail(String imviteEmail) {
		this.imviteEmail = imviteEmail;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getSendTime() {
		return sendTime;
	}

	public void setSendTime(Date sendTime) {
		this.sendTime = sendTime;
	}

	public Integer getShouUserId() {
		return shouUserId;
	}

	public void setShouUserId(Integer shouUserId) {
		this.shouUserId = shouUserId;
	}

	public Integer getSendUserId() {
		return sendUserId;
	}

	public void setSendUserId(Integer sendUserId) {
		this.sendUserId = sendUserId;
	}
}
