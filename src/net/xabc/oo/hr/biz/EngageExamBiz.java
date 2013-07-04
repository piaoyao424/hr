package net.xabc.oo.hr.biz;

import java.util.List;

import net.xabc.oo.hr.entity.Engageexam;

public interface EngageExamBiz {
	public int addEngageExam(Engageexam engage);

	public int deleteEngageExam(int id);

	public int updateEngageExam(Engageexam engage);

	public List getAllEngageExam();

	public Engageexam getEngageExamById(int id);
}
