package net.xabc.oo.hr.test;

import net.xabc.oo.hr.dao.RoleDao;
import net.xabc.oo.hr.dao.UserDao;
import net.xabc.oo.hr.entity.Role;
import net.xabc.oo.hr.entity.Users;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UserTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		loginTest();
//		updatePass();
		 role();
//		update();
	}
	public static void loginTest(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		UserDao userDao=(UserDao) ac.getBean("UserDao");
		Users user=userDao.login("aa", "0000");
		if(user!=null){
			System.out.println("登陆成功");
			System.out.print(user.getUserName());
		}
	}
	public static void  update(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		UserDao userDao = (UserDao) ac.getBean("UserDao");
		Users user=new Users();
		user.setUserId(1);
		user.setUserPassword("0000");
		int count = userDao.upPass(user);
		if(count==1){
			System.out.println("修改成功");
		}
	}
	
	
	public static void updatePass(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		UserDao userDao = (UserDao) ac.getBean("UserDao");
		int count=userDao.updatePassword("test",1);
	}
	public static void role(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		RoleDao roleDao = (RoleDao) ac.getBean("RoleDao");
		int role=roleDao.selectRoleId("vv");
		System.out.println(role);
	}
	
	

}
