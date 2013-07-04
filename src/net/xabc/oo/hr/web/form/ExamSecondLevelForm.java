
package net.xabc.oo.hr.web.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;


public class ExamSecondLevelForm extends ActionForm {

	private static final long serialVersionUID = 1L;
	
	
	
	private Integer eslId;

	private String eslSecondName;

	private Integer eslDataDetailId;
	
	

	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		return null;
	}


	public void reset(ActionMapping mapping, HttpServletRequest request) {
	}

	public Integer getEslDataDetailId() {
		return eslDataDetailId;
	}


	public void setEslDataDetailId(Integer eslDataDetailId) {
		this.eslDataDetailId = eslDataDetailId;
	}


	public Integer getEslId() {
		return eslId;
	}


	public void setEslId(Integer eslId) {
		this.eslId = eslId;
	}


	public String getEslSecondName() {
		return eslSecondName;
	}


	public void setEslSecondName(String eslSecondName) {
		this.eslSecondName = eslSecondName;
	}
}