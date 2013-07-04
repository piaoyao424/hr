package net.xabc.oo.hr.dao.impl;

import java.util.List;

import net.xabc.oo.hr.dao.UserDao;
import net.xabc.oo.hr.entity.Users;
import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	/**
	 * 根据用户名和密码查找
	 */
	public Users login(String userName, String userPassword) {
		String hql = "from Users user where user.userName=? and user.userPassword=?";
		Query query = this.getSession().createQuery(hql);
		query.setString(0, userName);
		query.setString(1, userPassword);
		Users user = (Users) query.list().get(0);
		return user;

	}

	/**
	 * 添加
	 */
	public int addUser(Users user) {
		try {
			this.getHibernateTemplate().save(user);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	/**
	 * 修改
	 */

	public int upPass(Users user) {
		try {
			this.getHibernateTemplate().update(user);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return -1;
		}
	}
/**
 * 删除
 */
public int delete(Users user) {
	this.getHibernateTemplate().delete(user);
	return 1;
}
/*
 * 查询所有可用用户角色并分页
 * @see net.xabc.oo.hr.dao.UserDao#selectAll(int, int)
 * author:Zhou Chuan
 */
public List selectAll(int pageNum, int pageSize) {
//	String hql="from Users user order by user.userId asc";
//	String hql="select * from Users as user  limit "+pageSize*(pageNum-1)+","+pageSize*pageNum+"";
	String hql="from Users order by userId";
	Query query = this.getSession().createQuery(hql);
	query.setInteger(0, pageSize*(pageNum-1));
	query.setInteger(1, pageSize*pageNum);
//	int firstResulyIndex=pageSize*(pageNum-1);
//	query.setFirstResult(firstResulyIndex);
//	query.setMaxResults(pageSize);
	return query.list();
}
/*
 * 按条件查询所有用户的分页总数
 */
public int getTotalPage(int pageSize) {
	String hql="select count(users) from Users users";
	Query query=this.getSession().createQuery(hql);
	int count=Integer.parseInt(query.uniqueResult().toString());
	return count%pageSize==0?count/pageSize:count/pageSize+1;
}

/**
 * 修改密码
 */
public int updatePassword(String newPass, int userId) {
	 String sql="UPDATE users SET user_password=?  WHERE user_Id=?";
	 Query query=this.getSession().createSQLQuery(sql);
	 query.setString(0, newPass);
	 query.setInteger(1,userId);
	 int count=query.executeUpdate();
	return count;
}

public Users getUserById(int userId) {
	return (Users) this.getHibernateTemplate().get(Users.class, userId);
}


/**
 * 检查用户名是否存在
 */
public boolean checkUser(String userName) {
	String hql="select user.userName from Users user where user.userName=?";
	Query query=this.getSession().createQuery(hql);
	query.setString(0, userName.trim());
	List list=query.list();
	if(list!=null && list.size()>0 && userName.trim().length()>0){
		return true;
	}
	return false;
}

/**
 * 修改用户的状态
 */
public int updateUserStatus(int userId,int status) {
	String hql="update Users user set user.userState=? where user.userId=?";
	Query query=this.getSession().createQuery(hql);
	query.setInteger(0, status);
	query.setInteger(1, userId);
	int count=query.executeUpdate();
	return count;
}



}
