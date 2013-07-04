package net.xabc.oo.hr.biz;

import java.util.List;

import net.xabc.oo.hr.web.form.RightsForm;

public interface RightsBiz {
	public int upPass(RightsForm rightsForm);

	public int addUser(RightsForm rightsForm);

	public List selectAllChildNodes();
	public List selectAllNodes();

	public int delete(int rightsCode);
	public List getRightsByRightsCode(int roleRightsRoleId);
	public List getRightsNodeByCode(int roleRightsRoleId);

}
