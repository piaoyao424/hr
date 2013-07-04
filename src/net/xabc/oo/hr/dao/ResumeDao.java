package net.xabc.oo.hr.dao;

import java.util.List;


import net.xabc.oo.hr.entity.Resume;

public interface ResumeDao {
	
	public int upPass(Resume resume);

	public int addUser(Resume resume);

	public List selectAll(int pageNum,int pageSize);

	public int delete(Resume resume);
	
	public Resume selectById(int resumId);
	
	public int getTotalPage();

}
