package net.xabc.oo.hr.test;

import net.xabc.oo.hr.dao.SalaryStandardDao;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SalaryTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		 test();
	}
	public static void test(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		SalaryStandardDao salaryStandardDao = (SalaryStandardDao) ac.getBean("SalaryStandardDao");
		int count=salaryStandardDao.getSsIdByPositionId(8);
		System.out.println(count);
	}

}
