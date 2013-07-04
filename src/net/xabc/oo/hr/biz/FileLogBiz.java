package net.xabc.oo.hr.biz;

import java.util.List;

import net.xabc.oo.hr.web.form.FileLogForm;

public interface FileLogBiz {

	public int  upPass(FileLogForm fileLogForm);
	public int addUser(FileLogForm fileLogForm);
	public List selectAll();
	public int delete(int fileLogId);
}
