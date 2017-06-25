package com.offer.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_firm_produce")
public class OfferFirmProduce {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;

	@Column(name = "produce_descript")
	private String produceDescript;

	@Column(name = "create_time")
	private Date createTime;

	@Column(name = "firm_id")
	private Integer firmId;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProduceDescript() {
		return produceDescript;
	}

	public void setProduceDescript(String produceDescript) {
		this.produceDescript = produceDescript;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getFirmId() {
		return firmId;
	}

	public void setFirmId(Integer firmId) {
		this.firmId = firmId;
	}
}
