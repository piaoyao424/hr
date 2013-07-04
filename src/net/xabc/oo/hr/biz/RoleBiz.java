package net.xabc.oo.hr.biz;
import java.util.List;
import net.xabc.oo.hr.entity.Role;
public interface RoleBiz {

	public Role getRoleById(int roleId);
	
	public int updateRole(Role role);

	public int addRole(Role role);
	public int selectRoleId(String roleName);

	public List selectAll();

	public int delete(Role role);
	
	public boolean chekcRole(String roleName);
	
	public List selectAllPage(int page,int pageSize);
	
	public int getSelectAllPage(int pageSize);
}
