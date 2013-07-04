package net.xabc.oo.hr.dao.impl;
import java.util.List;

import net.xabc.oo.hr.dao.ResumeDao;
import net.xabc.oo.hr.entity.Resume;

import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class ResumeDaoImpl extends HibernateDaoSupport implements ResumeDao{

	public int addUser(Resume resume) {
		try {
			this.getHibernateTemplate().save(resume);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	public int delete(Resume resume) {
		try {
			this.getHibernateTemplate().delete(resume);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		
		return 0 ;
	}

	public List selectAll(int pageNum,int pageSize) {
		String hql="from Resume";
		Query query = this.getSession().createQuery(hql);
		int firstResulyIndex=pageSize*(pageNum-1);
		query.setFirstResult(firstResulyIndex);
		query.setMaxResults(pageSize);
		return query.list();
//		List list = query.list();
//		if(list.size()>0 && list !=null){
//			return list;
//		}else{
//		return null;
//		}
	}

	public int upPass(Resume resume) {
		try {
			this.getHibernateTemplate().update(resume);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return 0;
		}
		return 1;
	}
	public Resume selectById(int resumId) {
		Resume resume=(Resume) this.getHibernateTemplate().get(Resume.class, resumId);
		return resume;
	}

	public int getTotalPage() {
		String hql="select count(resume) from Resume resume ";
		Query query=this.getSession().createQuery(hql);
		int count=Integer.parseInt(query.uniqueResult().toString());
		return count;
	}
}
