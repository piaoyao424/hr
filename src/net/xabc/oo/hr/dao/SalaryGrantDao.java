package net.xabc.oo.hr.dao;

import java.util.List;

import net.xabc.oo.hr.entity.Salarygrant;



public interface SalaryGrantDao {

	public int upPass(Salarygrant salaryGrant);

	public int addUser(Salarygrant salaryGrant);

	public List selectAll(int page,int pageSize);
	
//	public int getSelectAllPage(int pageSize);
	
	public Salarygrant getSalaryGrantById(int sgId);

	public int delete(int sgId);
	
	public int updateSalaryAcdtingInfo(Salarygrant salaryGrant);
	
	
	public boolean checkSalaryStardIdExists(int ssId);
	
	public int deleteSalaryGrantBySsId(int ssId);
	
//	public int getSarlar
}
