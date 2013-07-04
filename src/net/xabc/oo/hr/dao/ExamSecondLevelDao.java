package net.xabc.oo.hr.dao;

import java.util.List;

import net.xabc.oo.hr.entity.Examsecondlevel;


public interface ExamSecondLevelDao {
	public int addExamSecondLevel(Examsecondlevel examSecondLevel);
	public int deleteExamSecondLevel(Examsecondlevel examSecondLevel);
	public int updateExamSecondLevel(Examsecondlevel exam);
	public List getAllExamSecondLevel();
	public Examsecondlevel getExamSecondLevelById(int id);
	public List getExamSecondLevelByEslDataDetailId(int detailId);
}
