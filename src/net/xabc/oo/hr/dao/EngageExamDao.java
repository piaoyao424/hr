package net.xabc.oo.hr.dao;

import java.util.List;

import net.xabc.oo.hr.entity.Engageexam;

public interface EngageExamDao {
	public int addEngageExam(Engageexam engage);
	public int deleteEngageExam(int id);
	public int updateEngageExam(Engageexam engage);
	public List getAllEngageExam();
	public Engageexam getEngageExamById(int id);
}
