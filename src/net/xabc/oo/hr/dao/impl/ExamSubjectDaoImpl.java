package net.xabc.oo.hr.dao.impl;

import java.util.ArrayList;
import java.util.List;

import net.xabc.oo.hr.dao.ExamSubjectDao;
import net.xabc.oo.hr.entity.Examsubject;

import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


public class ExamSubjectDaoImpl extends HibernateDaoSupport implements
		ExamSubjectDao {

	/**
	 * 添加试题
	 */
	public int addExamSubject(Examsubject exam) {
		try {
			this.getHibernateTemplate().save(exam);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return 0;
	}

	/**
	 * 删除试题
	 */
	public int deleteExamSubject(Examsubject exam) { 
		try {
			this.getHibernateTemplate().delete(exam);
			return 1;
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	/**
	 * 查询所有试题
	 */
	public List getAllExamSubject(int subState) {
		List list = new ArrayList();
		String hql = "from ExamSubject es where es.subState="+subState;
		Query query = this.getSession().createQuery(hql);
		list = query.list();
		return list;
	}

	/**
	 * 根据Id查询试题
	 */
	public Examsubject getExamSubjectBySubId(int subId) {
		Examsubject examSubject =(Examsubject) this.getHibernateTemplate().get(Examsubject.class, subId);
		return examSubject;
	}

	/**
	 * 修改试题
	 */
	public int updateExamSubject(Examsubject exam) {
		try {
			this.getHibernateTemplate().update(exam);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public List getExamSubjectByEslId(int id) {
		List list = new ArrayList();
		String hql = "form ExamSubject es where es.esl_id="+id;
		Query query = this.getSession().createQuery(hql);
		list = query.list();
		return list;
	}

	public List getExamSubject(int pageNum,int pageSize,int subState) {
		List list = new ArrayList();
		String hql = "from ExamSubject es where es.subState="+subState;
		Query query = this.getSession().createQuery(hql);
		int firstResulyIndex=pageSize*(pageNum-1);
		query.setFirstResult(firstResulyIndex);
		query.setMaxResults(pageSize);
		list = query.list();
		return list;
	}

	public int getTotalPage(int subState) {
		String hql="select count(es) from ExamSubject es where es.subState="+subState;
		Query query=this.getSession().createQuery(hql);
		int count=Integer.parseInt(query.uniqueResult().toString());
		return count;
	}
}
