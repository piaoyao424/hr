package net.xabc.oo.hr.biz.impl;

import java.util.List;

import net.xabc.oo.hr.biz.ExamSecondLeveBiz;
import net.xabc.oo.hr.dao.ExamSecondLevelDao;
import net.xabc.oo.hr.entity.Examsecondlevel;
import net.xabc.oo.hr.web.form.ExamSecondLevelForm;

public class ExamSecondLeveBizImpl implements ExamSecondLeveBiz {

	private ExamSecondLevelDao examSecondLeveDao;


	public List getAllExamSecondLevel() {
		return examSecondLeveDao.getAllExamSecondLevel();
	}

	public Examsecondlevel getExamSecondLevelById(int id) {
		return examSecondLeveDao.getExamSecondLevelById(id);
	}

	public int updateExamSecondLevel(Examsecondlevel exam) {
		return examSecondLeveDao.updateExamSecondLevel(exam);
	}

	public ExamSecondLevelDao getExamSecondLeveDao() {
		return examSecondLeveDao;
	}

	public void setExamSecondLeveDao(ExamSecondLevelDao examSecondLeveDao) {
		this.examSecondLeveDao = examSecondLeveDao;
	}

	public int addExamSecondLevel(ExamSecondLevelForm examSecondLevelForm) {
		
		Examsecondlevel examSecondLevel = new Examsecondlevel();
		examSecondLevel.setEslSecondName(examSecondLevelForm.getEslSecondName());
		examSecondLevel.setEslDataDetailId(examSecondLevelForm.getEslDataDetailId());
		return examSecondLeveDao.addExamSecondLevel(examSecondLevel);
	}

	public int deleteExamSecondLevel(Examsecondlevel examSecondLevel) {
		
		return examSecondLeveDao.deleteExamSecondLevel( examSecondLevel);
	}

	public List getExamSecondLevelByEslDataDetailId(int detailId) {
		return examSecondLeveDao.getExamSecondLevelByEslDataDetailId(detailId);
	}



}
