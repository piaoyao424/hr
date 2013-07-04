package net.xabc.oo.hr.dao.impl;

import java.util.ArrayList;
import java.util.List;

import net.xabc.oo.hr.dao.ExamInterviewDao;
import net.xabc.oo.hr.entity.Examinterview;

import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class ExamInterviewDaoImpl extends HibernateDaoSupport implements
		ExamInterviewDao {

	public int addExamInterview(Examinterview exam) {
		try {
			this.getHibernateTemplate().save(exam);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int deleteExamInterview(Examinterview exam) {
		try {
			this.getHibernateTemplate().delete(exam);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public List getAllExamInterview(int pageNum,int pageSize,int eiCheckStatus) {
		List list = new ArrayList();
		String hql = "from ExamInterview ei where ei.eiCheckStatus="+eiCheckStatus;
		Query query = this.getSession().createQuery(hql);
		int firstResulyIndex=pageSize*(pageNum-1);
		query.setFirstResult(firstResulyIndex);
		query.setMaxResults(pageSize);
		list = query.list();
		return list;
	}

	public Examinterview getExamInterviewById(int id) {
		String hql = " from ExamInterview ei where ei.eiId=" + id;
		Query query = this.getSession().createQuery(hql);
		Examinterview exam = (Examinterview) query.list().get(0);
		return exam;
	}

	public int updateExamInterview(Examinterview exam) {
		try {
			this.getHibernateTemplate().update(exam);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int getTotalPage(int eiCheckStatus) {
		String hql="select count(ei) from ExamInterview ei where ei.eiCheckStatus="+eiCheckStatus;
		Query query =this.getSession().createQuery(hql);
		int count =Integer.parseInt(query.uniqueResult().toString() );
		return count;
	}

}
