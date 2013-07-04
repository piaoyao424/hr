package net.xabc.oo.hr.web.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class ExamFistForm extends ActionForm  {
	private static final long serialVersionUID = 1L;

	private String dataDetailName;
	
	private Integer dataDetailId;
	
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		return null;

	}

	public void reset(ActionMapping mapping, HttpServletRequest request) {

	}

	public String getDataDetailName() {
		return dataDetailName;
	}

	public void setDataDetailName(String dataDetailName) {
		this.dataDetailName = dataDetailName;
	}

	public Integer getDataDetailId() {
		return dataDetailId;
	}

	public void setDataDetailId(Integer dataDetailId) {
		this.dataDetailId = dataDetailId;
	}
}
