package com.offer.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_firm_welfare")
public class OfferFirmWelfare {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "welfare_id")
	private String welfareId;

   @Column(name = "offer_id")
   private Integer offerId;

   @Column(name = "firm_id")
   private Integer firmId;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getWelfareId() {
		return welfareId;
	}

	public void setWelfareId(String welfareId) {
		this.welfareId = welfareId;
	}

   public Integer getOfferId() {
      return offerId;
   }

   public void setOfferId(Integer offerId) {
      this.offerId = offerId;
   }

   public Integer getFirmId() {
      return firmId;
   }

   public void setFirmId(Integer firmId) {
      this.firmId = firmId;
   }
}
