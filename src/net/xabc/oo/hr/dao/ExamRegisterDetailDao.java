package net.xabc.oo.hr.dao;

import java.util.List;

import net.xabc.oo.hr.entity.Examregisterdetail;

public interface ExamRegisterDetailDao {
	public int addExamRegisterDetail(Examregisterdetail exam);
	public int deleteExamRegisterDetail(int id);
	public int updateExamRegisterDetail(Examregisterdetail exam);
	public List getAllExamRegisterDetail();
	public Examregisterdetail getExamRegisterDetailById(int id);
}
