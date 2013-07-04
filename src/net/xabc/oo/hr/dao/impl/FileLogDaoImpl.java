package net.xabc.oo.hr.dao.impl;

import java.util.List;


import net.xabc.oo.hr.dao.FileLogDao;
import net.xabc.oo.hr.entity.FileLog;

import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class FileLogDaoImpl extends HibernateDaoSupport implements FileLogDao{

	public int addUser(FileLog fileLog) {
		try {
			this.getHibernateTemplate().save(fileLog);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
		return 1;
	}

	public int delete(int fileLogId) {
		String hql ="delete form FileLog fileLog where fileLog.fileLogId"+fileLogId;
		Query query =this.getSession().createQuery(hql);
		Object count = query.list().get(0);
		return Integer.parseInt(count.toString());
	}

	public List selectAll() {
		String hql="form FileLog";
		FileLog fileLog =null;
		Query query =this.getSession().createQuery(hql);
		List list = query.list();
		if(list.size()>0 && list !=null){
			return list;
		}else{
		return null;
		}
	}

	public int upPass(FileLog fileLog) {
		try {
			this.getHibernateTemplate().update(fileLog);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 1;
		}
		return 0;
	}

}
