package net.xabc.oo.hr.dao.impl;
import java.util.List;
import net.xabc.oo.hr.dao.RoleDao;
import net.xabc.oo.hr.entity.Role;
import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
public class RoleDaoImpl extends HibernateDaoSupport implements RoleDao{

	/**
	 * 根据roleId查找角色详细信息
	 */
	public Role getRoleById(int roleId) {
		Role role=(Role) this.getHibernateTemplate().get(Role.class, roleId);
		return role;
	}
	
	/**
	 * 新增角色
	 */
	public int addRole(Role role) {
		try {
			this.getHibernateTemplate().save(role);
			return 1;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return 0;
		}
	}
	/**
	 * 删除角色
	 */
	public int delete(Role role) {
		int count=0;
		
		try {
			this.getHibernateTemplate().delete(role);
			count=1;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	return count;
		
	}
	/**
	 * 查询所有角色信息
	 */
	public List selectAllPage(int page,int pageSize) {
		String hql = "from Role";
		Query query = this.getSession().createQuery(hql);
//		int firstResult=pageSize*(page-1);
//		query.setFirstResult(firstResult);
//		query.setMaxResults(pageSize);
		return query.list();
	}
	
	public int getSelectAllPage(int pageSize) {
		String hql="select count(role) from Role role";
		Query query=this.getSession().createQuery(hql);
		int count=Integer.parseInt(query.uniqueResult().toString());
		return count%pageSize==0?count/pageSize:count/pageSize+1;
	}

	public int updateRole(Role role) {
		int i=0;
		try {
			this.getHibernateTemplate().update(role);
			i=1;
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	/**
	 * 判断角色是否存在
	 */
	public boolean chekcRole(String roleName) {
		String sql="select role_name from role where role_name=?";
		Query query=this.getSession().createSQLQuery(sql);
		query.setString(0, roleName);
		List list=query.list();
		if(list!=null && list.size()>0){
			String name=list.get(0).toString();
			if(name.equals(roleName)){
				return true;
		    }
		}else{
			return false;
		}
		return false;
	}
	/**
	 * 根据角色名称查询角色Id
	 */
	public int selectRoleId(String roleName){
		String hql="select role.roleId from Role role where role.roleName=?";
		int roleId =0;
		Query query=this.getSession().createQuery(hql);
		query.setString(0, roleName);
		List list=query.list();
		if(list!=null){
			roleId=(Integer)list.get(0);
		}
		return roleId;
	}

	public List selectAll() {
		return  this.getHibernateTemplate().find("from Role");
		
	}

	
}


