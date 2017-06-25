package com.offer.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_firm_technology")
public class OfferFirmTechnology {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;

	@Column(name = "firm_id")
	private Integer firmId;

	@Column(name = "firm_seo")
	private String firmSeo;

	@Column(name = "create_time")
	private Date createTime;

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

	public String getFirmSeo() {
		return firmSeo;
	}

	public void setFirmSeo(String firmSeo) {
		this.firmSeo = firmSeo;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
}
