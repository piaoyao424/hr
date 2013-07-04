package net.xabc.oo.hr.dao;

import java.util.List;

import net.xabc.oo.hr.entity.Positionissuance;

public interface PositionIssuanceDao {
	
	public int upPass(Positionissuance positionIssuance);

	public int addUser(Positionissuance positionIssuance);

	public List selectAll(int pageNum,int pageSize);
	
	public Positionissuance selectById(int positionIssuanceId);

	public int delete(Positionissuance positionIssuance);
	
	public int getTotalPage();
}
