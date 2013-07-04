package net.xabc.oo.hr.dao.impl;

import java.util.List;

import net.xabc.oo.hr.dao.PositionIssuanceDao;
import net.xabc.oo.hr.entity.Positionissuance;

import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class PositionIssuanceDaoImpl extends HibernateDaoSupport implements PositionIssuanceDao{

	public int addUser(Positionissuance positionIssuance) {
		try {
			this.getHibernateTemplate().save(positionIssuance);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	public int delete(Positionissuance positionIssuance) {
		try {
			this.getHibernateTemplate().delete(positionIssuance);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return 0;
	}	
	public int upPass(Positionissuance positionIssuance) {
		try {
			this.getHibernateTemplate().update(positionIssuance);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	public Positionissuance selectById(int positionIssuanceId) {
		Positionissuance positionIssuance=(Positionissuance) this.getHibernateTemplate().get(Positionissuance.class, positionIssuanceId);
		 return positionIssuance;
	}

	public int getTotalPage() {
		String hql="select count(pi) from Positionissuance pi ";
		Query query=this.getSession().createQuery(hql);
		int count=Integer.parseInt(query.uniqueResult().toString());
		return count;
	}

	public List selectAll(int pageNum, int pageSize) {
		String sqlString="from Positionissuance";
		Query query=this.getSession().createQuery(sqlString);
		int firstResulyIndex=pageSize*(pageNum-1);
		query.setFirstResult(firstResulyIndex);
		query.setMaxResults(pageSize);
		List list=query.list();
		if(list.size()>0){
			return list;	
		}else{
			return null;
		}
	}

}
