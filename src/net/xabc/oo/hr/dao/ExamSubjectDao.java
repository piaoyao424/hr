package net.xabc.oo.hr.dao;

import java.util.List;

import net.xabc.oo.hr.entity.Examsubject;

public interface ExamSubjectDao {
	
	public int addExamSubject(Examsubject exam);
	
	public int updateExamSubject(Examsubject exam);
	
	public int deleteExamSubject(Examsubject exam);
	
	public Examsubject getExamSubjectBySubId(int subId);
	
	public List getAllExamSubject(int subState);
	
	public List getExamSubjectByEslId(int id);
	
	public int getTotalPage(int subState);
	
	public List getExamSubject(int pageNum,int pageSize,int subState);
}
