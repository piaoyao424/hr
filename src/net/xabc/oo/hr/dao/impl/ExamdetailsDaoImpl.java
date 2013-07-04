package net.xabc.oo.hr.dao.impl;

import java.util.ArrayList;
import java.util.List;

import net.xabc.oo.hr.dao.ExamdetailsDao;

import net.xabc.oo.hr.entity.Examdetails;

import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class ExamdetailsDaoImpl extends HibernateDaoSupport implements
		ExamdetailsDao {

	public int addExamdetails(Examdetails exam) {
		try {
			this.getHibernateTemplate().save(exam);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int deleteExamdetails(int id) {
		String hql = "delete from Examdetails ed where ed.edId=" + id;
		Query query = this.getSession().createQuery(hql);
		Object count = query.list().get(0);
		return Integer.parseInt(count.toString());
	}

	public List getAllExamdetails() {
		List list = new ArrayList();
		String hql = "form Examdetails ed order by ed.edId desc";
		Query query = this.getSession().createQuery(hql);
		list = query.list();
		return list;
	}

	public Examdetails getExamdetailsById(int id) {
		String hql = " from Examdetails ed where ed.edId=" + id;
		Query query = this.getSession().createQuery(hql);
		Examdetails exam = (Examdetails) query.list().get(0);
		return exam;
	}

	public int updateExamdetails(Examdetails exam) {
		try {
			this.getHibernateTemplate().update(exam);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return 0;
	}
}
