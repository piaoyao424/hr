package net.xabc.oo.hr.dao;

import java.util.List;


import net.xabc.oo.hr.entity.Rights;

public interface RightsDao {

	public int updateRights(Rights rights);

	public int addUser(Rights rights);

	public List selectAllChildNodes();
	public List selectAllNodes();

	public int delete(int rightsCode);
	public List getRightsByRightsCode(int roleRightsRoleId);
	public List getRightsNodeByCode(int roleRightsRoleId);
}
