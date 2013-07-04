package net.xabc.oo.hr.biz.impl;
import java.util.List;

import net.xabc.oo.hr.biz.UserBiz;
import net.xabc.oo.hr.dao.UserDao;
import net.xabc.oo.hr.entity.Postion;
import net.xabc.oo.hr.entity.Role;
import net.xabc.oo.hr.entity.Users;
import net.xabc.oo.hr.utils.filters.Util;
import net.xabc.oo.hr.web.form.UserForm;

public class UserBizImpl implements UserBiz {

	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	/**
	 * 用户登录
	 */
	public Users login(String userName, String userPassword) {
		return userDao.login(Util.encode(userName),Util.encode(userPassword) );
	}

		/**
		 * 注册新用户
		 */
	public int addUser(UserForm userForm) {
		Users user=new Users();
		Role role=new Role();
		user.setRole(role);
		role.setRoleId(userForm.getRoleId());
		user.setUserName(Util.encode(userForm.getUserName()));
		user.setUserPassword(Util.encode(userForm.getUserPassword()));
		Postion position=new Postion();
		position.setPositionId(userForm.getEmployeePositionId());
		user.setPostion(position);
		user.setUserState(1);
		return userDao.addUser(user);
	}

	public int upPass(Users user) {
		return userDao.upPass(user);
	}
	/**
	 * 查询所有用户列表
	 */
	public List selectAll(int pageNum, int pageSize) {

		return userDao.selectAll(pageNum,pageSize);
	}
	/**
	 * 获取所有信息总条数
	 */
	public int getTotalPage(int pageSize){
		return userDao.getTotalPage(pageSize);
	}
	/**
	 * 删除用户
	 * 删除数据库记录
	 */
	public int delete(Users user) {

		return userDao.delete(user);
	}

	/**
	 * 修改密码
	 */
	public int updatePassword(String newPass, int userId) {
		return userDao.updatePassword(newPass, userId);
	}

	public Users getUserById(int userId) {
		return userDao.getUserById(userId);
	}

	public boolean checkUser(String userName) {
		return userDao.checkUser(userName);
	}

	public int updateUserStatus(int userId, int status) {
		return userDao.updateUserStatus(userId, status);
	}

}
