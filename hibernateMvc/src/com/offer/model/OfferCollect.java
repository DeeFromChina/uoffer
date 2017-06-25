package com.offer.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_collect")
public class OfferCollect {

   @Id
   @GeneratedValue
   @Column(name = "id")
   private Integer id;
   
   @Column(name = "status")
   private Integer status;
   
   @Column(name = "offer_candidate_id")
   private Integer offerCandidateId;
   
   @Column(name = "offer_firm_id")
   private Integer offerFirmId;
   
   @Column(name = "offer_user_id")
   private Integer offerUserId;
   
   @Column(name = "create_time")
   private Date createTime;

   public Integer getId() {
      return id;
   }

   public void setId(Integer id) {
      this.id = id;
   }

   public Integer getStatus() {
      return status;
   }

   public void setStatus(Integer status) {
      this.status = status;
   }

   public Integer getOfferCandidateId() {
      return offerCandidateId;
   }

   public void setOfferCandidateId(Integer offerCandidateId) {
      this.offerCandidateId = offerCandidateId;
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

   public Date getCreateTime() {
      return createTime;
   }

   public void setCreateTime(Date createTime) {
      this.createTime = createTime;
   }
}
