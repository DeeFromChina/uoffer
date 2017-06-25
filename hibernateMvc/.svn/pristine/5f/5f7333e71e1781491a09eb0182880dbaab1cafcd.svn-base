package com.offer.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_stage")
public class OfferStage {

   @Id
   @GeneratedValue
   @Column(name = "id")
   private Integer id;
   
   @Column(name = "offer_stage")
   private String offerStage;

   @Column(name = "type")
   private Integer type;

   public Integer getId() {
      return id;
   }

   public void setId(Integer id) {
      this.id = id;
   }

   public String getOfferStage() {
      return offerStage;
   }

   public void setOfferStage(String offerStage) {
      this.offerStage = offerStage;
   }

public Integer getType() {
	return type;
}

public void setType(Integer type) {
	this.type = type;
}
}
