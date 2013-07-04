package net.xabc.oo.hr.biz.impl;

import java.util.List;

import net.xabc.oo.hr.biz.EngageExamBiz;
import net.xabc.oo.hr.dao.EngageExamDao;
import net.xabc.oo.hr.entity.Engageexam;

public class EngageExamBizImpl implements EngageExamBiz {

	private EngageExamDao engageExamDao;

	public int addEngageExam(Engageexam engage) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteEngageExam(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List getAllEngageExam() {
		// TODO Auto-generated method stub
		return null;
	}

	public Engageexam getEngageExamById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public int updateEngageExam(Engageexam engage) {
		// TODO Auto-generated method stub
		return 0;
	}

	public EngageExamDao getEngageExamDao() {
		return engageExamDao;
	}

	public void setEngageExamDao(EngageExamDao engageExamDao) {
		this.engageExamDao = engageExamDao;
	}
}
