package net.xabc.oo.hr.web.form;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;

public class ResumeForm extends Action{
	
	private Integer resumeId;

	private String personName;

	private Date resumeTime;

	private Integer resumeState;

	private String resumeSex;

	private Integer resumeAge;

	private Date resumeBirthday;

	private String resumeDegree;

	private String resumeGraduate;

	private String resumeIdCard;

	private String resumeNation;

	private String resumeSpeciality;

	private String resumeHistory;

	private String resumeBirthPlace;

	private Double resumeRequire;

	private String resumePhone;

	private String resumePostcode;

	private String resumeEmail;

	private String resumeFamilyPhone;

	private int resumePolity;

	private String resumePhoto;

	private String resumeHobby;

	private String resumeSkill;

	private String resumeStatus;

	private String resumeRegister;

	private Date resumeRegisterTime;

	private String resumeChecker;

	private Date resumeCheckTime;

	private Integer resumeCheckStatus;
	
	public ActionErrors validate(ActionMapping mapping,HttpServletRequest request){
		return null;
		
	}
	public void reset(ActionMapping mapping,HttpServletRequest request){
		
	}
	public String getPersonName() {
		return personName;
	}
	public void setPersonName(String personName) {
		this.personName = personName;
	}
	public Integer getResumeAge() {
		return resumeAge;
	}
	public void setResumeAge(Integer resumeAge) {
		this.resumeAge = resumeAge;
	}
	public Date getResumeBirthday() {
		return resumeBirthday;
	}
	public void setResumeBirthday(Date resumeBirthday) {
		this.resumeBirthday = resumeBirthday;
	}
	public String getResumeBirthPlace() {
		return resumeBirthPlace;
	}
	public void setResumeBirthPlace(String resumeBirthPlace) {
		this.resumeBirthPlace = resumeBirthPlace;
	}
	public String getResumeChecker() {
		return resumeChecker;
	}
	public void setResumeChecker(String resumeChecker) {
		this.resumeChecker = resumeChecker;
	}
	public Integer getResumeCheckStatus() {
		return resumeCheckStatus;
	}
	public void setResumeCheckStatus(Integer resumeCheckStatus) {
		this.resumeCheckStatus = resumeCheckStatus;
	}
	public Date getResumeCheckTime() {
		return resumeCheckTime;
	}
	public void setResumeCheckTime(Date resumeCheckTime) {
		this.resumeCheckTime = resumeCheckTime;
	}
	public String getResumeDegree() {
		return resumeDegree;
	}
	public void setResumeDegree(String resumeDegree) {
		this.resumeDegree = resumeDegree;
	}
	public String getResumeEmail() {
		return resumeEmail;
	}
	public void setResumeEmail(String resumeEmail) {
		this.resumeEmail = resumeEmail;
	}
	public String getResumeFamilyPhone() {
		return resumeFamilyPhone;
	}
	public void setResumeFamilyPhone(String resumeFamilyPhone) {
		this.resumeFamilyPhone = resumeFamilyPhone;
	}
	public String getResumeGraduate() {
		return resumeGraduate;
	}
	public void setResumeGraduate(String resumeGraduate) {
		this.resumeGraduate = resumeGraduate;
	}
	public String getResumeHistory() {
		return resumeHistory;
	}
	public void setResumeHistory(String resumeHistory) {
		this.resumeHistory = resumeHistory;
	}
	public String getResumeHobby() {
		return resumeHobby;
	}
	public void setResumeHobby(String resumeHobby) {
		this.resumeHobby = resumeHobby;
	}
	public Integer getResumeId() {
		return resumeId;
	}
	public void setResumeId(Integer resumeId) {
		this.resumeId = resumeId;
	}
	public String getResumeIdCard() {
		return resumeIdCard;
	}
	public void setResumeIdCard(String resumeIdCard) {
		this.resumeIdCard = resumeIdCard;
	}
	public String getResumeNation() {
		return resumeNation;
	}
	public void setResumeNation(String resumeNation) {
		this.resumeNation = resumeNation;
	}
	public int getResumeParty() {
		return resumePolity;
	}
	public void setResumeParty(int resumePolity) {
		this.resumePolity = resumePolity;
	}
	public String getResumePhone() {
		return resumePhone;
	}
	public void setResumePhone(String resumePhone) {
		this.resumePhone = resumePhone;
	}
	public String getResumePhoto() {
		return resumePhoto;
	}
	public void setResumePhoto(String resumePhoto) {
		this.resumePhoto = resumePhoto;
	}
	public String getResumePostcode() {
		return resumePostcode;
	}
	public void setResumePostcode(String resumePostcode) {
		this.resumePostcode = resumePostcode;
	}
	public String getResumeRegister() {
		return resumeRegister;
	}
	public void setResumeRegister(String resumeRegister) {
		this.resumeRegister = resumeRegister;
	}
	public Date getResumeRegisterTime() {
		return resumeRegisterTime;
	}
	public void setResumeRegisterTime(Date resumeRegisterTime) {
		this.resumeRegisterTime = resumeRegisterTime;
	}
	public Double getResumeRequire() {
		return resumeRequire;
	}
	public void setResumeRequire(Double resumeRequire) {
		this.resumeRequire = resumeRequire;
	}
	public String getResumeSex() {
		return resumeSex;
	}
	public void setResumeSex(String resumeSex) {
		this.resumeSex = resumeSex;
	}
	public String getResumeSkill() {
		return resumeSkill;
	}
	public void setResumeSkill(String resumeSkill) {
		this.resumeSkill = resumeSkill;
	}
	public String getResumeSpeciality() {
		return resumeSpeciality;
	}
	public void setResumeSpeciality(String resumeSpeciality) {
		this.resumeSpeciality = resumeSpeciality;
	}
	public Integer getResumeState() {
		return resumeState;
	}
	public void setResumeState(Integer resumeState) {
		this.resumeState = resumeState;
	}
	public String getResumeStatus() {
		return resumeStatus;
	}
	public void setResumeStatus(String resumeStatus) {
		this.resumeStatus = resumeStatus;
	}
	public Date getResumeTime() {
		return resumeTime;
	}
	public void setResumeTime(Date resumeTime) {
		this.resumeTime = resumeTime;
	}

}
