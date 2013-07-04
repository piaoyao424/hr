package net.xabc.oo.hr.biz.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import net.xabc.oo.hr.biz.RoleBiz;
import net.xabc.oo.hr.dao.RoleDao;
import net.xabc.oo.hr.entity.Role;
import net.xabc.oo.hr.web.form.RoleForm;

public class RoleBizImpl implements RoleBiz{

	private RoleDao roleDao;

	public RoleDao getRoleDao() {
		return roleDao;
	}

	public void setRoleDao(RoleDao roleDao) {
		this.roleDao = roleDao;
	}
	
	/**
	 * 根据角色Id查询角色信息
	 */
	public Role getRoleById(int roleId) {
		return roleDao.getRoleById(roleId);
	}

	/**
	 * 新增角色
	 */
	public int addRole(Role role) {
		return roleDao.addRole(role);
	}

	/**
	 * 删除角色信息
	 */
	public int delete(Role role) {
		return roleDao.delete(role);
	}


	/**
	 * 更新角色信息
	 */
	public int updateRole(Role role) {
		return roleDao.updateRole(role);
	}
	/**
	 * 判断角色名称是否存在
	 */
	public boolean chekcRole(String roleName) {
		return roleDao.chekcRole(roleName);
	}
	public int selectRoleId(String roleName){
		return roleDao.selectRoleId(roleName);
	}

	public int getSelectAllPage(int pageSize) {
	  return roleDao.getSelectAllPage(pageSize);
	}

	

	public List selectAll() {
		return roleDao.selectAll();
	}

	public List selectAllPage(int page, int pageSize) {
	   return roleDao.selectAllPage(page, pageSize);
	}
}
