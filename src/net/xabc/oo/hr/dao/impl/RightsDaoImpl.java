package net.xabc.oo.hr.dao.impl;


import java.util.List;

import net.xabc.oo.hr.dao.RightsDao;
import net.xabc.oo.hr.entity.Rights;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class RightsDaoImpl extends HibernateDaoSupport implements RightsDao{

  
   /**
    * 根据角色权限查询菜单目录列表
    */
	public List getRightsByRightsCode(int roleRightsRoleId) {
		List listRight=null;
//			String hql="select * from Rights where rights_code in" +
//					"(select rights_parent_code from Rights where rights_code in" +
//					"(select roleRights_code from RoleRights where roleRights_role_Id=?)) and rights_parent_code=-1";
	   String hql="from Rights rights where rights.rightsCode in" +
                  "(select rightsParentCode from Rights rights where rights.rightsCode in"+
                  "(select rr.rights.rightsCode from Rolerights rr where rr.role.roleId=?)) and rightsParentCode=-1";
			
			try {
				Query query=this.getSession().createQuery(hql);
				query.setInteger(0, roleRightsRoleId);
				listRight=query.list();
				for(int i=0;i<listRight.size();i++){
					Rights right=(Rights)listRight.get(i);
					System.out.println(right.getRightsName());
				}
			} catch (DataAccessResourceFailureException e) {
				e.printStackTrace();
			} catch (HibernateException e) {
				e.printStackTrace();
			} catch (IllegalStateException e) {
				e.printStackTrace();
			}
			return listRight;
	}
	
	public int addUser(Rights rights) {
		try {
			this.getHibernateTemplate().save(rights);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	public int delete(int rights) {
		String hql="form Rights rights where rights.rights"+rights;
		Query query = this.getSession().createQuery(hql);
		Object count = query.list().get(0);
		return Integer.parseInt(count.toString());
	}

	public List selectAllNodes() {
		String hql = "from Rights rights where rights.rightsParentCode=-1";
		Query query = this.getSession().createQuery(hql);
		List list = query.list();
		if(list.size()>0&&list !=null){
			return list;
		}else{
		return null;
		}
	}
	public List selectAllChildNodes(){
		String hql = "from Rights rights where rights.rightsParentCode<>-1";
		Query query = this.getSession().createQuery(hql);
		List list = query.list();
		if(list.size()>0&&list !=null){
			return list;
		}else{
		return null;
		}
	}

	public int updateRights(Rights rights) {
		try {
			this.getHibernateTemplate().update(rights);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		return 1;
	}
	
	/*
	 * 根据用户角色查询子菜单列表
	 * @see net.xabc.oo.hr.dao.RightsDao#getRightsNodeByCode(int)
	 */
	public List getRightsNodeByCode(int roleRightsRoleId) {
		// TODO Auto-generated method stub
		List listRight=null;
		String hql="from Rights rights where rightsCode in" +
				"(select roleRights.rights.rightsCode from Rolerights roleRights where roleRights.role.roleId=?)";
//		String sql="select * from rights where rights_code in(select roleRights_code from RoleRights where roleRights_role_Id=?)";
		try {
			Query query=this.getSession().createQuery(hql);
			query.setInteger(0, roleRightsRoleId);
			listRight=query.list();
		
		} catch (DataAccessResourceFailureException e) {
			e.printStackTrace();
		} catch (HibernateException e) {
			e.printStackTrace();
		} catch (IllegalStateException e) {
			e.printStackTrace();
		}
		return listRight;
	}

}
