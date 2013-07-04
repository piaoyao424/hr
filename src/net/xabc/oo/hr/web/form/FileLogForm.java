package net.xabc.oo.hr.web.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;

public class FileLogForm extends Action {
	private Integer fileLogId;

	private String fileLogRemark;

	private String fileLogType;

	private String fielLogTableName;

	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		return null;

	}

	public void reset(ActionMapping mapping, HttpServletRequest request) {

	}

	public String getFielLogTableName() {
		return fielLogTableName;
	}

	public void setFielLogTableName(String fielLogTableName) {
		this.fielLogTableName = fielLogTableName;
	}

	public Integer getFileLogId() {
		return fileLogId;
	}

	public void setFileLogId(Integer fileLogId) {
		this.fileLogId = fileLogId;
	}

	public String getFileLogRemark() {
		return fileLogRemark;
	}

	public void setFileLogRemark(String fileLogRemark) {
		this.fileLogRemark = fileLogRemark;
	}

	public String getFileLogType() {
		return fileLogType;
	}

	public void setFileLogType(String fileLogType) {
		this.fileLogType = fileLogType;
	}

}
