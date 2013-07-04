package net.xabc.oo.hr.biz.impl;

import java.util.List;

import net.xabc.oo.hr.biz.ExamdetaiLsBiz;
import net.xabc.oo.hr.dao.ExamdetailsDao;
import net.xabc.oo.hr.entity.Examdetails;

public class ExamdetaiLsBizImpl implements ExamdetaiLsBiz {

	private ExamdetailsDao examdetaiLsDao;

	public int addExamdetails(Examdetails exam) {
		return examdetaiLsDao.addExamdetails(exam);
	}

	public int deleteExamdetails(int id) {
		return examdetaiLsDao.deleteExamdetails(id);
	}

	public List getAllExamdetails() {
		return examdetaiLsDao.getAllExamdetails();
	}

	public Examdetails getExamdetailsById(int id) {
		return examdetaiLsDao.getExamdetailsById(id);
	}

	public int updateExamdetails(Examdetails exam) {
		return examdetaiLsDao.updateExamdetails(exam);
	}

	public ExamdetailsDao getExamdetaiLsDao() {
		return examdetaiLsDao;
	}

	public void setExamdetaiLsDao(ExamdetailsDao examdetaiLsDao) {
		this.examdetaiLsDao = examdetaiLsDao;
	}
}
