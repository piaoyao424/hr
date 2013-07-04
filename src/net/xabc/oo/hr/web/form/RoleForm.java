package net.xabc.oo.hr.web.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class RoleForm extends ActionForm{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer roleId;

	private String roleName;

	private String roleRemark;
	
	public ActionErrors validate(ActionMapping mapping,HttpServletRequest request){
		return null;
		
	}
	public void reset(ActionMapping mapping,HttpServletRequest request){
		
	}
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getRoleRemark() {
		return roleRemark;
	}
	public void setRoleRemark(String roleRemark) {
		this.roleRemark = roleRemark;
	}

}
