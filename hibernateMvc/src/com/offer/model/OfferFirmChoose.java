package com.offer.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_firm_choose")
public class OfferFirmChoose {

   @Id
   @GeneratedValue
   @Column(name = "id")
   private Integer id;
   
   @Column(name = "offer_firm_id")
   private Integer offerFirmId;
   
   @Column(name = "offer_user_id")
   private Integer offerUserId;
   
   @Column(name = "offer_firm_choose_city")
   private String offerFirmChooseCity;//前面三个的保存数据（城市，职位，工作经验）
   
   @Column(name = "offer_last_choose")
   private String offerLastChoose;//最后一个长长的编辑框
   
   @Column(name = "offer_firm_choose_job")
   private String offerFirmChooseJob;//最后一个长长的编辑框

   @Column(name = "offer_firm_choose_work_time")
   private String offerFirmChooseWorkTime;//最后一个长长的编辑框

   public Integer getId() {
      return id;
   }

   public void setId(Integer id) {
      this.id = id;
   }

   public Integer getOfferFirmId() {
      return offerFirmId;
   }

   public void setOfferFirmId(Integer offerFirmId) {
      this.offerFirmId = offerFirmId;
   }

   public String getOfferFirmChooseCity() {
      return offerFirmChooseCity;
   }

   public void setOfferFirmChooseCity(String offerFirmChooseCity) {
      this.offerFirmChooseCity = offerFirmChooseCity;
   }

   public String getOfferLastChoose() {
      return offerLastChoose;
   }

   public void setOfferLastChoose(String offerLastChoose) {
      this.offerLastChoose = offerLastChoose;
   }

   public String getOfferFirmChooseJob() {
      return offerFirmChooseJob;
   }

   public void setOfferFirmChooseJob(String offerFirmChooseJob) {
      this.offerFirmChooseJob = offerFirmChooseJob;
   }

   public String getOfferFirmChooseWorkTime() {
      return offerFirmChooseWorkTime;
   }

   public void setOfferFirmChooseWorkTime(String offerFirmChooseWorkTime) {
      this.offerFirmChooseWorkTime = offerFirmChooseWorkTime;
   }

   public Integer getOfferUserId() {
      return offerUserId;
   }

   public void setOfferUserId(Integer offerUserId) {
      this.offerUserId = offerUserId;
   }
}
