package net.xabc.oo.hr.biz;

import java.util.List;

import net.xabc.oo.hr.entity.Salarystandard;
import net.xabc.oo.hr.web.form.SalaryStandardForm;

public interface SalaryStandardBiz {

	public int addSstand(SalaryStandardForm salaryStandardForm);

	public List selectAll(int page, int pageSize);

	public int getSelectAllPage(int pageSize,int status);

	public int delete(Salarystandard salaryStandard);

	public List selectStandByssCheckStatus(int ssCheckStatus, int page,
			int pageSize);
	
	public int updateStandardRe(SalaryStandardForm salaryStandardForm);
	
	public int updateStandard(SalaryStandardForm salaryStandardForm);
	
    public boolean checkPositionIdExists(int positionId);
	
	public Salarystandard getSalaryStandardBySsId(int ssId);
	
	public int getSsIdByPositionId(int positionId);
	public int updateSalaryStandard(SalaryStandardForm salaryStandardForm);
}
