package net.xabc.oo.hr.web.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;

public class RightsForm extends Action{
	
	private String rightsCode;

	private String rightsParentCode;

	private String rightsType;

	private String rightsName;

	private String rightsUrl;
	
	public ActionErrors validate(ActionMapping mapping,HttpServletRequest request){
		return null;
		
	}
	public void reset(ActionMapping mapping,HttpServletRequest request){
		
	}
	public String getRightsCode() {
		return rightsCode;
	}
	public void setRightsCode(String rightsCode) {
		this.rightsCode = rightsCode;
	}
	public String getRightsName() {
		return rightsName;
	}
	public void setRightsName(String rightsName) {
		this.rightsName = rightsName;
	}
	public String getRightsParentCode() {
		return rightsParentCode;
	}
	public void setRightsParentCode(String rightsParentCode) {
		this.rightsParentCode = rightsParentCode;
	}
	public String getRightsType() {
		return rightsType;
	}
	public void setRightsType(String rightsType) {
		this.rightsType = rightsType;
	}
	public String getRightsUrl() {
		return rightsUrl;
	}
	public void setRightsUrl(String rightsUrl) {
		this.rightsUrl = rightsUrl;
	}

}
