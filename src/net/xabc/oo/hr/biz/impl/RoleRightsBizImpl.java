package net.xabc.oo.hr.biz.impl;

import java.util.List;

import net.xabc.oo.hr.biz.RoleRightsBiz;
import net.xabc.oo.hr.dao.RoleRightsDao;
import net.xabc.oo.hr.entity.Rolerights;

public class RoleRightsBizImpl implements RoleRightsBiz{

	private RoleRightsDao roleRightsDao;

	public RoleRightsDao getRoleRightsDao() {
		return roleRightsDao;
	}

	public void setRoleRightsDao(RoleRightsDao roleRightsDao) {
		this.roleRightsDao = roleRightsDao;
	}

	public int addUser(Rolerights roleRights) {
		return roleRightsDao.addUser(roleRights);
	}

	public int delete(int roleRightsId) {
		// TODO Auto-generated method stub
		return roleRightsDao.delete(roleRightsId);
	}

	public List selectAll() {
		// TODO Auto-generated method stub
		return roleRightsDao.selectAll();
	}

	public int updateRights(Rolerights roleRights) {
		return roleRightsDao.update(roleRights);
	}

	public int deleteRoleRights(int roleId) {
		return roleRightsDao.deleteRoleRights(roleId);
	}

	
}
