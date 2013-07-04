package net.xabc.oo.hr.web.form;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class PositionIssuanceForm extends ActionForm{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer positionIssuanceId;
	
	private Integer branchId;

	private Integer positionIssuancePositionId;

	private Integer positionIssuanceRequireNum;

	private String positionIssuanceEndTime;

	private String positionIssuanceRegister;

	private String positionIssuanceRegisterTime;

	private String positionIssuanceChange;

	private String positionIssuanceChangeTime;

	private String positionIssuanceDescription;

	private String positionIssuanceRequire;

	private Integer positionIssuancePostionId;
	

	public ActionErrors validate(ActionMapping mapping,HttpServletRequest request){
		return null;
		
	}
	public void reset(ActionMapping mapping,HttpServletRequest request){
		
	}
	public String getPositionIssuanceChange() {
		return positionIssuanceChange;
	}
	public void setPositionIssuanceChange(String positionIssuanceChange) {
		this.positionIssuanceChange = positionIssuanceChange;
	}
	public String getPositionIssuanceChangeTime() {
		return positionIssuanceChangeTime;
	}
	public void setPositionIssuanceChangeTime(String positionIssuanceChangeTime) {
		this.positionIssuanceChangeTime = positionIssuanceChangeTime;
	}
	public String getPositionIssuanceDescription() {
		return positionIssuanceDescription;
	}
	public void setPositionIssuanceDescription(String positionIssuanceDescription) {
		this.positionIssuanceDescription = positionIssuanceDescription;
	}
	public String getPositionIssuanceEndTime() {
		return positionIssuanceEndTime;
	}
	public void setPositionIssuanceEndTime(String positionIssuanceEndTime) {
		this.positionIssuanceEndTime = positionIssuanceEndTime;
	}
	public Integer getPositionIssuanceId() {
		return positionIssuanceId;
	}
	public void setPositionIssuanceId(Integer positionIssuanceId) {
		this.positionIssuanceId = positionIssuanceId;
	}
	public Integer getPositionIssuancePositionId() {
		return positionIssuancePositionId;
	}
	public void setPositionIssuancePositionId(Integer positionIssuancePositionId) {
		this.positionIssuancePositionId = positionIssuancePositionId;
	}
	public Integer getPositionIssuancePostionId() {
		return positionIssuancePostionId;
	}
	public void setPositionIssuancePostionId(Integer positionIssuancePostionId) {
		this.positionIssuancePostionId = positionIssuancePostionId;
	}
	public String getPositionIssuanceRegister() {
		return positionIssuanceRegister;
	}
	public void setPositionIssuanceRegister(String positionIssuanceRegister) {
		this.positionIssuanceRegister = positionIssuanceRegister;
	}
	public String getPositionIssuanceRegisterTime() {
		return positionIssuanceRegisterTime;
	}
	public void setPositionIssuanceRegisterTime(String positionIssuanceRegisterTime) {
		this.positionIssuanceRegisterTime = positionIssuanceRegisterTime;
	}
	public String getPositionIssuanceRequire() {
		return positionIssuanceRequire;
	}
	public void setPositionIssuanceRequire(String positionIssuanceRequire) {
		this.positionIssuanceRequire = positionIssuanceRequire;
	}
	public Integer getPositionIssuanceRequireNum() {
		return positionIssuanceRequireNum;
	}
	public void setPositionIssuanceRequireNum(Integer positionIssuanceRequireNum) {
		this.positionIssuanceRequireNum = positionIssuanceRequireNum;
	}
	public Integer getBranchId() {
		return branchId;
	}
	public void setBranchId(Integer branchId) {
		this.branchId = branchId;
	}
}
