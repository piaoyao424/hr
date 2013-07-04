package net.xabc.oo.hr.web.form;

import javax.servlet.http.HttpServletRequest;

import net.xabc.oo.hr.entity.Branch;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class PositionForm extends ActionForm {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer positionId;

	private Integer branchId;

	private String positionName;

	public ActionErrors validate(ActionMapping mapping,HttpServletRequest request){
		return null;
		
	}
	public void reset(ActionMapping mapping,HttpServletRequest request){
		
	}

	public Integer getPositionId() {
		return positionId;
	}
	public void setPositionId(Integer positionId) {
		this.positionId = positionId;
	}
	public String getPositionName() {
		return positionName;
	}
	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}
	public static long getSerialVersionUID() {
		return serialVersionUID;
	}
	public Integer getBranchId() {
		return branchId;
	}
	public void setBranchId(Integer branchId) {
		this.branchId = branchId;
	}
}
