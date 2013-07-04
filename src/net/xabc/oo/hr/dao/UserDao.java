package net.xabc.oo.hr.dao;

import java.util.List;

import net.xabc.oo.hr.entity.Users;


public interface UserDao {

	public Users  login(String userName,String userPassword);
	public int  upPass(Users user);
    public int addUser(Users user);
    public List selectAll(int pageNum,int pageSize);
    public int delete(Users user);
    public int getTotalPage(int pageSize);
    public int updatePassword(String newPass,int userId);
    public Users getUserById(int userId);
    public boolean checkUser(String userName);
    public int updateUserStatus(int userId,int status);
    
}
