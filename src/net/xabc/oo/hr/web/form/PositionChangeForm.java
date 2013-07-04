package net.xabc.oo.hr.web.form;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import net.xabc.oo.hr.entity.Employee;
import net.xabc.oo.hr.entity.Resume;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class PositionChangeForm extends ActionForm{
	private static final long serialVersionUID = 1L;
	
	private Integer positionChangeId;
	
	private String employeeName;
	
	private Resume resume;
	
	private Employee employee;
	
	private Integer employeeId;
	
	private int employeeBranchId;

	private Integer positionChangeEmpolyeeId;

	private String positionChangeRname;

	private Date positionChangeTime;

	private Integer positionChangeBeforePositionId;

	private Integer employeePositionId;
	
	private String positionIssuanceChange;

	private Integer positionChangeUserId;

	private String positionChangeReason;

	private String positionChangeRemark;

	private String positionChangeRegister;

	private String positionChangeChecker;

	private Date positionChangeRegisterTime;

	private Date positionChangeCheckTime;

	private Integer positionChangeCheckStatus;

	public ActionErrors validate(ActionMapping mapping,HttpServletRequest request){
		return null;
		
	}
	public void reset(ActionMapping mapping,HttpServletRequest request){
		
	}

	public Integer getPositionChangeBeforePositionId() {
		return positionChangeBeforePositionId;
	}
	public void setPositionChangeBeforePositionId(
			Integer positionChangeBeforePositionId) {
		this.positionChangeBeforePositionId = positionChangeBeforePositionId;
	}
	public String getPositionChangeChecker() {
		return positionChangeChecker;
	}
	public void setPositionChangeChecker(String positionChangeChecker) {
		this.positionChangeChecker = positionChangeChecker;
	}
	public Integer getPositionChangeCheckStatus() {
		return positionChangeCheckStatus;
	}
	public void setPositionChangeCheckStatus(Integer positionChangeCheckStatus) {
		this.positionChangeCheckStatus = positionChangeCheckStatus;
	}
	public Date getPositionChangeCheckTime() {
		return positionChangeCheckTime;
	}
	public void setPositionChangeCheckTime(Date positionChangeCheckTime) {
		this.positionChangeCheckTime = positionChangeCheckTime;
	}
	public Integer getPositionChangeEmpolyeeId() {
		return positionChangeEmpolyeeId;
	}
	public void setPositionChangeEmpolyeeId(Integer positionChangeEmpolyeeId) {
		this.positionChangeEmpolyeeId = positionChangeEmpolyeeId;
	}
	public Integer getPositionChangeId() {
		return positionChangeId;
	}
	public void setPositionChangeId(Integer positionChangeId) {
		this.positionChangeId = positionChangeId;
	}
	public String getPositionChangeReason() {
		return positionChangeReason;
	}
	public void setPositionChangeReason(String positionChangeReason) {
		this.positionChangeReason = positionChangeReason;
	}
	public String getPositionChangeRegister() {
		return positionChangeRegister;
	}
	public void setPositionChangeRegister(String positionChangeRegister) {
		this.positionChangeRegister = positionChangeRegister;
	}
	public Date getPositionChangeRegisterTime() {
		return positionChangeRegisterTime;
	}
	public void setPositionChangeRegisterTime(Date positionChangeRegisterTime) {
		this.positionChangeRegisterTime = positionChangeRegisterTime;
	}
	public String getPositionChangeRemark() {
		return positionChangeRemark;
	}
	public void setPositionChangeRemark(String positionChangeRemark) {
		this.positionChangeRemark = positionChangeRemark;
	}
	public String getPositionChangeRname() {
		return positionChangeRname;
	}
	public void setPositionChangeRname(String positionChangeRname) {
		this.positionChangeRname = positionChangeRname;
	}
	public Date getPositionChangeTime() {
		return positionChangeTime;
	}
	public void setPositionChangeTime(Date positionChangeTime) {
		this.positionChangeTime = positionChangeTime;
	}
	public Integer getPositionChangeUserId() {
		return positionChangeUserId;
	}
	public void setPositionChangeUserId(Integer positionChangeUserId) {
		this.positionChangeUserId = positionChangeUserId;
	}
	public Resume getResume() {
		return resume;
	}
	public void setResume(Resume resume) {
		this.resume = resume;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public static long getSerialVersionUID() {
		return serialVersionUID;
	}
	public int getEmployeeBranchId() {
		return employeeBranchId;
	}
	public void setEmployeeBranchId(int employeeBranchId) {
		this.employeeBranchId = employeeBranchId;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public Integer getEmployeePositionId() {
		return employeePositionId;
	}
	public void setEmployeePositionId(Integer employeePositionId) {
		this.employeePositionId = employeePositionId;
	}
	public Integer getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}
	public String getPositionIssuanceChange() {
		return positionIssuanceChange;
	}
	public void setPositionIssuanceChange(String positionIssuanceChange) {
		this.positionIssuanceChange = positionIssuanceChange;
	}
	
}
