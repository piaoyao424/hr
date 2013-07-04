package net.xabc.oo.hr.dao;
import java.util.List;

import net.xabc.oo.hr.entity.Branch;
public interface BranchDao {
	public List<Branch> getAllBranch();
	public int addBranch (Branch branch);
	public int deleteBranch(Branch branch);
	public int updateBranch(Branch branch);
	public int getBranchByUserId(int userId);
}
