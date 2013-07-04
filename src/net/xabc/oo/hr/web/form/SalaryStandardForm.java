package net.xabc.oo.hr.web.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class SalaryStandardForm extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer salaryItemId;

	private Integer salaryItemPositionId;

	private Integer salaryItemItemId;
	
	private Long basicmoney;
	private Long contact;
	private Long floatWage;
	private Long trafficSubsidy;
	private Long lunchSubsidy;
	private String register;
	private String registerTime;
	private Long ssSalary;
	private Integer employeeBranchId;
	private Integer employeePositionId;
    private Integer salaryStandardId;
    private String ssChanger;
    private String ssChangeTime;
    private String ssComment;
	private String ssChecker;
    
	public ActionErrors validate(ActionMapping mapping,HttpServletRequest request){
		return null;
	}
	public void reset(ActionMapping mapping,HttpServletRequest request){
		
	}
	public Integer getSalaryItemId() {
		return salaryItemId;
	}
	public void setSalaryItemId(Integer salaryItemId) {
		this.salaryItemId = salaryItemId;
	}
	public Integer getSalaryItemItemId() {
		return salaryItemItemId;
	}
	public void setSalaryItemItemId(Integer salaryItemItemId) {
		this.salaryItemItemId = salaryItemItemId;
	}
	
	public Integer getSalaryItemPositionId() {
		return salaryItemPositionId;
	}
	public void setSalaryItemPositionId(Integer salaryItemPositionId) {
		this.salaryItemPositionId = salaryItemPositionId;
	}
	public Long getBasicmoney() {
		return basicmoney;
	}
	public void setBasicmoney(Long basicmoney) {
		this.basicmoney = basicmoney;
	}
	public Long getFloatWage() {
		return floatWage;
	}
	public void setFloatWage(Long floatWage) {
		this.floatWage = floatWage;
	}
	public Long getLunchSubsidy() {
		return lunchSubsidy;
	}
	public void setLunchSubsidy(Long lunchSubsidy) {
		this.lunchSubsidy = lunchSubsidy;
	}
	public Long getTrafficSubsidy() {
		return trafficSubsidy;
	}
	public void setTrafficSubsidy(Long trafficSubsidy) {
		this.trafficSubsidy = trafficSubsidy;
	}
	public Long getContact() {
		return contact;
	}
	public void setContact(Long contact) {
		this.contact = contact;
	}
	public String getRegister() {
		return register;
	}
	public void setRegister(String register) {
		this.register = register;
	}
	public String getRegisterTime() {
		return registerTime;
	}
	public void setRegisterTime(String registerTime) {
		this.registerTime = registerTime;
	}
	public Long getSsSalary() {
		return ssSalary;
	}
	public void setSsSalary(Long ssSalary) {
		this.ssSalary = ssSalary;
	}
	public Integer getEmployeeBranchId() {
		return employeeBranchId;
	}
	public void setEmployeeBranchId(Integer employeeBranchId) {
		this.employeeBranchId = employeeBranchId;
	}
	public Integer getEmployeePositionId() {
		return employeePositionId;
	}
	public void setEmployeePositionId(Integer employeePositionId) {
		this.employeePositionId = employeePositionId;
	}
	public Integer getSalaryStandardId() {
		return salaryStandardId;
	}
	public void setSalaryStandardId(Integer salaryStandardId) {
		this.salaryStandardId = salaryStandardId;
	}
	public String getSsChanger() {
		return ssChanger;
	}
	public void setSsChanger(String ssChanger) {
		this.ssChanger = ssChanger;
	}
	public String getSsChangeTime() {
		return ssChangeTime;
	}
	public void setSsChangeTime(String ssChangeTime) {
		this.ssChangeTime = ssChangeTime;
	}
	public String getSsComment() {
		return ssComment;
	}
	public void setSsComment(String ssComment) {
		this.ssComment = ssComment;
	}
	public static long getSerialVersionUID() {
		return serialVersionUID;
	}
	public String getSsChecker() {
		return ssChecker;
	}
	public void setSsChecker(String ssChecker) {
		this.ssChecker = ssChecker;
	}
}
