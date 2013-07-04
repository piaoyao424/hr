package net.xabc.oo.hr.web.form;


import javax.servlet.http.HttpServletRequest;


import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;


public class ExamForm extends ActionForm {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer subId;

	private int examSecondLevelId;
	
	private int branchId;
	
	private String subContent;

	private String subAnswer1;

	private String subAnswer2;

	private String subAnswer3;

	private String subAnswer4;
	
	private String subCorrectAnswer;

	private String subRegister;

	private String subRegisterTime;

	private String subChanger;

	private String subChangeTime;
	
	public ActionErrors validate(ActionMapping mapping,HttpServletRequest request){
		return null;
		
	}
	public void reset(ActionMapping mapping,HttpServletRequest request){
		
	}

	public int getExamSecondLevelId() {
		return examSecondLevelId;
	}

	public void setExamSecondLevelId(int examSecondLevelId) {
		this.examSecondLevelId = examSecondLevelId;
	}

	public String getSubAnswer1() {
		return subAnswer1;
	}

	public void setSubAnswer1(String subAnswer1) {
		this.subAnswer1 = subAnswer1;
	}

	public String getSubAnswer2() {
		return subAnswer2;
	}

	public void setSubAnswer2(String subAnswer2) {
		this.subAnswer2 = subAnswer2;
	}

	public String getSubAnswer3() {
		return subAnswer3;
	}

	public void setSubAnswer3(String subAnswer3) {
		this.subAnswer3 = subAnswer3;
	}

	public String getSubAnswer4() {
		return subAnswer4;
	}

	public void setSubAnswer4(String subAnswer4) {
		this.subAnswer4 = subAnswer4;
	}

	public String getSubChanger() {
		return subChanger;
	}

	public void setSubChanger(String subChanger) {
		this.subChanger = subChanger;
	}

	public String getSubChangeTime() {
		return subChangeTime;
	}

	public void setSubChangeTime(String subChangeTime) {
		this.subChangeTime = subChangeTime;
	}

	public String getSubContent() {
		return subContent;
	}

	public void setSubContent(String subContent) {
		this.subContent = subContent;
	}

	public String getSubCorrectAnswer() {
		return subCorrectAnswer;
	}

	public void setSubCorrectAnswer(String subCorrectAnswer) {
		this.subCorrectAnswer = subCorrectAnswer;
	}

	public Integer getSubId() {
		return subId;
	}

	public void setSubId(Integer subId) {
		this.subId = subId;
	}

	public String getSubRegister() {
		return subRegister;
	}

	public void setSubRegister(String subRegister) {
		this.subRegister = subRegister;
	}

	public String getSubRegisterTime() {
		return subRegisterTime;
	}

	public void setSubRegisterTime(String subRegisterTime) {
		this.subRegisterTime = subRegisterTime;
	}
	public int getBranchId() {
		return branchId;
	}
	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}


}
