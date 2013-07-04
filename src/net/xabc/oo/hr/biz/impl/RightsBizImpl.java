package net.xabc.oo.hr.biz.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import net.xabc.oo.hr.biz.RightsBiz;
import net.xabc.oo.hr.dao.RightsDao;
import net.xabc.oo.hr.entity.Rights;
import net.xabc.oo.hr.web.form.RightsForm;

public class RightsBizImpl implements RightsBiz{

	private RightsDao rightsDao;

	public RightsDao getRightsDao() {
		return rightsDao;
	}

	public void setRightsDao(RightsDao rightsDao) {
		this.rightsDao = rightsDao;
	}

	public int addUser(RightsForm rightsForm) {
		Rights rights = new Rights();
		try {
			BeanUtils.copyProperties(rights, rightsForm);
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rightsDao.addUser(rights);
	}

	public int delete(int rightsCode) {
		// TODO Auto-generated method stub
		return rightsDao.delete(rightsCode);
	}

	public List selectAllNodes() {
		// TODO Auto-generated method stub
		return rightsDao.selectAllNodes();
	}

	public int upPass(RightsForm rightsForm) {
		Rights rights = new Rights();
		try {
			BeanUtils.copyProperties(rights, rightsForm);
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rightsDao.updateRights(rights);
	}
	public List getRightsByRightsCode(int roleRightsRoleId){
		List list=rightsDao.getRightsByRightsCode(roleRightsRoleId);
		return list;
	}

	public List getRightsNodeByCode(int roleRightsRoleId) {
		List list=rightsDao.getRightsNodeByCode(roleRightsRoleId);
		if(list!=null && list.size()>0){
			return list;
		}
		else{
			return null;
		}
	}

	public List selectAllChildNodes() {
		// TODO Auto-generated method stub
		return rightsDao.selectAllChildNodes();
	}
}
