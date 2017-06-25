package com.offer.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_user_works")
public class OfferUserWorks {

   @Id
   @GeneratedValue
   @Column(name = "id")
   private Integer id;

   @Column(name = "old_firm_name")
   private String  oldFirmName;

   @Column(name = "start_time")
   private String  startTime;

   @Column(name = "end_time")
   private String  endTime;

   @Column(name = "job_name")
   private String  jobName;

   @Column(name = "job_descript")
   private String  jobDescript;

   @Column(name = "offer_user_id")
   private String  offerUserId;

   @Column(name = "to_now")
   private String  toNow;

   public Integer getId() {
      return id;
   }

   public void setId(Integer id) {
      this.id = id;
   }

   public String getOldFirmName() {
      return oldFirmName;
   }

   public void setOldFirmName(String oldFirmName) {
      this.oldFirmName = oldFirmName;
   }

   public String getStartTime() {
      return startTime;
   }

   public void setStartTime(String startTime) {
      this.startTime = startTime;
   }

   public String getEndTime() {
      return endTime;
   }

   public void setEndTime(String endTime) {
      this.endTime = endTime;
   }

   public String getJobName() {
      return jobName;
   }

   public void setJobName(String jobName) {
      this.jobName = jobName;
   }

   public String getJobDescript() {
      return jobDescript;
   }

   public void setJobDescript(String jobDescript) {
      this.jobDescript = jobDescript;
   }

   public String getOfferUserId() {
      return offerUserId;
   }

   public void setOfferUserId(String offerUserId) {
      this.offerUserId = offerUserId;
   }

   public String getToNow() {
      return toNow;
   }

   public void setToNow(String toNow) {
      this.toNow = toNow;
   }
}
