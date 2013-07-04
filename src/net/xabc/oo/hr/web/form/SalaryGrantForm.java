package net.xabc.oo.hr.web.form;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import net.xabc.oo.hr.entity.Salarystandard;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class SalaryGrantForm extends ActionForm {

	private static final long serialVersionUID = 1L;

	private Integer sgId;

	private Salarystandard salaryStandard;

	private Integer sgTotalPerson;

	private Integer sgSsId;

	private Double sgFactMoney;

	private String sgRegister;

	private Date sgRegisterTime;

	private Date sgChecker;

	private Date sgCheckTime;
	
	private Double sgDeductMoney;
	
	private String sgCommit;

	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request){
		return null;
	}

	public void reset(ActionMapping mapping, HttpServletRequest request) {

	}

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public Salarystandard getSalaryStandard() {
		return salaryStandard;
	}

	public void setSalaryStandard(Salarystandard salaryStandard) {
		this.salaryStandard = salaryStandard;
	}

	public Date getSgChecker() {
		return sgChecker;
	}

	public void setSgChecker(Date sgChecker) {
		this.sgChecker = sgChecker;
	}

	public Date getSgCheckTime() {
		return sgCheckTime;
	}

	public void setSgCheckTime(Date sgCheckTime) {
		this.sgCheckTime = sgCheckTime;
	}

	public Double getSgFactMoney() {
		return sgFactMoney;
	}

	public void setSgFactMoney(Double sgFactMoney) {
		this.sgFactMoney = sgFactMoney;
	}

	public Integer getSgId() {
		return sgId;
	}

	public void setSgId(Integer sgId) {
		this.sgId = sgId;
	}

	public String getSgRegister() {
		return sgRegister;
	}

	public void setSgRegister(String sgRegister) {
		this.sgRegister = sgRegister;
	}

	public Date getSgRegisterTime() {
		return sgRegisterTime;
	}

	public void setSgRegisterTime(Date sgRegisterTime) {
		this.sgRegisterTime = sgRegisterTime;
	}

	public Integer getSgSsId() {
		return sgSsId;
	}

	public void setSgSsId(Integer sgSsId) {
		this.sgSsId = sgSsId;
	}

	public Integer getSgTotalPerson() {
		return sgTotalPerson;
	}

	public void setSgTotalPerson(Integer sgTotalPerson) {
		this.sgTotalPerson = sgTotalPerson;
	}

	public String getSgCommit() {
		return sgCommit;
	}

	public void setSgCommit(String sgCommit) {
		this.sgCommit = sgCommit;
	}

	public Double getSgDeductMoney() {
		return sgDeductMoney;
	}

	public void setSgDeductMoney(Double sgDeductMoney) {
		this.sgDeductMoney = sgDeductMoney;
	}
}
