package net.xabc.oo.hr.biz.impl;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;


import net.xabc.oo.hr.biz.BranchBiz;
import net.xabc.oo.hr.dao.BranchDao;
import net.xabc.oo.hr.entity.Branch;
import net.xabc.oo.hr.web.form.BranchForm;

public class BranchBizImpl implements BranchBiz {
	private BranchDao branchDao;

	public BranchDao getBranchDao() {
		return branchDao;
	}

	public void setBranchDao(BranchDao branchDao) {
		this.branchDao = branchDao;
	}

	
	public List<Branch>  getAllBranch() {
		return branchDao.getAllBranch();
	}

	public int addBranch(BranchForm branchForm) {
		Branch branch = new Branch();
		try {
			BeanUtils.copyProperties(branch, branchForm);
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return branchDao.addBranch(branch);
	}

 
	public int updateBranch(BranchForm branchForm) {
		Branch branch = new Branch();
		try {
			BeanUtils.copyProperties(branch, branchForm);
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return branchDao.updateBranch(branch);
	}

	public int deleteBranch(Branch branch) {
		 try {
			branchDao.deleteBranch(branch);
			return 1;
		} catch (RuntimeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
		
	}

	public int getBranchByUserId(int userId) {
		return branchDao.getBranchByUserId(userId);
	}

}
