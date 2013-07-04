package net.xabc.oo.hr.dao.impl;

import java.util.List;

import net.xabc.oo.hr.dao.SalaryGrantDao;
import net.xabc.oo.hr.entity.Salarygrant;

import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class SalaryGrantDaoImpl extends HibernateDaoSupport implements SalaryGrantDao{

	public int addUser(Salarygrant salaryGrant) {
		try {
			this.getHibernateTemplate().save(salaryGrant);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	public int delete(int sgId) {
		String hql="delete from Salarygrant salaryGrant where salaryGrant.sgId"+sgId;
		Query query=this.getSession().createQuery(hql);
		Object count =query.list().get(0);
		return Integer.parseInt(count.toString());
	}

//	public List selectAll() {
//		String hql="from SalaryGrant";
//		Query query=this.getSession().createQuery(hql);
//		List list = query.list();
//		if(list.size()>0){
//			return list;
//		}else{
//			return null;
//		}
//	}

	public int upPass(Salarygrant salaryGrant) {
		try {
			this.getHibernateTemplate().update(salaryGrant);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return 0;
		}
		return 1;
	}
	
	public List selectAll(int page,int pageSize) {
		String hql = "from Salarygrant";
		Query query = this.getSession().createQuery(hql);
		int firstResult=pageSize*(page-1);
		query.setFirstResult(firstResult);
		query.setMaxResults(pageSize);
		return query.list();
	}

	public Salarygrant getSalaryGrantById(int sgId) {
		// TODO Auto-generated method stub
		Salarygrant salaryGrant = (Salarygrant)this.getHibernateTemplate().get(Salarygrant.class, sgId);
		return salaryGrant;
	}

	public int updateSalaryAcdtingInfo(Salarygrant salaryGrant) {
		// TODO Auto-generated method stub
		try {
			this.getHibernateTemplate().save(salaryGrant);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return 0;
		}
	}

	 

	public boolean checkSalaryStardIdExists(int ssId) {
		String hql="select sg.salaryStandard.ssId from SalaryGrant sg where sg.salaryStandard.ssId="+ssId;
		Query query=this.getSession().createQuery(hql);
		List list=query.list();
		if(list.size()>0 && list!=null){
			return true;
		}
		return false;
	}

	public int deleteSalaryGrantBySsId(int ssId) {
		String hql="delete from Salarygrant sg where sg.salaryStandard.ssId="+ssId;
		Query query=this.getSession().createQuery(hql);
		int count=query.executeUpdate();
		return count;
//		Object count=query.list().get(0);
//		return Integer.parseInt(count.toString());
	}
}
