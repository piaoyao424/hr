package net.xabc.oo.hr.test;

import java.util.List;

import net.xabc.oo.hr.dao.EmployeeDao;
import net.xabc.oo.hr.dao.EmployeeLogDao;
import net.xabc.oo.hr.entity.Employee;
import net.xabc.oo.hr.entity.Employeelog;
import net.xabc.oo.hr.utils.date.DateFormat;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class DossierTest {
	public static void main(String[] args) {
		List();
//		addDossierDao();
//		getPage();
//		 getById();
//		search();
//		addEmployeeLog();
//		updateStatuc();
	}
	public  static void addDossierDao(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		EmployeeDao dossierDao = (EmployeeDao) ac.getBean("EmployeeDao");
		Employee employee = new Employee();
		employee.setEmployeeAddress("dfdf");
		employee.setEmployeeAge(12);
	int count = dossierDao.addEmployee(employee);
	if(count==1){
		System.out.println("添加成功");
	}
	}
	
	public static void addEmployeeLog(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		EmployeeLogDao log = (EmployeeLogDao) ac.getBean("EmployeeLogDao");
		Employeelog employeeLog=new Employeelog();
		employeeLog.setElEmployeeId(0);
		employeeLog.setElName("aa");
		employeeLog.setElAge(20);
		employeeLog.setElSex("女");
		employeeLog.setElBirthday(DateFormat.parseDate("1989-6-9"));
		int count=log.addEmployeeLog(employeeLog);
		if(count>0){
			System.out.println("添加成功");
		}
	}
	
	
	public static void List(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		EmployeeDao dossierDao = (EmployeeDao) ac.getBean("EmployeeDao");
		List list=dossierDao.selectEmployee(1, 2);
		for(int i=0;i<list.size();i++){
			Employee employee=(Employee) list.get(i);
			System.out.println(employee.getEmployeeName());
		}
	}
	
	public static void getPage(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		EmployeeDao dossierDao = (EmployeeDao) ac.getBean("EmployeeDao");
		int count=dossierDao.getTotalPage(2);
			System.out.println(count);
	}
	public static void getById(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		EmployeeDao dossierDao = (EmployeeDao) ac.getBean("EmployeeDao");
		Employee employee=dossierDao.getEmployeeById(1);
	     System.out.println(employee.getEmployeeName());
	}
	
	public static void search(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		EmployeeDao dossierDao = (EmployeeDao) ac.getBean("EmployeeDao");
		Employee employee=new Employee();
		employee.setEmployeeName("王静");
		List list=dossierDao.search(employee);
		if(list.size()>0){
			for(int i=0;i<list.size();i++){
				Employee employee1=(Employee)list.get(i);
				System.out.println(employee1.getEmployeeName());
			}
		} else{
			System.out.println("list为空");
		}
		
	}
	
	
	public static void updateStatuc(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		EmployeeDao dossierDao = (EmployeeDao) ac.getBean("EmployeeDao");
		int count=dossierDao.updateEmployeeStatus(5);
	
	}

}
