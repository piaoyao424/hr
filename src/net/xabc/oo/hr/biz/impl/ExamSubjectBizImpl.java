package net.xabc.oo.hr.biz.impl;

import java.util.List;

import net.xabc.oo.hr.biz.ExamSubjectBiz;
import net.xabc.oo.hr.dao.ExamSubjectDao;
import net.xabc.oo.hr.entity.Branch;
import net.xabc.oo.hr.entity.Examsecondlevel;
import net.xabc.oo.hr.entity.Examsubject;
import net.xabc.oo.hr.utils.date.DateFormat;
import net.xabc.oo.hr.web.form.ExamForm;

public class ExamSubjectBizImpl implements ExamSubjectBiz {

	private ExamSubjectDao examSubjectDao;

	public ExamSubjectDao getExamSubjectDao() {
		return examSubjectDao;
	}

	public void setExamSubjectDao(ExamSubjectDao examSubjectDao) {
		this.examSubjectDao = examSubjectDao;
	}

	public int addExamSubject(ExamForm exam) {
		Examsubject examSubject = new Examsubject();
		Branch branch = new Branch();
		branch.setBranchId(exam.getBranchId());
		DateFormat dateFormat = new DateFormat();
		Examsecondlevel examSecondLevel = new Examsecondlevel();
		examSecondLevel.setEslId(exam.getExamSecondLevelId());
		examSubject.setBranch(branch);
		examSubject.setExamsecondlevel(examSecondLevel);
		examSubject.setSubContent(exam.getSubContent());
		examSubject.setSubAnswer1(exam.getSubAnswer1());
		examSubject.setSubAnswer2(exam.getSubAnswer2());
		examSubject.setSubAnswer3(exam.getSubAnswer3());
		examSubject.setSubAnswer4(exam.getSubAnswer4());
		examSubject.setSubCorrectAuswer(exam.getSubCorrectAnswer());
		examSubject.setSubRegister(exam.getSubRegister());
		examSubject.setSubRegisterTime(dateFormat.parseDate(dateFormat.getDate()));
		examSubject.setSubState(1);
		return examSubjectDao.addExamSubject(examSubject);
	}

	public int deleteExamSubject(Examsubject exam) {
		return examSubjectDao.deleteExamSubject(exam);
	}
	public Examsubject getExamSubjectById(int id) {
		return examSubjectDao.getExamSubjectBySubId(id);
	}

	public int updateExamSubject(ExamForm exam) {
		Examsubject examSubject = new Examsubject();
		Branch branch = new Branch();
		branch.setBranchId(exam.getBranchId());
		DateFormat dateFormat = new DateFormat();
		Examsecondlevel examSecondLevel = new Examsecondlevel();
		examSecondLevel.setEslId(exam.getExamSecondLevelId());
		examSubject.setSubId(exam.getSubId());
		examSubject.setBranch(branch);
		examSubject.setExamsecondlevel(examSecondLevel);
		examSubject.setSubContent(exam.getSubContent());
		examSubject.setSubAnswer1(exam.getSubAnswer1());
		examSubject.setSubAnswer2(exam.getSubAnswer2());
		examSubject.setSubAnswer3(exam.getSubAnswer3());
		examSubject.setSubAnswer4(exam.getSubAnswer4());
		examSubject.setSubCorrectAuswer(exam.getSubCorrectAnswer());
		examSubject.setSubRegister(exam.getSubRegister());
		examSubject.setSubRegisterTime(dateFormat.parseDate(exam.getSubRegisterTime()));
		examSubject.setSubChanger(exam.getSubChanger());
		examSubject.setSubChangerTime(dateFormat.parseDate(dateFormat.getDate()));
		examSubject.setSubState(1);
		
		return examSubjectDao.updateExamSubject(examSubject);
	}
	public int updateExamSubject(Examsubject examSubject){
	
		return examSubjectDao.updateExamSubject(examSubject);
	}
	public int getTotalPage(int subState){
		
		return examSubjectDao.getTotalPage(subState);
	}

	public List getExamSubject(int pageNum, int pageSize,int subState) {
		return examSubjectDao.getExamSubject(pageNum, pageSize, subState);
	}
}
