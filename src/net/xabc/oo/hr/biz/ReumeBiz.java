package net.xabc.oo.hr.biz;

import java.util.List;


import net.xabc.oo.hr.entity.Resume;
import net.xabc.oo.hr.web.form.ResumeForm;

public interface ReumeBiz {

	public int upPass(Resume resume);

	public int addUser(ResumeForm resumeForm);
	
	public List selectAll(int pageNum,int pageSize);

	public int delete(Resume resume);
	
	public Resume selectById(int resumId);
	
	public int getTotalPage();
}
