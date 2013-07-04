package net.xabc.oo.hr.dao.impl;

import java.util.List;

import javax.swing.text.Position;

import net.xabc.oo.hr.dao.PositionDao;
import net.xabc.oo.hr.entity.Postion;

import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


public class PositionDaoImpl  extends HibernateDaoSupport implements PositionDao{

	public List getPositionByBranchId(int branchId) {
		List postionList=null;
		String hql="from Position position where position.branch.branchId=?";
		Query query=this.getSession().createQuery(hql);
		query.setInteger(0,branchId);
		postionList=query.list();
		if(postionList!=null && postionList.size()>0){
			return postionList;
		}else{
			return null;			
		}
	}

	public int addPosition(Postion position) {
		try {
			this.getHibernateTemplate().save(position);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	public int delete(Position position) {
//		String hql="from PositionChange positionChange where positionChange.positionChangeId"+positionId;
//		Query query=this.getSession().createQuery(hql);
//		Object count = query.list().get(0);
//		return Integer.parseInt(count.toString());
		try {
			this.getHibernateTemplate().delete(position);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public List selectAll() {
		String hql="from PositionChange";
		 Position position=null;
		 Query query = this.getSession().createQuery(hql);
		 List list = query.list();
		 if(list.size()>0&&list !=null){
			 return list;
		 }else{
		return null;
		 }
	}

	public int upPosition(Position position) {
		try {
			this.getHibernateTemplate().update(position);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	public String getBranchNmaeByBranchId(int branchId) {
		String hql="select branch.branchName from Branch  branch where branch.branchId="+branchId;
		Query query = this.getSession().createQuery(hql);
		String branchName=(String) query.list().get(0);
		return branchName;
	}

	/**
	 * 根据部门Id删除职位信息
	 */
	public int deletePostitionByBranchId(int branchId) {
		String hql="delete from Position position where position.branch.branchId="+branchId;
		Query query=this.getSession().createQuery(hql);
		int count=query.executeUpdate();
		return count;
	}

	public Postion getByPositionId(int positionId) {
		Postion position = (Postion) this.getHibernateTemplate().get(Postion.class, positionId);
		return position;
	}

	public int getBranchIdByPositionId(int positionId) {
		String hql="select position.branch.branchId from Position position where position.positionId="+positionId;
		Query query=this.getSession().createQuery(hql);
		int branchId=(Integer)query.list().get(0);
		return branchId;
	}

	public int delete(Postion position) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int upPosition(Postion position) {
		// TODO Auto-generated method stub
		return 0;
	}

}
