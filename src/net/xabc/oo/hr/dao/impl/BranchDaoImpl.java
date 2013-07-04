package net.xabc.oo.hr.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import net.xabc.oo.hr.dao.BranchDao;
import net.xabc.oo.hr.entity.Branch;

public class BranchDaoImpl extends HibernateDaoSupport implements BranchDao {

	/**
	 * 查找所有
	 */
	public List<Branch>  getAllBranch() {
		String hql="from Branch";
		Query query=this.getSession().createQuery(hql);
		List<Branch> BranchList= query.list();
		if(BranchList.size()>0 && BranchList!=null){
			return BranchList;
		}else{
			return null;	
		}
		
	}

	public int addBranch(Branch branch) {
		try {
			this.getHibernateTemplate().save(branch);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 1;
	}


	public int deleteBranch(Branch branch) {
		try {
			this.getHibernateTemplate().delete(branch);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int updateBranch(Branch branch) {
		try {
			this.getHibernateTemplate().update(branch);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 1;
	}

	/**
	 * 根据用户的Id查找部门的Id
	 */
	public int getBranchByUserId(int userId) {
		String sql="select branch_Id from position where position_Id=(select position_Id from employee where employee_Id=(select employee_Id from users where user_Id=?))";
		Query query=this.getSession().createSQLQuery(sql);
		query.setInteger(0, userId);
		Object id=query.list().get(0);
		int branchId=Integer.parseInt(id.toString());
		return branchId;
	}


	
}