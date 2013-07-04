package net.xabc.oo.hr.test;
import java.util.List;

import net.xabc.oo.hr.dao.PositionDao;
import net.xabc.oo.hr.entity.Postion;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class PositionTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		selectOptions();
		num();
	}
	
	public static void selectOptions(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		PositionDao positionDao = (PositionDao) ac.getBean("PositionDao");
		List list=positionDao.getPositionByBranchId(1);	
		for(int i=0;i<list.size();i++){
			Postion position=(Postion) list.get(i);
			System.out.println(position.getPositionId());
			System.out.println(position.getPositionName());
		}
	}
	public static void num() {
//		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
//		ExamSubjectDao examSubjectDao =(ExamSubjectDao) ac.getBean("ExamSubjectDao");
//		List list = examSubjectDao.getExamSubject(1, 2);
//		int count = examSubjectDao.getTotalPage(2);
//		for (int i = 0; i < list.size(); i++) {
//			ExamSubject examSubject =(ExamSubject) list.get(i);
//			System.err.println(examSubject.getSubContent());
//		}
//		System.err.println(count);
	}

}
