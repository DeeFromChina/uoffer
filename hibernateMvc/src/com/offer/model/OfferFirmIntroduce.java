package com.offer.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_firm_introduce")
public class OfferFirmIntroduce {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "firm_descript")
	private String firmDescript;
	
	@Column(name = "create_time")
	private Date createTime;
	
	@Column(name = "firm_id")
	private Integer firmId;
	
	@Column(name = "isphoto")
	private String isphoto;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirmDescript() {
		return firmDescript;
	}

	public void setFirmDescript(String firmDescript) {
		this.firmDescript = firmDescript;
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

	public String getIsphoto() {
		return isphoto;
	}

	public void setIsphoto(String isphoto) {
		this.isphoto = isphoto;
	}
}
