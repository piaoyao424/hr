package net.xabc.oo.hr.dao.impl;


import java.util.List;

import net.xabc.oo.hr.dao.RoleRightsDao;
import net.xabc.oo.hr.entity.Rolerights;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class RoleRightsDaoImpl extends HibernateDaoSupport implements RoleRightsDao{

	/**
	 * 根据角色Id查找角色权限
	 */
	public List getRoleRightsByroleRightsRoleId(int roleRightsRoleId) {
		String hql=" select roleRights.rights.rightsCode form RoleRights roleRights where roleRights.role.roleId=?";
		Query query=this.getSession().createQuery(hql);
		query.setInteger(0,roleRightsRoleId);
		List list=query.list();
		if(list!=null){
			return list;	
		}else{
			return null;
		}
	}
	
	public int addUser(Rolerights roleRights) {
		try {
			this.getHibernateTemplate().save(roleRights);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	public int delete(int roleRightsId) {
		String hql= "form RoleRights roleRights where roleRights.roleRightsId"+roleRightsId;
		Query query = this.getSession().createQuery(hql);
		Object count = query.list().get(0);
		return Integer.parseInt(count.toString());
	}

	public List selectAll() {
		String hql="form RoleRights";
		Query query = this.getSession().createQuery(hql);
		List list = query.list();
		if(list.size()>0&& list != null){
			return list;
		}else{
		return null;
		}
	}

	public int update(Rolerights roleRights) {
		try {
			this.getHibernateTemplate().update(roleRights);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	public int deleteRoleRights(int roleId) {
		try {
			String sql="delete from roleRights where roleRights_role_Id="+roleId;
			Query query=this.getSession().createSQLQuery(sql);
			int count = query.executeUpdate();
			return 1;
		} catch (DataAccessResourceFailureException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}


}
