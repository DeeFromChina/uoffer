package com.offer.model.userData;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_experience")
public class UserExperience {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;

	@Column(name = "type")
	private String type;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "start_time")
	private Date startTime;
	
	@Column(name = "end_time")
	private Date endTime;
	
	@Column(name = "job")
	private String job;
	
	@Column(name = "job_description")
	private String jobDescription;
	
	@Column(name = "job_belong")
	private String jobBelong;
	
	@Column(name = "level")
	private String level;
	
	@Column(name = "descript1")
	private String descript1;
	
	@Column(name = "descript2")
	private String descript2;
	
	@Column(name = "user_resume_id")
	private String userResumeId;
	
	@Column(name = "user_id")
	private String userId;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getJobDescription() {
		return jobDescription;
	}

	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}

	public String getJobBelong() {
		return jobBelong;
	}

	public void setJobBelong(String jobBelong) {
		this.jobBelong = jobBelong;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getDescript1() {
		return descript1;
	}

	public void setDescript1(String descript1) {
		this.descript1 = descript1;
	}

	public String getDescript2() {
		return descript2;
	}

	public void setDescript2(String descript2) {
		this.descript2 = descript2;
	}

	public String getUserResumeId() {
		return userResumeId;
	}

	public void setUserResumeId(String userResumeId) {
		this.userResumeId = userResumeId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
}
