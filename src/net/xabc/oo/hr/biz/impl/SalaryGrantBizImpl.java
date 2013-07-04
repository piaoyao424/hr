package net.xabc.oo.hr.biz.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import net.xabc.oo.hr.biz.SalaryGrantBiz;
import net.xabc.oo.hr.dao.SalaryGrantDao;
import net.xabc.oo.hr.entity.Salarygrant;
import net.xabc.oo.hr.web.form.SalaryGrantForm;

import org.apache.commons.beanutils.BeanUtils;

public class SalaryGrantBizImpl implements SalaryGrantBiz {

	private SalaryGrantDao salaryGrantDao;

	public SalaryGrantDao getSalaryGrantDao() {
		return salaryGrantDao;
	}

	public void setSalaryGrantDao(SalaryGrantDao salaryGrantDao) {
		this.salaryGrantDao = salaryGrantDao;
	}

	public int addUser(SalaryGrantForm salaryGrantForm) {
		Salarygrant salaryGrant = new Salarygrant();
		try {
			BeanUtils.copyProperties(salaryGrant, salaryGrantForm);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		return salaryGrantDao.addUser(salaryGrant);
	}

	public int delete(int sgId) {

		return salaryGrantDao.delete(sgId);
	}

	public List selectAll(int page,int pageSize) {
		return salaryGrantDao.selectAll(page, pageSize);
	}

	public int upPass(SalaryGrantForm salaryGrantForm) {
		Salarygrant salaryGrant = new Salarygrant();
		try {
			BeanUtils.copyProperties(salaryGrant, salaryGrantForm);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		return 1;
	}

	public Salarygrant getSalaryGrantById(int sgId) {
		return salaryGrantDao.getSalaryGrantById(sgId);
	}

	public int updateSalaryAuctionInfo(SalaryGrantForm salaryGrantForm){
		Salarygrant salaryGrant = new Salarygrant();
		salaryGrant.setSgId(salaryGrantForm.getSgId());
		salaryGrant.setSgCommit(salaryGrantForm.getSgCommit());
		//salaryGrant.setSgDeductMoney(salaryGrantForm.getSgDeductMoney());
		return salaryGrantDao.updateSalaryAcdtingInfo(salaryGrant);
	}

	public boolean checkSalaryStardIdExists(int ssId) {
		return salaryGrantDao.checkSalaryStardIdExists(ssId);
	}

	public int deleteSalaryGrantBySsId(int ssId) {
		return salaryGrantDao.deleteSalaryGrantBySsId(ssId);
	}

}
