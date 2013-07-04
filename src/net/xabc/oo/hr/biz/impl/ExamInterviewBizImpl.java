package net.xabc.oo.hr.biz.impl;

import java.util.List;

import net.xabc.oo.hr.biz.ExamInterviewBiz;
import net.xabc.oo.hr.dao.ExamInterviewDao;
import net.xabc.oo.hr.entity.Examinterview;
import net.xabc.oo.hr.entity.Postion;
import net.xabc.oo.hr.entity.Resume;
import net.xabc.oo.hr.utils.date.DateFormat;
import net.xabc.oo.hr.web.form.EmployForm;

public class ExamInterviewBizImpl implements ExamInterviewBiz {

	private ExamInterviewDao examInterviewDao;
	DateFormat dateFormat =new DateFormat();

	public int addExamInterview(EmployForm employForm) {
		Examinterview examInterview=new Examinterview();
		Resume resume = new Resume();
		resume.setResumeId(employForm.getResumeId());
		Postion position = new Postion();
		position.setPositionId(employForm.getPositionId());
		
		examInterview.setEiName(employForm.getPersonName());
		examInterview.setResume(resume);
		examInterview.setPostion(position);
		examInterview.setEiCheckStatue(0);
		examInterview.setEiInterviewStatue(0);
		return examInterviewDao.addExamInterview(examInterview);
	}

	public int deleteExamInterview(int id) {
		Examinterview exam = new Examinterview();
		exam.setEiId(id);
		return examInterviewDao.deleteExamInterview(exam);
	}

	public List getAllExamInterview(int pageNum,int pageSize,int id) {
		return examInterviewDao.getAllExamInterview(pageNum, pageSize, id);
	}

	public Examinterview getExamInterviewById(int id) {
		return examInterviewDao.getExamInterviewById(id);
	}

	public int updateExamInterview(EmployForm employForm) {
		Examinterview examInterview=new Examinterview();
		Resume resume = new Resume();
		resume.setResumeId(employForm.getResumeId());
		Postion position = new Postion();
		position.setPositionId(employForm.getPositionId());
		examInterview.setEiId(employForm.getEiId());
		examInterview.setEiName(employForm.getEiName());
		examInterview.setPostion(position);
		examInterview.setResume(resume);
		examInterview.setEiAbility(employForm.getEiAbility());
		examInterview.setEiCheckStatue(employForm.getEiCheckStatus());		
		examInterview.setEiChecker(employForm.getEiChecker());
		examInterview.setEiCheckTime(dateFormat.parseDate(dateFormat.getDate()));
		examInterview.setEiComment(employForm.getEiComment());
		examInterview.setEiFace(employForm.getEiFace());
		examInterview.setEiGrade(employForm.getEiGrade());
		examInterview.setEiInterviewer(employForm.getEiInterviewer());
		examInterview.setEiInterviewTime(dateFormat.parseDate(employForm.getEiInterviewTime()));
		examInterview.setEiInterviewStatue(employForm.getEiInterviewStatus());
		examInterview.setEiResult(employForm.getEiResult());
		examInterview.setEiInterviewStatue(employForm.getEiInterviewStatus());
		examInterview.setEiInterviewStatue(0);
		examInterview.setEiCheckStatue(1);
		return examInterviewDao.updateExamInterview(examInterview);
	}

	public ExamInterviewDao getExamInterviewDao() {
		return examInterviewDao;
	}

	public void setExamInterviewDao(ExamInterviewDao examInterviewDao) {
		this.examInterviewDao = examInterviewDao;
	}

	public int getTotalPage(int eiCheckStatus) {
		return examInterviewDao.getTotalPage(eiCheckStatus);
	}
}
