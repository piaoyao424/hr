package net.xabc.oo.hr.biz.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import net.xabc.oo.hr.biz.EmployeeBiz;
import net.xabc.oo.hr.dao.EmployeeDao;
import net.xabc.oo.hr.entity.Employee;
import net.xabc.oo.hr.entity.Employeelog;
import net.xabc.oo.hr.utils.date.DateFormat;
import net.xabc.oo.hr.web.form.DossierForm;

import org.apache.commons.beanutils.BeanUtils;

public class EmployeeBizImpl implements EmployeeBiz {
	
	private EmployeeDao employeeDao;
	
	
	public List selectEmployee(int pageNum, int pageSize) {
		return employeeDao.selectEmployee(pageNum, pageSize);
	}
	
	
	public int getTotalPage(int pageSize) {
		return employeeDao.getTotalPage(pageSize);
	}
	
	public Employee getEmployeeById(int employeeId) {
		return employeeDao.getEmployeeById(employeeId);
	}

	public int addEmployee(DossierForm dossier) {
		Employee emloyee = new Employee();
		try {
			BeanUtils.copyProperties(emloyee, dossier);
		} catch (IllegalAccessException e) {

			e.printStackTrace();
		} catch (InvocationTargetException e) {

			e.printStackTrace();
		}

		return employeeDao.addEmployee(emloyee);
	}

	public int deleteEmployee(int employeeId) {
		return employeeDao.deleteEmployee(employeeId);
	}

	public int updateEmployee(DossierForm dossierForm) {
		Employee emloyee = new Employee();
		try {
			BeanUtils.copyProperties(emloyee, dossierForm);
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 1;
	}

	

	public EmployeeDao getEmployeeDao() {
		return employeeDao;
	}

	public void setEmployeeDao(EmployeeDao employeeDao) {
		this.employeeDao = employeeDao;
	}

	/**
	 * 条件查询
	 */
	public List search(DossierForm dossierForm) {
		    Employee employee=new Employee();
			if(dossierForm.getEmployeeEntertime()!=null && dossierForm.getEmployeeEntertime().trim().length()>0){
				employee.setEmployeeEntertime(DateFormat.parseDate(dossierForm.getEmployeeEntertime()));
			}
			if(dossierForm.getEmployeeName()!=null){
				employee.setEmployeeName(dossierForm.getEmployeeName());	
			}
		    List employeelist=employeeDao.search(employee);
		    if(employeelist!=null){
		    	return employeelist;
		    }else{
		    	return null;
		    }
	}

	 
	/**
	 * 修改档案状态
	 */
	public int updateEmployeeStatus(int employeeId) {
		return employeeDao.updateEmployeeStatus(employeeId);
	}

	public int getTotalPageES(int pageSize) {
	    return employeeDao.getTotalPageES(pageSize);
	}

	public List selectEmployeeByStatus(int pageNum, int pageSize) {
		return employeeDao.selectEmployeeByStatus(pageNum, pageSize);
	}

	/**
	 * 修改档案状态（回收站）
	 */
	public int updateEmployeeStatusRe(int employeeStatus, int employeeId) {
		return employeeDao.updateEmployeeStatusRe(employeeStatus, employeeId);
	}

	public int copyEmployeeLogToEmployee(Employeelog log) {
		Employee employee=new Employee();
		employee.setEmployeeName(log.getElName());
		employee.setEmployeeAge(log.getElAge());
		employee.setEmployeeSex(log.getElSex());
		employee.setEmployeeBirthday(log.getElBirthday());
		employee.setEmployeeNation(log.getElNation());
		employee.setEmployeePhoto(log.getElPhoto());
		employee.setEmployeeSpeciality(log.getElSpecially());
		employee.setEmployeeDegree(log.getElDegree());
		employee.setEmployeePolity(log.getElPolity());
		employee.setEmployeeFamilyAddress(log.getElFamilyAddress());
		employee.setEmployeeEntertime(log.getElEntertime());
		employee.setEmployeePhone(log.getElPhone());
		employee.setEmployeeFamilyphone(log.getElFamilyPhone());
		employee.setEmployeeMobile(log.getElMobile());
		employee.setEmployeeEmail(log.getElEmail());
		employee.setEmployeeBirthPlace(log.getElFamilyAddress());
		employee.setEmployeeAddress(log.getElAddress());
		employee.setEmployeeQq(log.getElQq());
		employee.setEmployeePostcode(log.getElPostcode());
		employee.setEmployeeHobby(log.getElHobby());
		employee.setEmployeeSkills(log.getElSkills());
		employee.setEmployeeRemark(log.getElRemart());
		employee.setEmployeeStatus(1);
		employee.setPostion(log.getPostion());
		employee.setResumeId(0);
//		SalaryStandard salaryStandard=new SalaryStandard();
//		SalaryStandardDao salaryDao=new SalaryStandardDaoImpl();
//		int positionId=log.getPosition().getPositionId();
//		int ssId=salaryDao.getSsIdByPositionId(positionId);
//		salaryStandard.setSsId(ssId);
//		employee.setSalaryStandard(salaryStandard);
		return employeeDao.addEmployee(employee);
	}

	public int updateEmployeeLogToEmployee(Employeelog log) {
		Employee employee=new Employee();
		employee.setEmployeeId(log.getElEmployeeId());
		employee.setEmployeeName(log.getElName());
		employee.setEmployeeAge(log.getElAge());
		employee.setEmployeeSex(log.getElSex());
		employee.setEmployeeBirthday(log.getElBirthday());
		employee.setEmployeeNation(log.getElNation());
		employee.setEmployeePhoto(log.getElPhoto());
		employee.setEmployeeSpeciality(log.getElSpecially());
		employee.setEmployeeDegree(log.getElDegree());
		employee.setEmployeePolity(log.getElPolity());
		employee.setEmployeeFamilyAddress(log.getElFamilyAddress());
		employee.setEmployeeFamilyphone(log.getElFamilyPhone());
		employee.setEmployeeEntertime(log.getElEntertime());
		employee.setEmployeePhone(log.getElPhone());
		employee.setEmployeeMobile(log.getElMobile());
		employee.setEmployeeEmail(log.getElEmail());
		employee.setEmployeeBirthPlace(log.getElFamilyAddress());
		employee.setEmployeeAddress(log.getElAddress());
		employee.setEmployeeQq(log.getElQq());
		employee.setEmployeePostcode(log.getElPostcode());
		employee.setEmployeeHobby(log.getElHobby());
		employee.setEmployeeSkills(log.getElSkills());
		employee.setEmployeeRemark(log.getElRemart());
		employee.setEmployeeStatus(1);
		employee.setPostion(log.getPostion());
		employee.setResumeId(0);
		return employeeDao.updateEmployee(employee);
	}


}
