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
	
	@Column(name = "name")
	private String name;
	
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
	
	@Column(name = "zhihu")
	private String zhihu;
	
	@Column(name = "github")
	private String github;
	
	@Column(name = "blog")
	private String blog;
	
	@Column(name = "personlink")
	private String personlink;
	
	@Column(name = "now_residence")
	private String nowResidence;
	
	@Column(name = "go_job_city")
	private String goJobCity;
	
	@Column(name = "company_nature")
	private String companyNature;
	
	@Column(name = "company_scale")
	private String companyScale;
	
	@Column(name = "now_job_status")
	private String nowJobStatus;
	
	@Column(name = "in_time")
	private String inTime;
	
	@Column(name = "currency1")
	private String currency1;
	
	@Column(name = "month_money1")
	private Double monthMoney1;
	
	@Column(name = "month1")
	private Integer month1;
	
	@Column(name = "currency2")
	private String currency2;
	
	@Column(name = "month_money2")
	private Double monthMoney2;
	
	@Column(name = "month2")
	private Integer month2;
	
	@Column(name = "remark")
	private String remark;
	
	@Column(name = "finish1")
	private Integer finish1;
	
	@Column(name = "finish2")
	private Integer finish2;
	
	@Column(name = "finish3")
	private Integer finish3;
	
	@Column(name = "finish4")
	private Integer finish4;
	
	@Column(name = "resume_name")
	private String resumeName;

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getZhihu() {
		return zhihu;
	}

	public void setZhihu(String zhihu) {
		this.zhihu = zhihu;
	}

	public String getGithub() {
		return github;
	}

	public void setGithub(String github) {
		this.github = github;
	}

	public String getBlog() {
		return blog;
	}

	public void setBlog(String blog) {
		this.blog = blog;
	}

	public String getPersonlink() {
		return personlink;
	}

	public void setPersonlink(String personlink) {
		this.personlink = personlink;
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

	public String getNowResidence() {
		return nowResidence;
	}

	public void setNowResidence(String nowResidence) {
		this.nowResidence = nowResidence;
	}

	public String getGoJobCity() {
		return goJobCity;
	}

	public void setGoJobCity(String goJobCity) {
		this.goJobCity = goJobCity;
	}

	public String getCompanyNature() {
		return companyNature;
	}

	public void setCompanyNature(String companyNature) {
		this.companyNature = companyNature;
	}

	public String getCompanyScale() {
		return companyScale;
	}

	public void setCompanyScale(String companyScale) {
		this.companyScale = companyScale;
	}

	public String getNowJobStatus() {
		return nowJobStatus;
	}

	public void setNowJobStatus(String nowJobStatus) {
		this.nowJobStatus = nowJobStatus;
	}

	public String getInTime() {
		return inTime;
	}

	public void setInTime(String inTime) {
		this.inTime = inTime;
	}

	public String getCurrency1() {
		return currency1;
	}

	public void setCurrency1(String currency1) {
		this.currency1 = currency1;
	}

	public String getCurrency2() {
		return currency2;
	}

	public void setCurrency2(String currency2) {
		this.currency2 = currency2;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Double getMonthMoney1() {
		return monthMoney1;
	}

	public void setMonthMoney1(Double monthMoney1) {
		this.monthMoney1 = monthMoney1;
	}

	public Integer getMonth1() {
		return month1;
	}

	public void setMonth1(Integer month1) {
		this.month1 = month1;
	}

	public Double getMonthMoney2() {
		return monthMoney2;
	}

	public void setMonthMoney2(Double monthMoney2) {
		this.monthMoney2 = monthMoney2;
	}

	public Integer getMonth2() {
		return month2;
	}

	public void setMonth2(Integer month2) {
		this.month2 = month2;
	}

	public String getResumeName() {
		return resumeName;
	}

	public void setResumeName(String resumeName) {
		this.resumeName = resumeName;
	}
}
