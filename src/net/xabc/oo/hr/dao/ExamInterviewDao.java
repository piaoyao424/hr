package net.xabc.oo.hr.dao;

import java.util.List;

import net.xabc.oo.hr.entity.Examinterview;

public interface ExamInterviewDao {
	public int addExamInterview(Examinterview exam);
	public int deleteExamInterview(Examinterview exam);
	public int updateExamInterview(Examinterview exam);
	public List getAllExamInterview(int pageNum,int pageSize,int eiCheckStatus);
	public Examinterview getExamInterviewById(int id);
	public int getTotalPage(int eiCheckStatus);
}
