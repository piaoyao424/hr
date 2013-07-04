package net.xabc.oo.hr.dao;

import java.util.List;

import net.xabc.oo.hr.entity.Employee;
import net.xabc.oo.hr.entity.Positionchange;

public interface PositionChangeDao {

	public int updatePC(Positionchange positionChange);

	public int addPC(Positionchange positionChange);

	public List selectAllPC(int pageNum, int pageSize, int branchId,int status);

	public int delete(int positionChangeId);

	public int getTotalPage(int pageSize,int branchId) ;

	public Positionchange getEmployeeById(int positionChangId);

	public List selectEmployee(int pageNum, int pageSize, int branchId);

	public List search(Employee employee,int branchId);
	
	public int select(int id);
	
	
	public int updateEmployeePositionId(int positionId,int employeeId);

	public Employee selectEmployeeById(int employeeId);

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
