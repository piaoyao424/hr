package net.xabc.oo.hr.web.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class RoleRightsForm extends ActionForm {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer roleRightsId;

	private String rightsId;

	private int roleId;

	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		return null;

	}

	public void reset(ActionMapping mapping, HttpServletRequest request) {

	}
	public String getRightsId() {
		return rightsId;
	}

	public void setRightsId(String rightsId) {
		this.rightsId = rightsId;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public Integer getRoleRightsId() {
		return roleRightsId;
	}

	public void setRoleRightsId(Integer roleRightsId) {
		this.roleRightsId = roleRightsId;
	}

}
