package net.xabc.oo.hr.dao.impl;

import java.util.ArrayList;
import java.util.List;

import net.xabc.oo.hr.dao.EngageExamDao;
import net.xabc.oo.hr.entity.Engageexam;

import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class EngageExamDaoImpl extends HibernateDaoSupport implements
		EngageExamDao {

	public int addEngageExam(Engageexam engage) {
		try {
			this.getHibernateTemplate().save(engage);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int deleteEngageExam(int id) {
		String hql = "delete from EngageExam ee where ee.eeId=" + id;
		Query query = this.getSession().createQuery(hql);
		Object count = query.list().get(0);
		return Integer.parseInt(count.toString());
	}

	public List getAllEngageExam() {
		List list = new ArrayList();
		String hql = "form EngageExam ee order by ee.eeId desc";
		Query query = this.getSession().createQuery(hql);
		list = query.list();
		return list;
	}

	public Engageexam getEngageExamById(int id) {
		String hql = " from EngageExam ei where ei.eeId=" + id;
		Query query = this.getSession().createQuery(hql);
		Engageexam engage = (Engageexam) query.list().get(0);
		return engage;
	}

	public int updateEngageExam(Engageexam engage) {
		try {
			this.getHibernateTemplate().update(engage);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return 0;
	}

}
