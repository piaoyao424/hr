package net.xabc.oo.hr.dao;

import java.util.List;

import net.xabc.oo.hr.entity.Salarystandard;


public interface SalaryStandardDao {

	public int addSstand(Salarystandard salaryStandard);
	
	public int updateStandard(Salarystandard saryStandard);

	public List selectAll(int page,int pageSize);
	
	public int getSelectAllPage(int pageSize,int status);

	public int delete(Salarystandard salaryStandard);	
	
	public List selectStandByssCheckStatus(int ssCheckStatus,int page,int pageSize);
	
	public boolean checkPositionIdExists(int positionId);
	
	public Salarystandard getSalaryStandardBySsId(int ssId);
	
	public int getSsIdByPositionId(int positionId);
	
	public int updateSalaryStandard(Salarystandard salaryStandard);
	

	
	
	

	
	
	
}
