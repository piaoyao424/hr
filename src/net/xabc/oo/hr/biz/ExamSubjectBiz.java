package net.xabc.oo.hr.biz;

import java.util.List;

import net.xabc.oo.hr.entity.Examsubject;
import net.xabc.oo.hr.web.form.ExamForm;

public interface ExamSubjectBiz {
	
	public int addExamSubject(ExamForm exam);
	
	public int updateExamSubject(ExamForm exam);
	
	public int updateExamSubject(Examsubject examSubject);
	
	public int deleteExamSubject(Examsubject exam);
	
	public Examsubject getExamSubjectById(int id);
	
	public int getTotalPage(int subState);
	
	public List getExamSubject(int pageNum,int pageSize,int subState);
}
