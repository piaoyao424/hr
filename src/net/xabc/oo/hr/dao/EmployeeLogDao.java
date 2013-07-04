package net.xabc.oo.hr.dao;
import java.util.List;

import net.xabc.oo.hr.entity.Employeelog;

public interface EmployeeLogDao {

    /**
     * 添加档案操作及记录
     * @param employeeLog
     * @return
     */
	public int addEmployeeLog(Employeelog employeeLog);
	public int deleteEmployeeLog(int id);
	public int updateEmployeeLog(Employeelog employee);
	public List getAllEmployeeLog(int page,int pageSize);
	public Employeelog getEmployeeLogById(int id);
	public int getTotalPage(int pageSize);
	public List search(Employeelog log);
	public int updateCheck(Employeelog log);
	
}
