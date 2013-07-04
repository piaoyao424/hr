package net.xabc.oo.hr.biz;

import java.util.List;

import net.xabc.oo.hr.entity.Examinterview;
import net.xabc.oo.hr.web.form.EmployForm;

public interface ExamInterviewBiz {
	public int addExamInterview(EmployForm emplloyForm);

	public int deleteExamInterview(int id);

	public int updateExamInterview(EmployForm emplloyForm);

	public List getAllExamInterview(int pageNum,int pageSize,int id);

	public Examinterview getExamInterviewById(int id);
	
	public int getTotalPage(int eiCheckStatus);
	
}
