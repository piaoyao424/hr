package net.xabc.oo.hr.biz.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import net.xabc.oo.hr.biz.ReumeBiz;
import net.xabc.oo.hr.dao.ResumeDao;
import net.xabc.oo.hr.entity.Resume;
import net.xabc.oo.hr.web.form.ResumeForm;

public class ReumeBizImpl implements ReumeBiz {

	private ResumeDao reumeDao;

	public int addUser(ResumeForm resumrForm) {
		Resume resume = new Resume();
		try {
			BeanUtils.copyProperties(resume, resumrForm);
		} catch (IllegalAccessException e) {

			e.printStackTrace();
		} catch (InvocationTargetException e) {

			e.printStackTrace();
		}

		return reumeDao.addUser(resume);
	}

	public int delete(Resume resume) {

		return reumeDao.delete(resume);
	}

	public List selectAll(int pageNum,int pageSize) {

		return reumeDao.selectAll(pageNum, pageSize);
	}

	public int upPass(Resume resume) {
		return reumeDao.upPass(resume);
	}

	public ResumeDao getReumeDao() {
		return reumeDao;
	}

	public void setReumeDao(ResumeDao reumeDao) {
		this.reumeDao = reumeDao;
	}
	public Resume selectById(int resumId) {
		
		return reumeDao.selectById(resumId);
	}

	public int getTotalPage() {
		
		return reumeDao.getTotalPage();
	}

}
