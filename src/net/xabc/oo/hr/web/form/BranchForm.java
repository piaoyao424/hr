package net.xabc.oo.hr.web.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class BranchForm extends ActionForm{
	
	private static final long serialVersionUID = 1L;
	
	private Integer branchId;

	private String branchName;
	
	
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		return null;

	}

	public void reset(ActionMapping mapping, HttpServletRequest request) {
         
	}

	public Integer getBranchId() {
		return branchId;
	}

	public void setBranchId(Integer branchId) {
		this.branchId = branchId;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

}
