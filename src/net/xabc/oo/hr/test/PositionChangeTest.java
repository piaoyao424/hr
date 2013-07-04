package net.xabc.oo.hr.test;

import java.util.List;

import net.xabc.oo.hr.dao.PositionChangeDao;
import net.xabc.oo.hr.entity.Employee;
import net.xabc.oo.hr.entity.Positionchange;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class PositionChangeTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
//		getAll();
		 getAllE();
	}
	public static void getAll(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		PositionChangeDao pDao=(PositionChangeDao) ac.getBean("PositionChangeDao");
		List list = pDao.selectEmployee(1, 2,1);
		for (int i = 0; i < list.size(); i++) {
			Employee employee =(Employee) list.get(i);
			System.out.println(employee.getEmployeeName());
		}
		System.out.println("asdasdasd");
	}
	public static void getAllE(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		PositionChangeDao pDao=(PositionChangeDao) ac.getBean("PositionChangeDao");
		List list = pDao.selectAllPC(1, 2,4,0);
		for (int i = 0; i < list.size(); i++) {
			Positionchange p =(Positionchange) list.get(i);
			System.out.println(p.getPositionChangeId());
		}
	}
	
	

}
