package net.xabc.oo.hr.biz.impl;
import java.util.List;

import javax.swing.text.Position;

import net.xabc.oo.hr.biz.SalaryStandardBiz;
import net.xabc.oo.hr.dao.SalaryStandardDao;
import net.xabc.oo.hr.entity.Postion;
import net.xabc.oo.hr.entity.Salarystandard;
import net.xabc.oo.hr.utils.date.DateFormat;
import net.xabc.oo.hr.web.form.SalaryStandardForm;

public class SalaryStandardBizImpl implements SalaryStandardBiz{
	private SalaryStandardDao salaryStandardDao;



	public int addSstand(SalaryStandardForm salaryStandardForm) {
		Salarystandard salaryStandard = new Salarystandard();
		salaryStandard.setBasicMoney(salaryStandardForm.getBasicmoney());
		salaryStandard.setContact(salaryStandardForm.getContact());
		salaryStandard.setFloatWage(salaryStandardForm.getFloatWage());
		salaryStandard.setTrafficSubsidy(salaryStandardForm.getTrafficSubsidy());
		salaryStandard.setLunchSubsidy(salaryStandardForm.getLunchSubsidy());
		salaryStandard.setSsDesigner(salaryStandardForm.getRegister());
		salaryStandard.setSsRegister(salaryStandardForm.getRegister());
		salaryStandard.setSsRegisterTime(DateFormat.parseDate(DateFormat.getDate()));
		salaryStandard.setSsCheckStatus(0);
		Postion position=new Postion();
		position.setPositionId(salaryStandardForm.getEmployeePositionId());
		double salary=salaryStandardForm.getBasicmoney()+salaryStandardForm.getContact()+salaryStandardForm.getFloatWage()+salaryStandardForm.getTrafficSubsidy()+salaryStandardForm.getLunchSubsidy();
		salaryStandard.setSsSalary(salaryStandardForm.getSsSalary());
		salaryStandard.setPostion(position);
    	return salaryStandardDao.addSstand(salaryStandard);
	
	
	}


	public List selectAll(int page, int pageSize) {
		
		return salaryStandardDao.selectAll(page, pageSize);
	}
	
	public SalaryStandardDao getSalaryStandardDao() {
		return salaryStandardDao;
	}

	public void setSalaryStandardDao(SalaryStandardDao salaryStandardDao) {
		this.salaryStandardDao = salaryStandardDao;
	}


	public int delete(Salarystandard salaryStandard) {
		return salaryStandardDao.delete(salaryStandard);
	}


	public List selectStandByssCheckStatus(int ssCheckStatus, int page, int pageSize) {
		return salaryStandardDao.selectStandByssCheckStatus(ssCheckStatus, page, pageSize);
	}


	public int getSelectAllPage(int pageSize, int status){
		return salaryStandardDao.getSelectAllPage(pageSize, status);
	}

    public int updateStandard(SalaryStandardForm salaryStandardForm){
    	Salarystandard salaryStandard=new Salarystandard();
		salaryStandard.setSsId(salaryStandardForm.getSalaryStandardId());
		salaryStandard.setBasicMoney(salaryStandardForm.getBasicmoney());
		salaryStandard.setContact(salaryStandardForm.getContact());
		salaryStandard.setFloatWage(salaryStandardForm.getFloatWage());
		salaryStandard.setTrafficSubsidy(salaryStandardForm.getTrafficSubsidy());
		salaryStandard.setLunchSubsidy(salaryStandardForm.getLunchSubsidy());
		salaryStandard.setSsChange(salaryStandardForm.getRegister());
		salaryStandard.setSsChangeTime(DateFormat.parseDate(DateFormat.getDate()));
		salaryStandard.setSsCheckStatus(0);
		Postion position=new Postion();
		position.setPositionId(salaryStandardForm.getEmployeePositionId());
		double salary=salaryStandardForm.getBasicmoney()+salaryStandardForm.getContact()+salaryStandardForm.getFloatWage()+salaryStandardForm.getTrafficSubsidy()+salaryStandardForm.getLunchSubsidy();
		salaryStandard.setSsSalary(salaryStandardForm.getSsSalary());
		salaryStandard.setPostion(position);
		return salaryStandardDao.updateStandard(salaryStandard);
    }
	
	public int updateStandardRe(SalaryStandardForm salaryStandardForm) {
		Salarystandard salaryStandard=new Salarystandard();
		salaryStandard.setSsId(salaryStandardForm.getSalaryStandardId());
		salaryStandard.setBasicMoney(salaryStandardForm.getBasicmoney());
		salaryStandard.setContact(salaryStandardForm.getContact());
		salaryStandard.setFloatWage(salaryStandardForm.getFloatWage());
		salaryStandard.setTrafficSubsidy(salaryStandardForm.getTrafficSubsidy());
		salaryStandard.setLunchSubsidy(salaryStandardForm.getLunchSubsidy());
		salaryStandard.setSsDesigner(salaryStandardForm.getRegister());
		salaryStandard.setSsRegister(salaryStandardForm.getRegister());
		salaryStandard.setSsRegisterTime(DateFormat.parseDate(DateFormat.getDate()));
		salaryStandard.setSsChange(salaryStandardForm.getSsChanger());
		salaryStandard.setSsChangeTime(DateFormat.parseDate(DateFormat.getDate()));
		salaryStandard.setSsCheckStatus(0);
		Postion position=new Postion();
		position.setPositionId(salaryStandardForm.getEmployeePositionId());
		double salary=salaryStandardForm.getBasicmoney()+salaryStandardForm.getContact()+salaryStandardForm.getFloatWage()+salaryStandardForm.getTrafficSubsidy()+salaryStandardForm.getLunchSubsidy();
		salaryStandard.setSsSalary(salaryStandardForm.getSsSalary());
		salaryStandard.setPostion(position);
		return salaryStandardDao.updateStandard(salaryStandard);
	}


	public boolean checkPositionIdExists(int positionId) {
		return salaryStandardDao.checkPositionIdExists(positionId);
	}


	public Salarystandard getSalaryStandardBySsId(int ssId) {
	    return salaryStandardDao.getSalaryStandardBySsId(ssId);
	}


	public int getSsIdByPositionId(int positionId) {
		return salaryStandardDao.getSsIdByPositionId(positionId);
	}


	public int updateSalaryStandard(SalaryStandardForm salaryStandardForm) {
		Salarystandard salaryStandard=new Salarystandard();
		salaryStandard.setSsChecker(salaryStandardForm.getSsChecker());
		salaryStandard.setSsCheckerTime(DateFormat.parseDate(DateFormat.getDate()));
		salaryStandard.setSsId(salaryStandardForm.getSalaryStandardId());
		return salaryStandardDao.updateSalaryStandard(salaryStandard);
	}
}
