package net.xabc.oo.hr.dao.impl;

import java.util.List;


import net.xabc.oo.hr.dao.SalaryStandardDao;
import net.xabc.oo.hr.entity.Salarystandard;

import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class SalaryStandardDaoImpl extends HibernateDaoSupport implements
		SalaryStandardDao {
	/**
	 * 查询所有未审核的列表
	 */
	public List selectAll(int page,int pageSize) {
		String hql = "from SalaryStandard ss where ss.ssCheckStatus=1";
		Query query = this.getSession().createQuery(hql);
		int firstResult=pageSize*(page-1);
		query.setFirstResult(firstResult);
		query.setMaxResults(pageSize);
		return query.list();
	}
	
	/**
	 * 查询所有未审核的列表的总页数
	 */
	public int getSelectAllPage(int pageSize,int status) {
		String hql="select count(ss) from SalaryStandard ss where ss.ssCheckStatus="+status;
		Query query=this.getSession().createQuery(hql);
		int count=Integer.parseInt(query.uniqueResult().toString());
		return count%pageSize==0?count/pageSize:count/pageSize+1;
	}
	

	public int addSstand(Salarystandard salaryStandard) {
		try {
			this.getHibernateTemplate().save(salaryStandard);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return 0;
		}
	}
 

	public Salarystandard findById(int ssId) {
		Salarystandard sait = (Salarystandard)this.getHibernateTemplate().get(Salarystandard.class, ssId);
		return sait;
	}
	
	/***
	 * 删除薪酬标准
	 */
	
	public int delete(Salarystandard salaryStandard) {
		try {
			this.getHibernateTemplate().delete(salaryStandard);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return -1;
	}
	/***
	 * 根据ssCheckStatus查找审核未通过的
	 */
	public List selectStandByssCheckStatus(int ssCheckStatus, int page, int pageSize) {
		String hql="from SalaryStandard ss where ss.ssCheckStatus=0";
		Query query=this.getSession().createQuery(hql);
		int firstResult=pageSize*(page-1);
		query.setFirstResult(firstResult);
		query.setMaxResults(pageSize);
		return query.list();
	}
	
	/**
	 * 修改薪酬标准
	 */
	public int updateStandard(Salarystandard saryStandard) {
		try {
			this.getHibernateTemplate().update(saryStandard);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	/**
	 * 查找职位编号是否已经存在
	 */
	public boolean checkPositionIdExists(int positionId) {
		String sql="SELECT position_Id from salaryStandard where position_Id="+positionId;
		Query query=this.getSession().createSQLQuery(sql);
		List list=query.list();
		if(list.size()>0 && list!=null){
			return true;
		}
		return false;
	}
	
	/**
	 * 根据标准编号查询
	 */
	public Salarystandard getSalaryStandardBySsId(int ssId) {
		Salarystandard salaryStandard=(Salarystandard) this.getHibernateTemplate().get(Salarystandard.class, ssId);
		return salaryStandard;
	}
	
	/**
	 * 根据职位编号查找薪酬标准编号
	 */
	public int getSsIdByPositionId(int positionId) {
//		String sql="SELECT ss_Id from salaryStandard where position_Id="+positionId;
//		Query query=this.getSession().createSQLQuery(sql);
//		List list=query.list();
//		if(list.size()>0 && list!=null){
//			return Integer.parseInt(list.get(0).toString());
//		}
//		return -1;
		String hql="select ss.ssId from SalaryStandard ss where ss.position.positionId="+positionId;
		Query query=this.getSession().createQuery(hql);
		Object count=query.list().get(0);
		return Integer.parseInt(count.toString());
	}

	public int updateSalaryStandard(Salarystandard salaryStandard) {
          String sql="update salaryStandard set ss_checker=?,ss_checkerTime=?,ss_checkStatus=1 where ss_Id=?";
          Query query=this.getSession().createSQLQuery(sql);
          query.setString(0,salaryStandard.getSsChecker() );
          query.setDate(1, salaryStandard.getSsCheckerTime());
          query.setInteger(2,salaryStandard.getSsId());
          int count=query.executeUpdate();
          return count;
	}
}
