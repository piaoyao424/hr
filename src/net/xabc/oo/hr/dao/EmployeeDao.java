package net.xabc.oo.hr.dao;

import java.util.List;

import net.xabc.oo.hr.entity.Employee;

public interface EmployeeDao {
	public int addEmployee(Employee emloyee);
	public int deleteEmployee(int employeeId);
    public int updateEmployee(Employee emloyee);
    public List selectEmployee(int pageNum,int pageSize);
    public int getTotalPage(int pageSize);
    public List selectEmployeeByStatus(int pageNum,int pageSize);
    public int getTotalPageES(int pageSize);
    public Employee getEmployeeById(int employeeId);
    public List search(Employee employee);
    public int updateEmployeeStatus(int employeeId);
    public int updateEmployeeStatusRe(int employeeStatus,int employeeId);
       
}
