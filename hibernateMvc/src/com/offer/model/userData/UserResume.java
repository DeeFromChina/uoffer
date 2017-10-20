package com.offer.model.userData;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_resume")
public class UserResume {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "user_id")
	private Integer userId;
	
	@Column(name = "sex")
	private String sex;
	
	@Column(name = "work_time")
	private String workTime;
	
	@Column(name = "go_job_id1")
	private Integer goJobId1;
	
	@Column(name = "go_job_id2")
	private Integer goJobId2;
	
	@Column(name = "work_time1")
	private String workTime1;
	
	@Column(name = "work_time2")
	private String workTime2;
	
	@Column(name = "other_skill")
	private String otherSkill;
	
	@Column(name = "finish1")
	private Integer finish1;
	
	@Column(name = "finish2")
	private Integer finish2;
	
	@Column(name = "finish3")
	private Integer finish3;
	
	@Column(name = "finish4")
	private Integer finish4;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getWorkTime() {
		return workTime;
	}

	public void setWorkTime(String workTime) {
		this.workTime = workTime;
	}

	public Integer getGoJobId1() {
		return goJobId1;
	}

	public void setGoJobId1(Integer goJobId1) {
		this.goJobId1 = goJobId1;
	}

	public Integer getGoJobId2() {
		return goJobId2;
	}

	public void setGoJobId2(Integer goJobId2) {
		this.goJobId2 = goJobId2;
	}

	public String getWorkTime1() {
		return workTime1;
	}

	public void setWorkTime1(String workTime1) {
		this.workTime1 = workTime1;
	}

	public String getWorkTime2() {
		return workTime2;
	}

	public void setWorkTime2(String workTime2) {
		this.workTime2 = workTime2;
	}

	public String getOtherSkill() {
		return otherSkill;
	}

	public void setOtherSkill(String otherSkill) {
		this.otherSkill = otherSkill;
	}

	public Integer getFinish1() {
		return finish1;
	}

	public void setFinish1(Integer finish1) {
		this.finish1 = finish1;
	}

	public Integer getFinish2() {
		return finish2;
	}

	public void setFinish2(Integer finish2) {
		this.finish2 = finish2;
	}

	public Integer getFinish3() {
		return finish3;
	}

	public void setFinish3(Integer finish3) {
		this.finish3 = finish3;
	}

	public Integer getFinish4() {
		return finish4;
	}

	public void setFinish4(Integer finish4) {
		this.finish4 = finish4;
	}
}
