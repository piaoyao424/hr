package net.xabc.oo.hr.test;
import net.xabc.oo.hr.dao.BranchDao;
import net.xabc.oo.hr.dao.PositionIssuanceDao;
import net.xabc.oo.hr.entity.Positionissuance;
import net.xabc.oo.hr.entity.Postion;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
//		getAll();
//		delete();
		getBranchId();
	}
	public static void add(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		PositionIssuanceDao positionIssuanceDao = (PositionIssuanceDao) ac.getBean("PositionIssuanceDao");
		Positionissuance positionIssuance = new Positionissuance();
		Postion position = new Postion();
		position.setPositionId(12);
		positionIssuance.setPostion(position);
		positionIssuance.setPositionIssuanceRequireNum(32);
		int count=positionIssuanceDao.addUser(positionIssuance);
		System.out.println(count);
	}
	public static void getAll(){
//		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
//		PositionIssuanceDao positionIssuanceDao = (PositionIssuanceDao) ac.getBean("PositionIssuanceDao");
//		List list=positionIssuanceDao.selectAll();
//		for (int i = 0; i < list.size(); i++) {
//			PositionIssuance positionIssuance=(PositionIssuance) list.get(i);
//			System.out.println(positionIssuance.getPositionIssuanceId());
//			System.out.println(positionIssuance.getPositionIssuanceDescription());
//			System.out.println(positionIssuance.getPosition().getPositionId());
//		}
	}
	public static void delete(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		PositionIssuanceDao positionIssuanceDao = (PositionIssuanceDao) ac.getBean("PositionIssuanceDao");
//		PositionIssuance positionIssuance =new PositionIssuance();
//		positionIssuance.setPositionIssuanceId(5);
//		int count=positionIssuanceDao.delete(positionIssuance);
//		if(count>0){
//			System.out.println("成功");
//		}
		Positionissuance positionIssuance = positionIssuanceDao.selectById(12);
		System.out.println(positionIssuance.getPositionIssuanceId());
		System.err.println(positionIssuance.getPositionIssuanceRequireNum());
		int count = positionIssuanceDao.delete(positionIssuance);
		System.err.println(count);
	}
	
	
	public static void getBranchId(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		BranchDao branchDao = (BranchDao)ac.getBean("BranchDao");
		int count=branchDao.getBranchByUserId(1);
		System.out.println(count);
	}
}
