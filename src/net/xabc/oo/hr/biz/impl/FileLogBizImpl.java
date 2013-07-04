package net.xabc.oo.hr.biz.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import net.xabc.oo.hr.biz.FileLogBiz;
import net.xabc.oo.hr.dao.FileLogDao;
import net.xabc.oo.hr.entity.FileLog;
import net.xabc.oo.hr.web.form.FileLogForm;

public class FileLogBizImpl implements FileLogBiz {

	private FileLogDao  fileLogDao;

	public FileLogDao getFileLogDao() {
		return fileLogDao;
	}

	public void setFileLogDao(FileLogDao fileLogDao) {
		this.fileLogDao = fileLogDao;
	}

	public int addUser(FileLogForm fileLogForm) {
		FileLog fileLog = new FileLog();
		try {
			BeanUtils.copyProperties(fileLog, fileLogForm);
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fileLogDao.addUser(fileLog);
	}

	public int delete(int fileLogId) {
		// TODO Auto-generated method stub
		return fileLogDao.delete(fileLogId);
	}

	public List selectAll() {
		// TODO Auto-generated method stub
		return fileLogDao.selectAll();
	}

	public int upPass(FileLogForm fileLogForm) {
		FileLog fileLog = new FileLog();
		try {
			BeanUtils.copyProperties(fileLog, fileLogForm);
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fileLogDao.upPass(fileLog);
	}
}
