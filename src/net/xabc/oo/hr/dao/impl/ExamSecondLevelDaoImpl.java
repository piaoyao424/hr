package net.xabc.oo.hr.dao.impl;
import java.util.List;

import net.xabc.oo.hr.dao.ExamSecondLevelDao;
import net.xabc.oo.hr.entity.Examsecondlevel;

import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class ExamSecondLevelDaoImpl extends HibernateDaoSupport implements
		ExamSecondLevelDao {

	/**
	 * 添加试题二级分类
	 */
	public int addExamSecondLevel(Examsecondlevel examSecondLevel) {
		try {
			this.getHibernateTemplate().save(examSecondLevel);
			return 1;
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
   
	/**
	 * 删除试题二级分类
	 */
	public int deleteExamSecondLevel(Examsecondlevel examSecondLevel) {
//		String hql = "delete from ExamSecondLevel es where es.eslId="+ eslId;
//		Query query = this.getSession().createQuery(hql);
//		int count = query.executeUpdate();
		try {
			this.getHibernateTemplate().delete(examSecondLevel);
			return 1;
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	public List getAllExamSecondLevel() {
		List list=this.getHibernateTemplate().find("from ExamSecondLevel");
//		List list = new ArrayList();
//		String hql = "form ExamSecondLevel es order by es.eslId desc";
//		Query query = this.getSession().createQuery(hql);
//		list = query.list();
		return list;
	}

	public Examsecondlevel getExamSecondLevelById(int id) {
		String hql = " from ExamSecondLevel es where es.eslId=" + id;
		Query query = this.getSession().createQuery(hql);
		Examsecondlevel exam = (Examsecondlevel) query.list().get(0);
		return exam;
	}

	public int updateExamSecondLevel(Examsecondlevel exam) {
		try {
			this.getHibernateTemplate().update(exam);
			return 1;
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	/**
	 * 根据试题一级分类查找对应的二级分类
	 */
	public List getExamSecondLevelByEslDataDetailId(int detailId) {
		String hql="from ExamSecondLevel es where es.eslDataDetailId="+detailId;
		Query query=this.getSession().createQuery(hql);
		List list=query.list();
		return list;
	}

}
