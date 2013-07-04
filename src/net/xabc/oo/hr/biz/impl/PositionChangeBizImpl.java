package net.xabc.oo.hr.biz.impl;
import java.util.List;

import net.xabc.oo.hr.biz.PositionChangeBiz;
import net.xabc.oo.hr.dao.PositionChangeDao;
import net.xabc.oo.hr.entity.Employee;
import net.xabc.oo.hr.entity.Positionchange;
import net.xabc.oo.hr.utils.date.DateFormat;
import net.xabc.oo.hr.web.form.PositionChangeForm;

public class PositionChangeBizImpl implements PositionChangeBiz {

	private PositionChangeDao positionChangeDao;

	public PositionChangeDao getPositionChangeDao() {
		return positionChangeDao;
	}

	public void setPositionChangeDao(PositionChangeDao positionChangeDao) {
		this.positionChangeDao = positionChangeDao;
	}

	public int addPC(PositionChangeForm positionChangeForm) {
		Positionchange positionChange = new Positionchange();
		Employee employee = new Employee();
		employee.setEmployeeId(positionChangeForm.getEmployeeId());
		positionChange.setEmployee(employee);
		positionChange.setPositionChangeRname(positionChangeForm
				.getPositionChangeRname());
		positionChange.setPositionChangeId(positionChangeForm
				.getPositionChangeBeforePositionId());
		positionChange.setPositionAfterPostionId(positionChangeForm
				.getEmployeePositionId());
		positionChange.setPositionChangeReason(positionChangeForm
				.getPositionChangeReason());
		positionChange.setPositionChangeRemark(positionChangeForm
				.getPositionChangeRemark());
		positionChange.setPositionChangeRegister(positionChangeForm
				.getPositionChangeRegister());
		positionChange.setPositionChangeRegisterTime(DateFormat
				.parseDate(DateFormat.getDate()));
		positionChange.setPositionChangeCheckStatus(0);
		

		return positionChangeDao.addPC(positionChange);
	}

	public int delete(int positionChangeId) {
		return positionChangeDao.delete(positionChangeId);
	}

	public List selectAllPC(int pageNum, int pageSize, int branchId, int status) {
		return positionChangeDao.selectAllPC(pageNum, pageSize, branchId,status);
	}

	public int updatePC(PositionChangeForm positionChangeForm) {
		Positionchange positionChange = new Positionchange();
		positionChange.setPositionIssuanceChange(positionChangeForm.getPositionIssuanceChange());
		positionChange.setPositionChangeChecker(positionChangeForm.getPositionChangeChecker());
		positionChange.setPositionChangeCheckTime(DateFormat.parseDate(DateFormat.getDate()));
		positionChange.setPositionChangeCheckStatus(1);
		positionChange.setPositionChangeId(positionChangeForm.getPositionChangeId());
		return positionChangeDao.updatePC(positionChange);
	}

	public Positionchange getEmployeeById(int positionChangId) {
		return positionChangeDao.getEmployeeById(positionChangId);
	}

	public int getTotalPage(int pageSize,int branchId){
		return positionChangeDao.getTotalPage(pageSize, branchId);
	}

	public List selectEmployee(int pageNum, int pageSize, int branchId) {
		return positionChangeDao.selectEmployee(pageNum, pageSize, branchId);
	}

	public List search(PositionChangeForm positionChangeForm,int branchId) {
		Employee employee = new Employee();
		if (positionChangeForm.getEmployeeName() != null) {
			employee.setEmployeeName(positionChangeForm.getEmployeeName());
		}
		return positionChangeDao.search(employee,branchId);
	}

	public Employee selectEmployeeById(int employeeId) {

		return positionChangeDao.selectEmployeeById(employeeId);
	}

	public String getBranchAfterNmaeByPoinsitionId(
			int positionChangeAfterPositionId) {
		return positionChangeDao.getBranchAfterNmaeByPoinsitionId(positionChangeAfterPositionId);
	}

	public String getBranchBeforeNmaeByPoinsitionId(
			int positionChangeBeforePositionId) {
		return positionChangeDao.getBranchBeforeNmaeByPoinsitionId(positionChangeBeforePositionId);
	}

	public String getPositionAfterNmaeByPoinsitionId(
			int positionChangeAfterPositionId) {
		return positionChangeDao.getPositionAfterNmaeByPoinsitionId(positionChangeAfterPositionId);
	}

	public String getPositionBeforeNmaeByPoinsitionId(
			int positionChangeBeforePositionId) {
		return positionChangeDao.getPositionBeforeNmaeByPoinsitionId(positionChangeBeforePositionId);
	}

	public int select(int id) {
		
		return positionChangeDao.select(id);
	}

	public int updateEmployeePositionId(int positionId, int employeeId) {
	
		return  positionChangeDao.updateEmployeePositionId(positionId, employeeId);
	}

	public List getPositionChangeReport(int page, int pageSize) {
		return positionChangeDao.getPositionChangeReport(page, pageSize);
	}

	public int getPositionChangeReport(int pageSize) {
		return positionChangeDao.getPositionChangeReport(pageSize);
	}


}
