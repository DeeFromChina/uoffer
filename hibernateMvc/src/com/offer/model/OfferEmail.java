package com.offer.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_email")
public class OfferEmail {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private String id;
	
	@Column(name = "email_context")
	private String emailContext;
	
	@Column(name = "email_title")
	private String emailTitle;
	
	@Column(name = "status")
	private String status;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmailContext() {
		return emailContext;
	}

	public void setEmailContext(String emailContext) {
		this.emailContext = emailContext;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getEmailTitle() {
		return emailTitle;
	}

	public void setEmailTitle(String emailTitle) {
		this.emailTitle = emailTitle;
	}
	
	
}
