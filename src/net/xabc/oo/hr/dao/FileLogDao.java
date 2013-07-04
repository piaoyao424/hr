package net.xabc.oo.hr.dao;

import java.util.List;

import net.xabc.oo.hr.entity.FileLog;


public interface FileLogDao {

	public int upPass(FileLog fileLog);

	public int addUser(FileLog fileLog);

	public List selectAll();

	public int delete(int fileLogId);
}
