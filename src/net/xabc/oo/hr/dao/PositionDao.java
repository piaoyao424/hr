package net.xabc.oo.hr.dao;

import java.util.List;

import net.xabc.oo.hr.entity.Postion;



public interface PositionDao {

	public List getPositionByBranchId(int branchId);

	public int upPosition(Postion position);

	public int addPosition(Postion position);

	public List selectAll();

	public int delete(Postion position) ;
	
	public String getBranchNmaeByBranchId(int branchId);
	
	public int deletePostitionByBranchId(int branchId);
	
	public Postion getByPositionId(int positionId); 
	
	public int getBranchIdByPositionId(int positionId);

}
