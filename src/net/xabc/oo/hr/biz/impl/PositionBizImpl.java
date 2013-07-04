package net.xabc.oo.hr.biz.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.text.Position;

import net.xabc.oo.hr.biz.PositionBiz;
import net.xabc.oo.hr.dao.PositionDao;
import net.xabc.oo.hr.entity.Branch;
import net.xabc.oo.hr.entity.Postion;
import net.xabc.oo.hr.web.form.PositionForm;

import org.apache.commons.beanutils.BeanUtils;

public class PositionBizImpl implements PositionBiz {

	private PositionDao positionDao;

	public PositionDao getPositionDao() {
		return positionDao;
	}

	public void setPositionDao(PositionDao positionDao) {
		this.positionDao = positionDao;
	}

	public List getPositionByBranchId(int branchId) {
			return positionDao.getPositionByBranchId(branchId);
	}
	
	public Map getPositionByBranch(int branchId){
		List list=positionDao.getPositionByBranchId(branchId);
		Map map=new HashMap();
		if(list!=null && list.size()>0){
			for(int i=0;i<list.size();i++){
				Postion position=(Postion)list.get(i);
				map.put(position.getPositionId(), position.getPositionName());
			}
		}
		return map;
	}

	public int addPosition(PositionForm positionForm) {
		Postion position = new Postion();
		position.setPositionName(positionForm.getPositionName());
		Branch branch=new Branch();
		branch.setBranchId(positionForm.getBranchId());
		position.setBranch(branch);
		return positionDao.addPosition(position);
	}

	public int delete(Postion position)  {
		return positionDao.delete(position);
	}

	public List selectAll() {
		return positionDao.selectAll();
	}

	public int upPosition(PositionForm positionForm) {
		Postion position = new Postion();
		try {
			BeanUtils.copyProperties(position, positionForm);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
			
		}
		return positionDao.upPosition(position);
	}

	public String getBranchNmaeByBranchId(int branchId) {
		return positionDao.getBranchNmaeByBranchId(branchId);
	}

	public int deletePostitionByBranchId(int branchId) {
	    return positionDao.deletePostitionByBranchId(branchId);
	}

	public Postion getByPositionId(int positionId) {
		
		return positionDao.getByPositionId(positionId);
	}

	public int getBranchIdByPositionId(int positionId) {
		return positionDao.getBranchIdByPositionId(positionId);
	}
	
}
