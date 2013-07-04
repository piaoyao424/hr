package net.xabc.oo.hr.dao.impl;

import java.util.ArrayList;
import java.util.List;

import net.xabc.oo.hr.dao.EmployeeLogDao;
import net.xabc.oo.hr.entity.Employeelog;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class EmployeeLogDaoImpl extends HibernateDaoSupport implements  EmployeeLogDao {

	public int addEmployeeLog(Employeelog employeeLog) {
		try {
			this.getHibernateTemplate().save(employeeLog);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int deleteEmployeeLog(int id) {
		String hql = "delete from EmployeeLog el where el.elId=" + id;
		Query query = this.getSession().createQuery(hql);
		Object count = query.list().get(0);
		return Integer.parseInt(count.toString());
	}

	public List getAllEmployeeLog(int page,int pageSize) {
		List list = new ArrayList();
		String hql = "from EmployeeLog el where el.elCheckStatus=0";
		Query query = this.getSession().createQuery(hql);
		int firstResultIndex=pageSize*(page-1);
		query.setFirstResult(firstResultIndex);
		query.setMaxResults(pageSize);
		list = query.list();
		return list;
	}
	
	public int getTotalPage(int pageSize){
		String hql="select count(el) from EmployeeLog el where el.elCheckStatus=0 ";
		Query query=this.getSession().createQuery(hql);
		int count=Integer.parseInt(query.uniqueResult().toString());
		return count%pageSize==0?count/pageSize:count/pageSize+1;
	}

	/**
	 * 根据id查找
	 */
	public Employeelog getEmployeeLogById(int id) {
		Employeelog log=(Employeelog) this.getHibernateTemplate().get(Employeelog.class, id);
		return log;
	}

	public int updateEmployeeLog(Employeelog employee) {
		try {
			this.getHibernateTemplate().saveOrUpdate(employee);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return 0;
	}

	/**
	 * 根据条件查找
	 */
	public List search(Employeelog log) {
		Criteria c=this.getSession().createCriteria(Employeelog.class);
		if(log!=null){
			if(log.getElName()!=null){
				c.add(Restrictions.like("elName",log.getElName(),MatchMode.ANYWHERE)) ;	
			}
			if(log.getElEntertime()!=null){
				c.add(Restrictions.eq("elEntertime", log.getElEntertime()));
			}
			log.setElCheckStatus(0);
			c.add(Restrictions.eq("elStatus", log.getElStatus()));
		}
        return c.list();		
	}

	/**
	 * 更改复核意见列和状态列
	 */
	public int updateCheck(Employeelog log) {
	   String hql="update EmployeeLog log set log.elCheckStatus=?,log.elCheckTime=?,log.elChecker=? where log.elId=?";
	   Query query=this.getSession().createQuery(hql);
	   query.setInteger(0, log.getElCheckStatus());
	   query.setDate(1, log.getElCheckTime());
	   query.setString(2, log.getElChecker());
	   query.setInteger(3, log.getElId());
	   int count=query.executeUpdate();
	   return count;
	}

}
