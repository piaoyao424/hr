package net.xabc.oo.hr.biz.impl;

import java.util.List;

import javax.swing.text.Position;

import net.xabc.oo.hr.biz.PositionIssuanceBiz;
import net.xabc.oo.hr.dao.PositionIssuanceDao;
import net.xabc.oo.hr.entity.Positionissuance;
import net.xabc.oo.hr.entity.Postion;
import net.xabc.oo.hr.utils.date.DateFormat;
import net.xabc.oo.hr.web.form.PositionIssuanceForm;

public class PositionIssuanceBizImpl implements PositionIssuanceBiz{

	private PositionIssuanceDao positionIssuanceDao;
	private DateFormat format;

	public PositionIssuanceDao getPositionIssuanceDao() {
		return positionIssuanceDao;
	}

	public void setPositionIssuanceDao(PositionIssuanceDao positionIssuanceDao) {
		this.positionIssuanceDao = positionIssuanceDao;
	}

	public int addUser(PositionIssuanceForm positionIssuanceForm) {
		Positionissuance positionIssuance = new Positionissuance();
		Postion position =new Postion();
		position.setPositionId(positionIssuanceForm.getPositionIssuancePositionId());
		System.err.println(positionIssuanceForm.getPositionIssuancePositionId());
		positionIssuance.setPostion(position);
		positionIssuance.setPositionIssuanceRequireNum(positionIssuanceForm.getPositionIssuanceRequireNum());
		positionIssuance.setPositionIssuanceEndTime(format.parseDate(positionIssuanceForm.getPositionIssuanceEndTime()));
//		positionIssuance.setPositionIssuanceRegister(positionIssuanceRegister);
		positionIssuance.setPositionIssuanceResiterTime(format.parseDate(format.getDate()));
		positionIssuance.setPositionIssuanceDescription(positionIssuanceForm.getPositionIssuanceDescription());
		positionIssuance.setPositionIssuanceRequire(positionIssuanceForm.getPositionIssuanceRequire());
		return positionIssuanceDao.addUser(positionIssuance);
	}

	public int delete(Positionissuance positionIssuance) {
		return positionIssuanceDao.delete(positionIssuance);
	}
	public int upPass(PositionIssuanceForm positionIssuanceForm) {
		Positionissuance positionIssuance = new Positionissuance();
		Postion position =new Postion();
		positionIssuance.setPositionIssuanceId(positionIssuanceForm.getPositionIssuanceId());
		System.err.println(positionIssuanceForm.getPositionIssuanceId());
		position.setPositionId(positionIssuanceForm.getPositionIssuancePositionId());
		positionIssuance.setPostion(position);
		positionIssuance.setPositionIssuanceRequireNum(positionIssuanceForm.getPositionIssuanceRequireNum());
		positionIssuance.setPositionIssuanceEndTime(format.parseDate(positionIssuanceForm.getPositionIssuanceEndTime()));
		positionIssuance.setPositionIssuanceResiterTime(format.parseDate(positionIssuanceForm.getPositionIssuanceRegisterTime()));
		positionIssuance.setPositionIssuanceDescription(positionIssuanceForm.getPositionIssuanceDescription());
		positionIssuance.setPositionIssuanceRequire(positionIssuanceForm.getPositionIssuanceRequire());
		return positionIssuanceDao.upPass(positionIssuance);
	}

	public Positionissuance getById(Integer id) {
		return positionIssuanceDao.selectById(id);
	}

	public int getTotalPage() {
		
		return positionIssuanceDao.getTotalPage();
	}

	public List selectAll(int pageNum, int pageSize) {
		return positionIssuanceDao.selectAll(pageNum, pageSize);
	}
}
