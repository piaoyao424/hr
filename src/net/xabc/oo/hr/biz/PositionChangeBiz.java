package net.xabc.oo.hr.biz;

import java.util.List;

import net.xabc.oo.hr.entity.Employee;
import net.xabc.oo.hr.entity.Positionchange;
import net.xabc.oo.hr.web.form.PositionChangeForm;

public interface PositionChangeBiz {

	public int updatePC(PositionChangeForm positionChangeForm);

	public int addPC(PositionChangeForm positionChangeForm);

	public List selectAllPC(int pageNum, int pageSize, int branchId,int status);

	public Employee selectEmployeeById(int employeeId);

	public int getTotalPage(int pageSize,int branchId) ;
	public Positionchange getEmployeeById(int positionChangId);

	public List selectEmployee(int pageNum, int pageSize, int branchId);
	
	public int select(int id);
	
	public int updateEmployeePositionId(int positionId,int employeeId);

	public List search(PositionChangeForm positionChangeForm,int branchId);

	public String getBranchAfterNmaeByPoinsitionId(
			int positionChangeAfterPositionId);

	public String getBranchBeforeNmaeByPoinsitionId(
			int positionChangeBeforePositionId);

	public String getPositionBeforeNmaeByPoinsitionId(
			int positionChangeBeforePositionId);

	public String getPositionAfterNmaeByPoinsitionId(
			int positionChangeBeforePositionId);
    public List getPositionChangeReport(int page,int pageSize);
	
	public int getPositionChangeReport(int pageSize);
}
