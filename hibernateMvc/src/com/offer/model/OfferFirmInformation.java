package com.offer.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_firm_information")
public class OfferFirmInformation {

   @Id
   @GeneratedValue
   @Column(name = "id")
   private Integer id;

   @Column(name = "firm_all_name")
   private String  firmAllName;

   @Column(name = "firm_simple_name")
   private String  firmSimpleName;

   @Column(name = "firm_web_link")
   private String  firmWebLink;

   @Column(name = "firm_city")
   private String  firmCity;

   @Column(name = "firm_address")
   private String  firmAddress;

   @Column(name = "area_id")
   private String  areaId;

   @Column(name = "firm_create_year")
   private String  firmCreateYear;

   @Column(name = "firm_size")
   private String  firmSize;

   @Column(name = "firm_stage")
   private String  firmStage;

   @Column(name = "firm_descript")
   private String  firmDescript;

   @Column(name = "isphoto")
   private String  isphoto;

   @Column(name = "firm_one_descript")
   private String  firmOneDescript;

   @Column(name = "firm_team_size")
   private String  firmTeamSize;

   @Column(name = "firmxuqiu")
   private String  firmxuqiu;

   @Column(name = "firm_id")
   private Integer firmId;

   @Column(name = "firm_job_id")
   private Integer firmJobId;

   public Integer getId() {
      return id;
   }

   public void setId(Integer id) {
      this.id = id;
   }

   public String getFirmAllName() {
      return firmAllName;
   }

   public void setFirmAllName(String firmAllName) {
      this.firmAllName = firmAllName;
   }

   public String getFirmSimpleName() {
      return firmSimpleName;
   }

   public void setFirmSimpleName(String firmSimpleName) {
      this.firmSimpleName = firmSimpleName;
   }

   public String getFirmWebLink() {
      return firmWebLink;
   }

   public void setFirmWebLink(String firmWebLink) {
      this.firmWebLink = firmWebLink;
   }

   public String getFirmCity() {
      return firmCity;
   }

   public void setFirmCity(String firmCity) {
      this.firmCity = firmCity;
   }

   public String getFirmAddress() {
      return firmAddress;
   }

   public void setFirmAddress(String firmAddress) {
      this.firmAddress = firmAddress;
   }

   public String getAreaId() {
      return areaId;
   }

   public void setAreaId(String areaId) {
      this.areaId = areaId;
   }

   public String getFirmCreateYear() {
      return firmCreateYear;
   }

   public void setFirmCreateYear(String firmCreateYear) {
      this.firmCreateYear = firmCreateYear;
   }

   public String getFirmSize() {
      return firmSize;
   }

   public void setFirmSize(String firmSize) {
      this.firmSize = firmSize;
   }

   public String getFirmStage() {
      return firmStage;
   }

   public void setFirmStage(String firmStage) {
      this.firmStage = firmStage;
   }

   public String getFirmDescript() {
      return firmDescript;
   }

   public void setFirmDescript(String firmDescript) {
      this.firmDescript = firmDescript;
   }

   public String getIsphoto() {
      return isphoto;
   }

   public void setIsphoto(String isphoto) {
      this.isphoto = isphoto;
   }

   public Integer getFirmId() {
      return firmId;
   }

   public void setFirmId(Integer firmId) {
      this.firmId = firmId;
   }

   public Integer getFirmJobId() {
      return firmJobId;
   }

   public void setFirmJobId(Integer firmJobId) {
      this.firmJobId = firmJobId;
   }

   public String getFirmOneDescript() {
      return firmOneDescript;
   }

   public void setFirmOneDescript(String firmOneDescript) {
      this.firmOneDescript = firmOneDescript;
   }

   public String getFirmTeamSize() {
      return firmTeamSize;
   }

   public void setFirmTeamSize(String firmTeamSize) {
      this.firmTeamSize = firmTeamSize;
   }

   public String getFirmxuqiu() {
      return firmxuqiu;
   }

   public void setFirmxuqiu(String firmxuqiu) {
      this.firmxuqiu = firmxuqiu;
   }
}
