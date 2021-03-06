package net.xabc.oo.hr.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Employee generated by MyEclipse Persistence Tools
 */

public class Employee implements java.io.Serializable {

	// Fields

	private Integer employeeId;

	private Postion postion;

	private String employeeName;

	private Integer employeeAge;

	private String employeeSex;

	private Date employeeBirthday;

	private Integer employeeNation;

	private String employeePhoto;

	private String employeeSpeciality;

	private Integer employeeDegree;

	private Integer employeePolity;

	private String employeeFamilyAddress;

	private String employeeFamilyphone;

	private Date employeeEntertime;

	private String employeePhone;

	private String employeeMobile;

	private String employeeEmail;

	private String employeeBirthPlace;

	private String employeeAddress;

	private String employeeQq;

	private String employeePostcode;

	private String employeeHobby;

	private String employeeSkills;

	private String employeeRemark;

	private Integer employeeChangeNum;

	private Integer employeeStatus;

	private Integer resumeId;

	private Set userses = new HashSet(0);

	private Set positionchanges = new HashSet(0);

	private Set salarygrants = new HashSet(0);

	// Constructors

	/** default constructor */
	public Employee() {
	}

	/** minimal constructor */
	public Employee(Postion postion) {
		this.postion = postion;
	}

	/** full constructor */
	public Employee(Postion postion, String employeeName, Integer employeeAge,
			String employeeSex, Date employeeBirthday, Integer employeeNation,
			String employeePhoto, String employeeSpeciality,
			Integer employeeDegree, Integer employeePolity,
			String employeeFamilyAddress, String employeeFamilyphone,
			Date employeeEntertime, String employeePhone,
			String employeeMobile, String employeeEmail,
			String employeeBirthPlace, String employeeAddress,
			String employeeQq, String employeePostcode, String employeeHobby,
			String employeeSkills, String employeeRemark,
			Integer employeeChangeNum, Integer employeeStatus,
			Integer resumeId, Set userses, Set positionchanges, Set salarygrants) {
		this.postion = postion;
		this.employeeName = employeeName;
		this.employeeAge = employeeAge;
		this.employeeSex = employeeSex;
		this.employeeBirthday = employeeBirthday;
		this.employeeNation = employeeNation;
		this.employeePhoto = employeePhoto;
		this.employeeSpeciality = employeeSpeciality;
		this.employeeDegree = employeeDegree;
		this.employeePolity = employeePolity;
		this.employeeFamilyAddress = employeeFamilyAddress;
		this.employeeFamilyphone = employeeFamilyphone;
		this.employeeEntertime = employeeEntertime;
		this.employeePhone = employeePhone;
		this.employeeMobile = employeeMobile;
		this.employeeEmail = employeeEmail;
		this.employeeBirthPlace = employeeBirthPlace;
		this.employeeAddress = employeeAddress;
		this.employeeQq = employeeQq;
		this.employeePostcode = employeePostcode;
		this.employeeHobby = employeeHobby;
		this.employeeSkills = employeeSkills;
		this.employeeRemark = employeeRemark;
		this.employeeChangeNum = employeeChangeNum;
		this.employeeStatus = employeeStatus;
		this.resumeId = resumeId;
		this.userses = userses;
		this.positionchanges = positionchanges;
		this.salarygrants = salarygrants;
	}

	// Property accessors

