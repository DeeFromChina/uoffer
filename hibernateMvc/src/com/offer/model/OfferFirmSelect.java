package com.offer.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_firm_select")
public class OfferFirmSelect {

   @Id
   @GeneratedValue
   @Column(name = "id")
   private Integer id;

   @Column(name = "user_id")
   private Integer userId;

   @Column(name = "city_ids")
   private String  cityIds;

   @Column(name = "year_ids")
   private String  yearIds;

   @Column(name = "job_ids")
   private String  jobIds;

   @Column(name = "create_time")
   private Date    createTime;

   @Column(name = "status")
   private String  status;

   @Column(name = "firm_id")
   private Integer firmId;

   public Integer getId() {
      return id;
   }

   public void setId(Integer id) {
      this.id = id;
   }

   public String getCityIds() {
      return cityIds;
   }

   public void setCityIds(String cityIds) {
      this.cityIds = cityIds;
   }

   public String getYearIds() {
      return yearIds;
   }

   public void setYearIds(String yearIds) {
      this.yearIds = yearIds;
   }

   public String getJobIds() {
      return jobIds;
   }

   public void setJobIds(String jobIds) {
      this.jobIds = jobIds;
   }

   public Integer getUserId() {
      return userId;
   }

   public void setUserId(Integer userId) {
      this.userId = userId;
   }

   public Date getCreateTime() {
      return createTime;
   }

   public void setCreateTime(Date createTime) {
      this.createTime = createTime;
   }

   public String getStatus() {
      return status;
   }

   public void setStatus(String status) {
      this.status = status;
   }

   public Integer getFirmId() {
      return firmId;
   }

   public void setFirmId(Integer firmId) {
      this.firmId = firmId;
   }
}
