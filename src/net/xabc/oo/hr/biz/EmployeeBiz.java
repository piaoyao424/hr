package net.xabc.oo.hr.biz;
import java.util.List;

import net.xabc.oo.hr.entity.Employee;
import net.xabc.oo.hr.entity.Employeelog;
import net.xabc.oo.hr.web.form.DossierForm;

public interface EmployeeBiz {

	public int addEmployee(DossierForm dossierForm);
	public int deleteEmployee(int employeeId);
	public int updateEmployee(DossierForm dossierForm);
	/**
	 * 档案列表的分页
	 */
	public List selectEmployee(int pageNum,int pageSize);
	/**
	 * 获取档案列表的总页数
	 */
	public int getTotalPage(int pageSize);
	public Employee getEmployeeById(int employeeId);
	public List search(DossierForm dossierForm);
	public int updateEmployeeStatus(int employeeId);
	public List selectEmployeeByStatus(int pageNum, int pageSize);
	public int getTotalPageES(int pageSize);
	public int updateEmployeeStatusRe(int employeeStatus,int employeeId);
	public int copyEmployeeLogToEmployee(Employeelog log);
	public int updateEmployeeLogToEmployee(Employeelog log);
}