	public Integer getEmployeeId() {
		return this.employeeId;
	}

	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}

	public Postion getPostion() {
		return this.postion;
	}

	public void setPostion(Postion postion) {
		this.postion = postion;
	}

	public String getEmployeeName() {
		return this.employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public Integer getEmployeeAge() {
		return this.employeeAge;
	}

	public void setEmployeeAge(Integer employeeAge) {
		this.employeeAge = employeeAge;
	}

	public String getEmployeeSex() {
		return this.employeeSex;
	}

	public void setEmployeeSex(String employeeSex) {
		this.employeeSex = employeeSex;
	}

	public Date getEmployeeBirthday() {
		return this.employeeBirthday;
	}

	public void setEmployeeBirthday(Date employeeBirthday) {
		this.employeeBirthday = employeeBirthday;
	}

	public Integer getEmployeeNation() {
		return this.employeeNation;
	}

	public void setEmployeeNation(Integer employeeNation) {
		this.employeeNation = employeeNation;
	}

	public String getEmployeePhoto() {
		return this.employeePhoto;
	}

	public void setEmployeePhoto(String employeePhoto) {
		this.employeePhoto = employeePhoto;
	}

	public String getEmployeeSpeciality() {
		return this.employeeSpeciality;
	}

	public void setEmployeeSpeciality(String employeeSpeciality) {
		this.employeeSpeciality = employeeSpeciality;
	}

	public Integer getEmployeeDegree() {
		return this.employeeDegree;
	}

	public void setEmployeeDegree(Integer employeeDegree) {
		this.employeeDegree = employeeDegree;
	}

	public Integer getEmployeePolity() {
		return this.employeePolity;
	}

	public void setEmployeePolity(Integer employeePolity) {
		this.employeePolity = employeePolity;
	}

	public String getEmployeeFamilyAddress() {
		return this.employeeFamilyAddress;
	}

	public void setEmployeeFamilyAddress(String employeeFamilyAddress) {
		this.employeeFamilyAddress = employeeFamilyAddress;
	}

	public String getEmployeeFamilyphone() {
		return this.employeeFamilyphone;
	}

	public void setEmployeeFamilyphone(String employeeFamilyphone) {
		this.employeeFamilyphone = employeeFamilyphone;
	}

	public Date getEmployeeEntertime() {
		return this.employeeEntertime;
	}

	public void setEmployeeEntertime(Date employeeEntertime) {
		this.employeeEntertime = employeeEntertime;
	}

	public String getEmployeePhone() {
		return this.employeePhone;
	}

	public void setEmployeePhone(String employeePhone) {
		this.employeePhone = employeePhone;
	}

	public String getEmployeeMobile() {
		return this.employeeMobile;
	}

	public void setEmployeeMobile(String employeeMobile) {
		this.employeeMobile = employeeMobile;
	}

	public String getEmployeeEmail() {
		return this.employeeEmail;
	}

	public void setEmployeeEmail(String employeeEmail) {
		this.employeeEmail = employeeEmail;
	}

	public String getEmployeeBirthPlace() {
		return this.employeeBirthPlace;
	}

	public void setEmployeeBirthPlace(String employeeBirthPlace) {
		this.employeeBirthPlace = employeeBirthPlace;
	}

	public String getEmployeeAddress() {
		return this.employeeAddress;
	}

	public void setEmployeeAddress(String employeeAddress) {
		this.employeeAddress = employeeAddress;
	}

	public String getEmployeeQq() {
		return this.employeeQq;
	}

	public void setEmployeeQq(String employeeQq) {
		this.employeeQq = employeeQq;
	}

	public String getEmployeePostcode() {
		return this.employeePostcode;
	}

	public void setEmployeePostcode(String employeePostcode) {
		this.employeePostcode = employeePostcode;
	}

	public String getEmployeeHobby() {
		return this.employeeHobby;
	}

	public void setEmployeeHobby(String employeeHobby) {
		this.employeeHobby = employeeHobby;
	}

	public String getEmployeeSkills() {
		return this.employeeSkills;
	}

	public void setEmployeeSkills(String employeeSkills) {
		this.employeeSkills = employeeSkills;
	}

	public String getEmployeeRemark() {
		return this.employeeRemark;
	}

	public void setEmployeeRemark(String employeeRemark) {
		this.employeeRemark = employeeRemark;
	}

	public Integer getEmployeeChangeNum() {
		return this.employeeChangeNum;
	}

	public void setEmployeeChangeNum(Integer employeeChangeNum) {
		this.employeeChangeNum = employeeChangeNum;
	}

	public Integer getEmployeeStatus() {
		return this.employeeStatus;
	}

	public void setEmployeeStatus(Integer employeeStatus) {
		this.employeeStatus = employeeStatus;
	}

	public Integer getResumeId() {
		return this.resumeId;
	}

	public void setResumeId(Integer resumeId) {
		this.resumeId = resumeId;
	}

	public Set getUserses() {
		return this.userses;
	}

	public void setUserses(Set userses) {
		this.userses = userses;
	}

	public Set getPositionchanges() {
		return this.positionchanges;
	}

	public void setPositionchanges(Set positionchanges) {
		this.positionchanges = positionchanges;
	}

	public Set getSalarygrants() {
		return this.salarygrants;
	}

	public void setSalarygrants(Set salarygrants) {
		this.salarygrants = salarygrants;
	}

}