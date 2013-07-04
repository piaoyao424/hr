package net.xabc.oo.hr.entity;

/**
 * FileLog generated by MyEclipse Persistence Tools
 */

public class FileLog implements java.io.Serializable {

	// Fields

	private Integer fileLogId;

	private String fileLogRemark;

	private String fileLogType;

	private String fileLogTableName;

	// Constructors

	/** default constructor */
	public FileLog() {
	}

	/** full constructor */
	public FileLog(String fileLogRemark, String fileLogType,
			String fileLogTableName) {
		this.fileLogRemark = fileLogRemark;
		this.fileLogType = fileLogType;
		this.fileLogTableName = fileLogTableName;
	}

	// Property accessors

	public Integer getFileLogId() {
		return this.fileLogId;
	}

	public void setFileLogId(Integer fileLogId) {
		this.fileLogId = fileLogId;
	}

	public String getFileLogRemark() {
		return this.fileLogRemark;
	}

	public void setFileLogRemark(String fileLogRemark) {
		this.fileLogRemark = fileLogRemark;
	}

	public String getFileLogType() {
		return this.fileLogType;
	}

	public void setFileLogType(String fileLogType) {
		this.fileLogType = fileLogType;
	}

	public String getFileLogTableName() {
		return this.fileLogTableName;
	}

	public void setFileLogTableName(String fileLogTableName) {
		this.fileLogTableName = fileLogTableName;
	}

}