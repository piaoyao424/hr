package net.xabc.oo.hr.dao;

import java.util.List;

import net.xabc.oo.hr.entity.Examdetails;


public interface ExamdetailsDao {
	public int addExamdetails(Examdetails exam);
	public int deleteExamdetails(int id);
	public int updateExamdetails(Examdetails exam);
	public List getAllExamdetails();
	public Examdetails getExamdetailsById(int id);
}
