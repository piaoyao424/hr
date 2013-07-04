package net.xabc.oo.hr.biz.impl;

import java.util.List;

import net.xabc.oo.hr.biz.ExamRegisterDetaiBiz;
import net.xabc.oo.hr.dao.ExamRegisterDetailDao;
import net.xabc.oo.hr.entity.Examregisterdetail;

public class ExamRegisterDetaiBizImpl implements ExamRegisterDetaiBiz {

	private ExamRegisterDetailDao examRegisterDetaiDao;

	public int addExamRegisterDetail(Examregisterdetail exam) {
		return examRegisterDetaiDao.addExamRegisterDetail(exam);
	}

	public int deleteExamRegisterDetail(int id) {
		return examRegisterDetaiDao.deleteExamRegisterDetail(id);
	}

	public List getAllExamRegisterDetail() {
		return examRegisterDetaiDao.getAllExamRegisterDetail();
	}

	public Examregisterdetail getExamRegisterDetailById(int id) {
		return examRegisterDetaiDao.getExamRegisterDetailById(id);
	}

	public int updateExamRegisterDetail(Examregisterdetail exam) {
		return examRegisterDetaiDao.updateExamRegisterDetail(exam);
	}

	public ExamRegisterDetailDao getExamRegisterDetaiDao() {
		return examRegisterDetaiDao;
	}

	public void setExamRegisterDetaiDao(
			ExamRegisterDetailDao examRegisterDetaiDao) {
		this.examRegisterDetaiDao = examRegisterDetaiDao;
	}
}
