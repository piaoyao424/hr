package net.xabc.oo.hr.biz;

import java.util.List;

import net.xabc.oo.hr.entity.Postion;
import net.xabc.oo.hr.web.form.PositionForm;

public interface PositionBiz {
	
	public int upPosition(PositionForm positionForm);

	public int addPosition(PositionForm positionForm);

	public List selectAll();

	public int delete(Postion position) ;

	public List getPositionByBranchId(int branchId);
	
	public String getBranchNmaeByBranchId(int branchId);
	
	public int deletePostitionByBranchId(int branchId);
	
	public Postion getByPositionId(int positionId);
	
	public int getBranchIdByPositionId(int positionId);
	
	

}
