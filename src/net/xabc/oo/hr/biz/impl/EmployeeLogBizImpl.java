package net.xabc.oo.hr.biz.impl;
import java.util.List;

import javax.swing.text.Position;

import net.xabc.oo.hr.biz.EmployeeLogBiz;
import net.xabc.oo.hr.dao.EmployeeLogDao;
import net.xabc.oo.hr.entity.Employeelog;
import net.xabc.oo.hr.entity.Postion;
import net.xabc.oo.hr.utils.date.DateFormat;
import net.xabc.oo.hr.utils.filters.Util;
import net.xabc.oo.hr.web.form.DossierForm;

public class EmployeeLogBizImpl implements EmployeeLogBiz {

	private EmployeeLogDao employeeLogDao;

	/**
	 *登记
	 */
	public int addEmployeeLog(DossierForm dossierForm) {
		Employeelog employeeLog=new Employeelog();
		employeeLog.setElEmployeeId(0);
		employeeLog.setElName(Util.encode(dossierForm.getEmployeeName()));
		employeeLog.setElSex(Util.encode(dossierForm.getEmployeeSex()));
		employeeLog.setElAge(dossierForm.getEmployeeAge());
		employeeLog.setElBirthday(DateFormat.parseDate(dossierForm.getEmployeeBirthday()));
		employeeLog.setElNation(dossierForm.getEmployeeNation());
		employeeLog.setElDegree(dossierForm.getEmpolyeeDegree());
		employeeLog.setElSpecially(Util.encode(dossierForm.getEmployeeSpeciality()));
		employeeLog.setElPolity(dossierForm.getEmployeePolity());
		employeeLog.setElFamilyPhone(Util.encode(dossierForm.getEmployeeFamilyphone()));
		employeeLog.setElEntertime(DateFormat.parseDate( DateFormat.getDate()));
		employeeLog.setElPhoto(Util.encode(dossierForm.getEmployeePhoto()));
		employeeLog.setElMobile(Util.encode(dossierForm.getEmployeeMobile()));
		employeeLog.setElFamilyAddress(Util.encode(dossierForm.getEmployeeFamilyAddress()));
		employeeLog.setElAddress(Util.encode(dossierForm.getEmployeeAddress()));
		employeeLog.setElQq(Util.encode( dossierForm.getEmployeeQq()));
		employeeLog.setElEmail(Util.encode(dossierForm.getEmployeeEmail()));
		employeeLog.setElFamilyPhone(Util.encode(dossierForm.getEmployeeFamilyphone()) );
		Postion position=new Postion();
		position.setPositionId(dossierForm.getEmployeePositionId());
		employeeLog.setPostion(position);
		position.setPositionId(dossierForm.getEmployeePositionId() );
		employeeLog.setPostion(position);
		employeeLog.setElPostcode(Util.encode(dossierForm.getEmployeePostcode()));
		employeeLog.setElHobby(Util.encode(dossierForm.getEmployeeHobby()));
		employeeLog.setElSkills(Util.encode(dossierForm.getEmployeeSkills()));
		employeeLog.setResumeId(0);
		employeeLog.setElRemart(Util.encode(dossierForm.getEmployeeRemark()));
		employeeLog.setElRegister(dossierForm.getRegister());
		employeeLog.setElRegisterTime(DateFormat.parseDate(DateFormat.getDate()));
		employeeLog.setElStatus(0);
		employeeLog.setElCheckStatus(0);
		return employeeLogDao.addEmployeeLog(employeeLog);
	}

	public int deleteEmployeeLog(int id) {
		// TODO Auto-generated method stub
		return employeeLogDao.deleteEmployeeLog(id);
	}


	public Employeelog getEmployeeLogById(int id) {
	  return employeeLogDao.getEmployeeLogById(id);
	}

	public int updateEmployeeLog(DossierForm dossierForm) {
		Employeelog employeeLog=new Employeelog();
		employeeLog.setElEmployeeId(dossierForm.getEmployeeId());
		employeeLog.setElName(Util.encode(dossierForm.getEmployeeName()));
		employeeLog.setElSex(Util.encode(dossierForm.getEmployeeSex()));
		employeeLog.setElAge(dossierForm.getEmployeeAge());
		employeeLog.setElBirthday(DateFormat.parseDate(dossierForm.getEmployeeBirthday()));
		employeeLog.setElNation(dossierForm.getEmployeeNation());
		employeeLog.setElDegree(dossierForm.getEmpolyeeDegree());
		employeeLog.setElSpecially(Util.encode(dossierForm.getEmployeeSpeciality()));
		employeeLog.setElPolity(dossierForm.getEmployeePolity());
		employeeLog.setElFamilyPhone(Util.encode(dossierForm.getEmployeeFamilyphone()));
		employeeLog.setElEntertime(DateFormat.parseDate( DateFormat.getDate()));
		employeeLog.setElEmail(Util.encode(dossierForm.getEmployeeEmail()));
		employeeLog.setElFamilyAddress(Util.encode(dossierForm.getEmployeeFamilyAddress()));
		employeeLog.setElPhoto(Util.encode(dossierForm.getEmployeePhoto()));
		employeeLog.setElMobile(Util.encode(dossierForm.getEmployeeMobile()));
		employeeLog.setElAddress(Util.encode(dossierForm.getEmployeeAddress()));
		employeeLog.setElQq(Util.encode(dossierForm.getEmployeeQq()));
		Postion position=new Postion();
		position.setPositionId(dossierForm.getEmployeePositionId());
		employeeLog.setPostion(position);
		employeeLog.setElPostcode(Util.encode(dossierForm.getEmployeePostcode()));
		employeeLog.setElHobby(Util.encode(dossierForm.getEmployeeHobby()));
		employeeLog.setElSkills(Util.encode(dossierForm.getEmployeeSkills()));
		employeeLog.setResumeId(0);
		employeeLog.setElRemart(Util.encode(dossierForm.getEmployeeRemark()));
		employeeLog.setElRegister(Util.encode(dossierForm.getRegister()));
		employeeLog.setElRegisterTime(DateFormat.parseDate(DateFormat.getDate()));
		employeeLog.setElStatus(0);
		employeeLog.setElCheckStatus(0);
		return employeeLogDao.updateEmployeeLog(employeeLog);
	}

	public EmployeeLogDao getEmployeeLogDao() {
		return employeeLogDao;
	}

	public void setEmployeeLogDao(EmployeeLogDao employeeLogDao) {
		this.employeeLogDao = employeeLogDao;
	}

	public List getAllEmployeeLog(int page, int pageSize) {
		return employeeLogDao.getAllEmployeeLog(page, pageSize);
	}

	public int getTotalPage(int pageSize) {
		return employeeLogDao.getTotalPage(pageSize);
	}

	public List search(DossierForm dossierForm) {
		Employeelog log=new Employeelog();
		if(dossierForm.getEmployeeName()!=null){
			log.setElName(dossierForm.getEmployeeName());
		}
		if(dossierForm.getEmployeeEntertime()!=null && dossierForm.getEmployeeEntertime().trim().length()>0){
			log.setElEntertime(DateFormat.parseDate(dossierForm.getEmployeeEntertime()));
		}
		return employeeLogDao.search(log);
	}

	public int updateCheck(Employeelog log) {
		return employeeLogDao.updateCheck(log);
	}


}
