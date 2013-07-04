package net.xabc.oo.hr.test;

import java.util.List;

import net.xabc.oo.hr.dao.BranchDao;
import net.xabc.oo.hr.dao.DataTypeDao;
import net.xabc.oo.hr.entity.Branch;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class BranchTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		show();
	}
	
	public static void show(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		BranchDao branchDao = (BranchDao) ac.getBean("BranchDao");
		List list=branchDao.getAllBranch();
		for(int i=0;i<list.size();i++){
			Branch branch=(Branch) list.get(i);
			System.out.println(branch.getBranchName());
		}
	}

}
