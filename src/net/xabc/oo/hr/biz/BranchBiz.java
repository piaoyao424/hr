package net.xabc.oo.hr.biz;

import java.util.List;

import net.xabc.oo.hr.entity.Branch;
import net.xabc.oo.hr.web.form.BranchForm;

public interface BranchBiz {
	public List<Branch> getAllBranch();
	public int addBranch (BranchForm branchForm);
	public int deleteBranch(Branch branch);
	public int updateBranch(BranchForm branchForm);
	public int getBranchByUserId(int userId);
}
