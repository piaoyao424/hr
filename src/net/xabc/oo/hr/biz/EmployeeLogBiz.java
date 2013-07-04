package net.xabc.oo.hr.biz;

import java.util.List;

import net.xabc.oo.hr.entity.Employeelog;
import net.xabc.oo.hr.web.form.DossierForm;

public interface EmployeeLogBiz {
	public int addEmployeeLog(DossierForm dossierForm);

	public int deleteEmployeeLog(int id);

	public int updateEmployeeLog(DossierForm dossierForm);

	public List getAllEmployeeLog(int page,int pageSize);
	
	public int getTotalPage(int pageSize);

	public Employeelog getEmployeeLogById(int id);
	
	public List search(DossierForm dossierForm);
	
	public int updateCheck(Employeelog log);
}
