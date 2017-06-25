package com.offer.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "offer_photo")
public class OfferPhoto {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;

	@Column(name = "photo_path")
	private String photoPath;

	@Column(name = "photo_savename")
	private String photoSavename;

	@Column(name = "photot_realname")
	private String phototRealname;

	@Column(name = "status")
	private String status;

	@Column(name = "table_id")
	private Integer tableId;

	@Column(name = "table_name")
	private String tableName;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPhotoPath() {
		return photoPath;
	}

	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}

	public String getPhotoSavename() {
		return photoSavename;
	}

	public void setPhotoSavename(String photoSavename) {
		this.photoSavename = photoSavename;
	}

	public String getPhototRealname() {
		return phototRealname;
	}

	public void setPhototRealname(String phototRealname) {
		this.phototRealname = phototRealname;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getTableId() {
		return tableId;
	}

	public void setTableId(Integer tableId) {
		this.tableId = tableId;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
}
