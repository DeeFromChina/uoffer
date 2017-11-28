package com.offer.model.userData;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_resume_skill")
public class UserResumeSkill {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;

	@Column(name = "skill_id")
	private Integer skillId;
	
	@Column(name = "user_resume_id")
	private Integer userResumeId;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getSkillId() {
		return skillId;
	}

	public void setSkillId(Integer skillId) {
		this.skillId = skillId;
	}

	public Integer getUserId() {
		return userResumeId;
	}

	public void setUserId(Integer userResumeId) {
		this.userResumeId = userResumeId;
	}
}
