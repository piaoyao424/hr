package net.xabc.oo.hr.biz;

import java.util.List;

import net.xabc.oo.hr.entity.Positionissuance;
import net.xabc.oo.hr.web.form.PositionIssuanceForm;

public interface PositionIssuanceBiz {

	public int upPass(PositionIssuanceForm positionIssuanceForm);

	public int addUser(PositionIssuanceForm positionIssuanceForm);

	public List selectAll(int pageNum,int pageSize);

	public int delete(Positionissuance positionIssuance);
	
	public Positionissuance getById(Integer id);
	
	public int getTotalPage();
}
