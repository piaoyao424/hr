package net.xabc.oo.hr.dao.impl;

import java.util.ArrayList;
import java.util.List;

import net.xabc.oo.hr.dao.ExamRegisterDetailDao;
import net.xabc.oo.hr.entity.Examregisterdetail;

import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class ExamRegisterDetailDaoImpl extends HibernateDaoSupport implements
		ExamRegisterDetailDao {

	public int addExamRegisterDetail(Examregisterdetail exam) {
		try {
			this.getHibernateTemplate().save(exam);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int deleteExamRegisterDetail(int id) {
		String hql = "delete from ExamRegisterDetail er where er.erdId=" + id;
		Query query = this.getSession().createQuery(hql);
		Object count = query.list().get(0);
		return Integer.parseInt(count.toString());
	}

	public List getAllExamRegisterDetail() {
		List list = new ArrayList();
		String hql = "form ExamRegisterDetail er order by er.erdId desc";
		Query query = this.getSession().createQuery(hql);
		list = query.list();
		return list;
	}

	public Examregisterdetail getExamRegisterDetailById(int id) {
		String hql = " from ExamRegisterDetail er where er.erdId=" + id;
		Query query = this.getSession().createQuery(hql);
		Examregisterdetail exam = (Examregisterdetail) query.list().get(0);
		return exam;
	}

	public int updateExamRegisterDetail(Examregisterdetail exam) {
		try {
			this.getHibernateTemplate().update(exam);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return 0;
	}

}
