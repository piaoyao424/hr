package net.xabc.oo.hr.biz;

import java.util.List;

import net.xabc.oo.hr.entity.Salarygrant;
import net.xabc.oo.hr.web.form.SalaryGrantForm;

public interface SalaryGrantBiz {
	public int upPass(SalaryGrantForm salaryGrantForm);

	public int addUser(SalaryGrantForm salaryGrantForm);

	public List selectAll(int page,int pageSize);
	
//	public int getSelectAllPage(int pageSize,int status);

	public int delete(int sgId);
	
	public Salarygrant getSalaryGrantById(int sgId);
	
	public int updateSalaryAuctionInfo(SalaryGrantForm salaryGrantForm);
	
	public boolean checkSalaryStardIdExists(int ssId);
	
	public int deleteSalaryGrantBySsId(int ssId);
	
}
