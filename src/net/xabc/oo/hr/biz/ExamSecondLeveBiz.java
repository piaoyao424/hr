package net.xabc.oo.hr.biz;

import java.util.List;

import net.xabc.oo.hr.entity.Examsecondlevel;
import net.xabc.oo.hr.web.form.ExamSecondLevelForm;

public interface ExamSecondLeveBiz {
	public int addExamSecondLevel(ExamSecondLevelForm examSecondLevelForm);

	public int deleteExamSecondLevel(Examsecondlevel examSecondLevel);

	public int updateExamSecondLevel(Examsecondlevel exam);

	public List getAllExamSecondLevel();

	public Examsecondlevel getExamSecondLevelById(int id);
	
	public List getExamSecondLevelByEslDataDetailId(int detailId);
}
