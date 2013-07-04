package net.xabc.oo.hr.dao;

import java.util.List;

import net.xabc.oo.hr.entity.Rolerights;




public interface RoleRightsDao {
	public int update(Rolerights roleRights);

	public int addUser(Rolerights roleRights);

	public List selectAll();

	public int delete(int roleRightsId);
	public int deleteRoleRights(int roleId); 

}
