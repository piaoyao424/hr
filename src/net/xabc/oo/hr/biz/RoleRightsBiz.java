package net.xabc.oo.hr.biz;

import java.util.List;

import net.xabc.oo.hr.entity.Rolerights;

public interface RoleRightsBiz {
	
	
	public int updateRights(Rolerights roleRights);

	public int addUser(Rolerights roleRights);

	public List selectAll();

	public int delete(int roleRightsId);
	public int deleteRoleRights(int roleId);

}
