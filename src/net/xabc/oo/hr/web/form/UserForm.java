package net.xabc.oo.hr.web.form;

import javax.servlet.http.HttpServletRequest;
import net.xabc.oo.hr.entity.Employee;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class UserForm extends ActionForm {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer userId;
	
	private String userPassword;

	private String userName;
	
	private Integer employeeBranchId;
	private Integer roleId;
	private Employee employee;
	private Integer userState=1;
	private String newPassword;
	
	private Integer employeePositionId;
	
	public Integer getEmployeePositionId() {
		return employeePositionId;
	}
	public void setEmployeePositionId(Integer employeePositionId) {
		this.employeePositionId = employeePositionId;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	public ActionErrors validate(ActionMapping mapping,HttpServletRequest request){
		return null;
		
	}
	public void reset(ActionMapping mapping,HttpServletRequest request){
		
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public Integer getEmployeeBranchId() {
		return employeeBranchId;
	}
	public void setEmployeeBranchId(Integer employeeBranchId) {
		this.employeeBranchId = employeeBranchId;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	public Integer getUserState() {
		return userState;
	}
	public void setUserState(Integer userState) {
		this.userState = userState;
	}
}
