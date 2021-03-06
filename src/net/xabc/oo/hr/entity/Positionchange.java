package net.xabc.oo.hr.entity;

import java.util.Date;

/**
 * Positionchange generated by MyEclipse Persistence Tools
 */

public class Positionchange implements java.io.Serializable {

	// Fields

	private Integer positionChangeId;

	private Employee employee;

	private String positionChangeRname;

	private Integer positionBeforePositionId;

	private Integer positionAfterPostionId;

	private String positionChangeReason;

	private String positionIssuanceChange;

	private String positionChangeRemark;

	private String positionChangeRegister;

	private Date positionChangeRegisterTime;

	private String positionChangeChecker;

	private Date positionChangeCheckTime;

	private Integer positionChangeCheckStatus;

	// Constructors

	/** default constructor */
	public Positionchange() {
	}

	/** minimal constructor */
	public Positionchange(Employee employee) {
		this.employee = employee;
	}

	/** full constructor */
	public Positionchange(Employee employee, String positionChangeRname,
			Integer positionBeforePositionId, Integer positionAfterPostionId,
			String positionChangeReason, String positionIssuanceChange,
			String positionChangeRemark, String positionChangeRegister,
			Date positionChangeRegisterTime, String positionChangeChecker,
			Date positionChangeCheckTime, Integer positionChangeCheckStatus) {
		this.employee = employee;
		this.positionChangeRname = positionChangeRname;
		this.positionBeforePositionId = positionBeforePositionId;
		this.positionAfterPostionId = positionAfterPostionId;
		this.positionChangeReason = positionChangeReason;
		this.positionIssuanceChange = positionIssuanceChange;
		this.positionChangeRemark = positionChangeRemark;
		this.positionChangeRegister = positionChangeRegister;
		this.positionChangeRegisterTime = positionChangeRegisterTime;
		this.positionChangeChecker = positionChangeChecker;
		this.positionChangeCheckTime = positionChangeCheckTime;
		this.positionChangeCheckStatus = positionChangeCheckStatus;
	}

	// Property accessors

	public Integer getPositionChangeId() {
		return this.positionChangeId;
	}

	public void setPositionChangeId(Integer positionChangeId) {
		this.positionChangeId = positionChangeId;
	}

	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public String getPositionChangeRname() {
		return this.positionChangeRname;
	}

	public void setPositionChangeRname(String positionChangeRname) {
		this.positionChangeRname = positionChangeRname;
	}

	public Integer getPositionBeforePositionId() {
		return this.positionBeforePositionId;
	}

	public void setPositionBeforePositionId(Integer positionBeforePositionId) {
		this.positionBeforePositionId = positionBeforePositionId;
	}

	public Integer getPositionAfterPostionId() {
		return this.positionAfterPostionId;
	}

	public void setPositionAfterPostionId(Integer positionAfterPostionId) {
		this.positionAfterPostionId = positionAfterPostionId;
	}

	public String getPositionChangeReason() {
		return this.positionChangeReason;
	}

	public void setPositionChangeReason(String positionChangeReason) {
		this.positionChangeReason = positionChangeReason;
	}

	public String getPositionIssuanceChange() {
		return this.positionIssuanceChange;
	}

	public void setPositionIssuanceChange(String positionIssuanceChange) {
		this.positionIssuanceChange = positionIssuanceChange;
	}

	public String getPositionChangeRemark() {
		return this.positionChangeRemark;
	}

	public void setPositionChangeRemark(String positionChangeRemark) {
		this.positionChangeRemark = positionChangeRemark;
	}

	public String getPositionChangeRegister() {
		return this.positionChangeRegister;
	}

	public void setPositionChangeRegister(String positionChangeRegister) {
		this.positionChangeRegister = positionChangeRegister;
	}

	public Date getPositionChangeRegisterTime() {
		return this.positionChangeRegisterTime;
	}

	public void setPositionChangeRegisterTime(Date positionChangeRegisterTime) {
		this.positionChangeRegisterTime = positionChangeRegisterTime;
	}

	public String getPositionChangeChecker() {
		return this.positionChangeChecker;
	}

	public void setPositionChangeChecker(String positionChangeChecker) {
		this.positionChangeChecker = positionChangeChecker;
	}

	public Date getPositionChangeCheckTime() {
		return this.positionChangeCheckTime;
	}

	public void setPositionChangeCheckTime(Date positionChangeCheckTime) {
		this.positionChangeCheckTime = positionChangeCheckTime;
	}

	public Integer getPositionChangeCheckStatus() {
		return this.positionChangeCheckStatus;
	}

	public void setPositionChangeCheckStatus(Integer positionChangeCheckStatus) {
		this.positionChangeCheckStatus = positionChangeCheckStatus;
	}

}